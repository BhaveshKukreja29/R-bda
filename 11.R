# Create five numeric vectors
bread <- c(12, 3, 5, 11, 9)
milk <- c(21, 27, 18, 20, 15)
cola <- c(10, 1, 33, 6, 12)
chocolate <- c(6, 7, 4, 13, 12)
detergent <- c(5, 8, 12, 20, 23)

# Create a data frame
sales <- data.frame(
  Bread = bread,
  Milk = milk,
  Cola = cola,
  Chocolate = chocolate,
  Detergent = detergent
)

print(sales)

# Visualize the data
barplot(t(as.matrix(sales)),
        beside = TRUE,
        col = c("red", "blue", "green", "orange", "pink"),
        main = "Product Sales by Day",
        xlab = "Days",
        ylab = "Units Sold",
        names.arg = c("Monday", "Tuesday", "Wednesday",
                      "Thursday", "Friday"),
        legend.text = colnames(sales))