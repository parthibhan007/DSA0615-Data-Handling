# Load necessary libraries
library(ggplot2)
library(plotly)

consumer_data <- data.frame(
  Product = c("A", "B", "C", "D", "E"),
  Price = c(50, 70, 60, 45, 55),
  Rating = c(4.2, 3.8, 4.0, 4.5, 3.9),
  Age_Group = c("25-35", "35-45", "18-25", "45-55", "25-35")
)

# 3D scatter plot: Price, Rating, and Age Group
plot_ly(consumer_data, x = ~Price, y = ~Rating, z = ~Age_Group, type = "scatter3d", mode = "markers",
        marker = list(size = 5, color = ~Price, colorscale = 'Viridis')) %>%
  layout(title = "Price, Rating, and Age Group")

# 3D surface plot: Rating with Price and Age Group
plot_ly(consumer_data, x = ~Price, y = ~Age_Group, z = ~Rating, type = "mesh3d") %>%
  layout(title = "3D Surface Plot of Product Ratings")
