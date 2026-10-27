#gpt code check karlena
dgim <- function(stream, N) {
  buckets <- list()
  time <- 0

  for (bit in stream) {
    time <- time + 1

    # Remove buckets outside the window
    if (length(buckets) > 0) {
      buckets <- Filter(function(b) time - b$end <= N, buckets)
    }

    # Create a bucket for every 1
    if (bit == 1) {
      buckets[[length(buckets) + 1]] <-
        list(size = 1, end = time)

      repeat {
        sizes <- sapply(buckets, function(b) b$size)
        unique_sizes <- unique(sizes)
        merged <- FALSE

        for (s in unique_sizes) {
          indices <- which(sizes == s)

          if (length(indices) > 2) {
            # Merge the two oldest buckets
            i <- indices[1]
            j <- indices[2]

            buckets[[i]]$size <- 2 * s
            buckets[[i]]$end <- buckets[[j]]$end
            buckets[[j]] <- NULL

            merged <- TRUE
            break
          }
        }

        if (!merged) break
      }
    }
  }

  # Estimate the number of 1s
  estimate <- 0

  if (length(buckets) > 0) {
    for (i in seq_along(buckets)) {
      if (i == 1) {
        estimate <- estimate + buckets[[i]]$size / 2
      } else {
        estimate <- estimate + buckets[[i]]$size
      }
    }
  }

  return(list(buckets = buckets, estimate = estimate))
}

# Hardcoded binary stream
stream <- c(1, 0, 1, 1, 0, 1, 0, 1, 1, 0, 1)
N <- 8

result <- dgim(stream, N)

cat("Binary stream:", stream, "\n")
cat("Window size:", N, "\n")
cat("Buckets (size, end time):\n")

for (b in result$buckets) {
  cat("Size:", b$size, " End time:", b$end, "\n")
}

cat("Estimated number of 1s:", result$estimate, "\n")
cat("Actual number of 1s:", sum(tail(stream, N)), "\n")