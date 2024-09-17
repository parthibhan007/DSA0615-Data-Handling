library(ggplot2)

group <- c(rep("X", 4), rep("Y", 4))
score <- c(80, 85, 78, 92, 88, 76, 80, 84)
data <- data.frame(group, score)

ggplot(data, aes(x = group, y = score)) + 
  geom_violin(trim = FALSE, fill = "lightblue") + 
  geom_jitter(width = 0.1, size = 2) +
  ggtitle("Violin Plot: Scores by Group")
