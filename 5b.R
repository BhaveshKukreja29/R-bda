# Create the data frame
df <- data.frame(
  Subject = c(1, 2, 3, 4, 5, 6),
  Class = c(1, 2, 1, 2, 1, 2),
  Marks = c(56, 75, 48, 69, 84, 53)
)

print(df)

# (i) Subset subjects less than 4 using subset()
print(subset(df, Subject < 4))

# (ii) Select subjects less than 3 and class equal to 2
result <- df[df$Subject < 3 & df$Class == 2, ]
print(result)

# (iii) Visualize data using a bar plot
barplot(df$Marks,
        names.arg = df$Subject,
        main = "Marks of Students",
        xlab = "Subject",
        ylab = "Marks",
        col = "lightblue")