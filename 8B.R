# 1. Load the Iris dataset
data(iris)

# Display the first six records
head(iris)

# Display structure and summary
str(iris)
summary(iris)

# Check missing values
colSums(is.na(iris))

# 2. Count flowers in each species
print(table(iris$Species))

# 3. Scatterplot: Sepal length vs Sepal width
plot(iris$Sepal.Length, iris$Sepal.Width,
     col = as.numeric(iris$Species),
     pch = 19,
     main = "Sepal Length vs Sepal Width",
     xlab = "Sepal Length",
     ylab = "Sepal Width")

legend("topright",
       legend = levels(iris$Species),
       col = 1:3, pch = 19)

# 4. Histogram of petal length
hist(iris$Petal.Length,
     main = "Distribution of Petal Length",
     xlab = "Petal Length",
     col = "lightblue",
     border = "black")

# 5. Boxplot of petal length by species
boxplot(Petal.Length ~ Species,
        data = iris,
        main = "Petal Length by Species",
        xlab = "Species",
        ylab = "Petal Length",
        col = c("lightblue", "lightgreen", "pink"))

# 6. Bar chart of species counts
barplot(table(iris$Species),
        main = "Number of Flowers by Species",
        xlab = "Species",
        ylab = "Count",
        col = c("orange", "lightblue", "lightgreen"))

# 7. Scatterplot: Petal length vs Petal width
plot(iris$Petal.Length, iris$Petal.Width,
     col = as.numeric(iris$Species),
     pch = 19,
     main = "Petal Length vs Petal Width",
     xlab = "Petal Length",
     ylab = "Petal Width")

legend("topleft",
       legend = levels(iris$Species),
       col = 1:3, pch = 19)

# 8. Calculate mean measurements by species
aggregate(. ~ Species, data = iris, FUN = mean)
