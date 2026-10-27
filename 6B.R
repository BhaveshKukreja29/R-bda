# (i) Enter the salaries of 10 employees using data.frame()

employees <- data.frame(
  Sr_No = 1:10,
  Name = c("Vivek", "Karan", "James", "Soham", "Renu",
           "Farah", "Hetal", "Mary", "Ganesh", "Krish"),
  Salary = c(21000, 55000, 67000, 50000, 54000,
             40000, 30000, 70000, 20000, 15000)
)

print(employees)

# (ii) Add 5 new employees using rbind()

new_employees <- data.frame(
  Sr_No = 11:15,
  Name = c("Amit", "Priya", "Rahul", "Sneha", "Neha"),
  Salary = c(35000, 45000, 60000, 38000, 52000)
)

employees <- rbind(employees, new_employees)

print(employees)

# (iii) Visualize salaries using a bar chart

barplot(employees$Salary,
        names.arg = employees$Name,
        main = "Salaries of Employees",
        xlab = "Employee Name",
        ylab = "Salary",
        col = "lightblue",
        las = 2,
        cex.names = 0.7)