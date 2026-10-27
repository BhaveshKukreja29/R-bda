# For anydataset visialize the following types of chart : 
# Scatterplot, Bubble Chart, Bar Chart , Dot Plots ,Histogram ,Box Plot ,Pie Chart # nolint

# Visualisation of different charts
data(iris)

# 1. Scatterplot
plot(iris$Sepal.Length, iris$Petal.Length,
     main="Scatterplot", xlab="Sepal Length", ylab="Petal Length")

# 2. Bubble Chart
symbols(iris$Sepal.Length, iris$Petal.Length,
        circles=iris$Petal.Width, inches=0.2,
        main="Bubble Chart")

# 3. Bar Chart
barplot(table(iris$Species), main="Bar Chart")

# 4. Dot Plot
dotchart(iris$Sepal.Length, main="Dot Plot")

# 5. Histogram
hist(iris$Sepal.Length, main="Histogram")

# 6. Box Plot
boxplot(iris$Sepal.Length, main="Box Plot")

# 7. Pie Chart
pie(table(iris$Species), main="Pie Chart")