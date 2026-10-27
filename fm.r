hash <- function(x) {
  return((6 * x + 1) %% 5)
}

binary <- function(x) {
  if (x == 0) return("0")
  result <- ""

  while (x > 0) {
    result <- paste0(x %% 2, result)
    x <- x %/% 2
  }
  return(result)
}

trailing_zeros <- function(b) {
  if (b == "0") return(0)

  count <- 0
  for (i in rev(strsplit(b, "")[[1]])) {
    if (i == "0") {
      count <- count + 1
    } else {
      break
    }
  }

  return(count)
}

numbers <- c(1, 3, 2, 1, 2, 3, 4, 3)
max_zeros <- 0

for (x in numbers) {
  h <- hash(x)
  b <- binary(h)
  zeros <- trailing_zeros(b)

  cat(x, "-> Hash:", h, "-> Binary:", b,"-> Trailing zeros:", zeros, "\n")

  max_zeros <- max(max_zeros, zeros)
}

r <- max_zeros
estimate <- 2^r

cat("Maximum trailing zeros (r):", r, "\n")
cat("Estimated distinct elements:", estimate, "\n")