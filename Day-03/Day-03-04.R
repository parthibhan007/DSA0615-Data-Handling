# Load necessary libraries
library(ggplot2)
library(plotly)

environmental_data <- data.frame(
  Location = c("A", "B", "C", "D", "E"),
  Temperature = c(15, 20, 18, 12, 17),
  Humidity = c(65, 70, 68, 60, 72),
  CO2_Levels = c(400, 450, 420, 380, 430)
)

# 3D scatter plot: Temperature, Humidity, and CO2 Levels
plot_ly(environmental_data, x = ~Temperature, y = ~Humidity, z = ~CO2_Levels, type = "scatter3d", mode = "markers",
        marker = list(size = 5, color = ~CO2_Levels, colorscale = 'Viridis')) %>%
  layout(title = "Temperature, Humidity, and CO2 Levels")

# 3D surface plot: CO2 Levels with Temperature and Humidity
plot_ly(environmental_data, x = ~Temperature, y = ~Humidity, z = ~CO2_Levels, type = "mesh3d") %>%
  layout(title = "3D Surface Plot of CO2 Levels")
