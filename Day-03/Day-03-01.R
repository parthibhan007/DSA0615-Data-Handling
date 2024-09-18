library(ggplot2)
library(plotly)

weather_data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04", "2023-01-05")),
  Temperature = c(10, 12, 8, 15, 14),
  Humidity = c(75, 70, 80, 65, 72),
  Wind_Speed = c(15, 12, 18, 20, 16)
)

plot_ly(weather_data, x = ~Humidity, y = ~Wind_Speed, z = ~Temperature, type = "scatter3d", mode = "markers",
        marker = list(size = 5, color = ~Temperature, colorscale = 'Viridis')) %>%
  layout(title = "Temperature, Humidity, and Wind Speed")

library(plotly)
plot_ly(weather_data, x = ~Humidity, y = ~Wind_Speed, z = ~Temperature, type = "mesh3d") %>%
  layout(title = "3D Surface Plot of Temperature")
