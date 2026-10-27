# Load dataset
loan <- read.csv("C:/JAYITA/S7/prac_codes/BDA/R_programs/loan-test.csv")

# Display first few records
print(head(loan))

# Dataset dimensions and structure
print(dim(loan))
str(loan)

# Check missing values
print(colSums(is.na(loan)))

# Summary statistics
print(summary(loan))

# Frequency tables
print(table(loan$Gender, useNA = "ifany"))
print(table(loan$Education))
print(table(loan$Married))
print(table(loan$Property_Area))
print(table(loan$Credit_History, useNA = "ifany"))

#Histogram - Applicant Income
hist(loan$ApplicantIncome,
     main = "Distribution of Applicant Income",
     xlab = "Applicant Income",
     ylab = "Frequency",
     col = "lightblue",
     border = "black")
#Bar Chart - Property Area
area <- table(loan$Property_Area)

barplot(area,
        main = "Applicants by Property Area",
        xlab = "Property Area",
        ylab = "Number of Applicants",
        col = c("lightblue", "lightgreen", "orange"))
#Box plot - Loan amount by education
boxplot(LoanAmount ~ Education,
        data = loan,
        main = "Loan Amount by Education",
        xlab = "Education",
        ylab = "Loan Amount",
        col = c("lightblue", "orange"))

#Scatter plot
plot(loan$ApplicantIncome, loan$LoanAmount,
     main = "Applicant Income vs Loan Amount",
     xlab = "Applicant Income",
     ylab = "Loan Amount",
     col = "pink",
     pch = 19)