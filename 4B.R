bread <- c(12,3,5,11,9)
milk <- c(21,27,18,20,15)
cola <- c(10,1,33,6,12)
choc <- c(6,7,4,13,12)
dete <- c(5,8,12,20,23)

days <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

sales <- rbind(
  Day = days,
  Bread = bread,
  Milk = milk,
  Cola = cola,
  Choc = choc,
  Dete = dete
)
print(sales)
# Visualize using a grouped bar chart
data_matrix <- apply(sales[-1, ], 2, as.numeric)
rownames(data_matrix) <- rownames(sales)[-1]

barplot(data_matrix,
        beside = TRUE,
        col = c("orange", "lightblue", "pink",
                "yellow", "lightgreen"),
        main = "Product Sales from Monday to Friday",
        xlab = "Days",
        ylab = "Units Sold",
        names.arg = days,
        legend.text = rownames(data_matrix),
        args.legend = list(x = "topleft", cex = 0.7))