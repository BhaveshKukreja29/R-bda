# Sort the values contained in the following vector in ascending order and descending order: (23, 45, 10, 34, 89, 20, 67, 99).
# Demonstrate the output using graph.

# Create a vector
x <- c(23, 45, 10, 34, 89, 20, 67, 99)

# Sort in ascending order
asc <- sort(x)
print("Ascending Order:")
print(asc)

# Sort in descending order
desc <- sort(x, decreasing = TRUE)
print("Descending Order:")
print(desc)

# Display graphs
par(mfrow = c(1, 2))

barplot(asc,
        main = "Ascending Order",
        xlab = "Position",
        ylab = "Value",
        col = "skyblue")

barplot(desc,
        main = "Descending Order",
        xlab = "Position",
        ylab = "Value",
        col = "orange")

par(mfrow = c(1, 1))