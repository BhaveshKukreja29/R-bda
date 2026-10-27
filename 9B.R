# 1. Load the dataset
data <- read.csv("C:/JAYITA/S7/prac_codes/BDA/R_programs/supermarket_sales.csv")

# Display the first six records
head(data)

# Display structure and summary
str(data)
summary(data)

# Check missing values
colSums(is.na(data))

# 2. Total sales by product line
sales_product <- aggregate(
  Total ~ Product.line, data = data, sum
)

barplot(sales_product$Total,
        names.arg = sales_product$Product.line,
        main = "Total Sales by Product Line",
        xlab = "Product Line",
        ylab = "Total Sales",
        col = "lightblue",
        las = 2,
        cex.names = 0.7)

# 3. Sales by gender
sales_gender <- aggregate(
  Total ~ Gender, data = data, sum
)
print(sales_gender)

barplot(sales_gender$Total,
        names.arg = sales_gender$Gender,
        main = "Sales by Gender",
        xlab = "Gender",
        ylab = "Total Sales",
        col = c("pink", "lightgreen"))

# 4. Payment method distribution
payment_count <- table(data$Payment)
print(payment_count)

pie(payment_count,
    main = "Payment Method Distribution",
    col = c("orange", "lightblue", "lightgreen"))

# 5. Distribution of customer ratings
hist(data$Rating,
     main = "Customer Rating Distribution",
     xlab = "Rating",
     ylab = "Frequency",
     col = "lightyellow",
     border = "black")

# 6. Compare total sales across branches
sales_branch <- aggregate(
  Total ~ Branch, data = data, sum
)
print(sales_branch)

barplot(sales_branch$Total,
        names.arg = sales_branch$Branch,
        main = "Total Sales by Branch",
        xlab = "Branch",
        ylab = "Total Sales",
        col = "coral")

# 7. Boxplot of sales by product line
boxplot(Total ~ Product.line, data = data,
        main = "Sales Distribution by Product Line",
        xlab = "Product Line",
        ylab = "Transaction Total",
        col = "lightblue",
        las = 2,
        cex.axis = 0.7)

# 8. Average customer rating by product line
avg_rating <- aggregate(
  Rating ~ Product.line, data = data, mean
)
print(avg_rating)
