# Question: create a Data Frame which contain details of 5 employees and display summary of the data using R. # nolint
employees <- data.frame(
  Emp_ID = c(101, 102, 103, 104, 105),
  Name = c("Amit", "Priya", "Rahul", "Sneha", "Karan"),
  Age = c(25, 28, 30, 26, 32),
  Department = c("IT", "HR", "Sales", "IT", "Finance"),
  Salary = c(30000, 40000, 35000, 32000, 45000)
)

# Display the data frame
print(employees)

# Display summary of the data
summary(employees)
