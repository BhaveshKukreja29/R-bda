# Create four vectors
emp_id <- c(1:5)
emp_name <- c("Rick", "Dan", "Michelle", "Ryan", "Gary")
start_date <- c("2012-01-01", "2013-09-23", "2014-11-15",
                "2014-05-11", "2015-03-27")
salary <- c(60000, 45000, 75000, 84000, 20000)

# i. Create a data frame
emp <- data.frame(emp_id, emp_name, start_date, salary)
print(emp)

# ii. Display structure and summary
print(summary(emp))

# iii. Extract employee name and salary columns
print(emp[, c("emp_name", "salary")])

# iv. Extract employees whose salary is <= 60000
print(subset(emp, salary <= 60000))