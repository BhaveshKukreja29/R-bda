details <- data.frame(
  course = c(1,2,3,4,5,6),
  id = c(11,12,13,14,15,16),
  class = c(1,2,1,2,1,2),
  marks = c(56,75,48,69,84,53)
)
result <- details[details$course<3, ]
print(result)
print(subset(details, course<3 | class==2))