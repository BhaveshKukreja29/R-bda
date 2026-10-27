# Load the dataset
data <- read.csv("C:/JAYITA/S7/prac_codes/BDA/R_programs/Churn_Modelling.csv")

# Display the first six records
head(data)

# Display dataset structure
str(data)

# Summary statistics
summary(data)

# Check missing values
colSums(is.na(data))

# 1. Count churned and retained customers
churn_count <- table(data$Exited)
print(churn_count)

# 2. Bar chart of customer churn
barplot(churn_count,
        names.arg = c("Retained", "Churned"),
        main = "Customer Churn Analysis",
        xlab = "Customer Status",
        ylab = "Number of Customers",
        col = c("lightgreen", "tomato"))

# 3. Pie chart of customer churn
pie(churn_count,
    labels = c("Retained", "Churned"),
    main = "Customer Churn Percentage",
    col = c("lightgreen", "tomato"))

# 4. Churn by gender
gender_churn <- table(data$Gender, data$Exited)

barplot(t(gender_churn),
        beside = TRUE,
        names.arg = rownames(gender_churn),
        col = c("lightgreen", "tomato"),
        main = "Churn by Gender",
        xlab = "Gender",
        ylab = "Number of Customers",
        legend.text = c("Retained", "Churned"))

# 5. Age distribution
hist(data$Age,
     main = "Customer Age Distribution",
     xlab = "Age",
     ylab = "Frequency",
     col = "lightblue",
     border = "white")

# 6. Balance comparison by churn status
boxplot(Balance ~ Exited, data = data,
        names = c("Retained", "Churned"),
        main = "Bank Balance by Churn Status",
        xlab = "Customer Status",
        ylab = "Balance",
        col = c("lightgreen", "tomato"))

# 7. Churn rate by number of products
product_churn <- prop.table(
  table(data$NumOfProducts, data$Exited), 1
) * 100

barplot(t(product_churn),
        beside = TRUE,
        col = c("lightgreen", "tomato"),
        main = "Churn Rate by Number of Products",
        xlab = "Number of Products",
        ylab = "Percentage (%)",
        legend.text = c("Retained", "Churned"))

print(round(product_churn, 2))
