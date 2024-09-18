# Load necessary libraries
library(ggplot2)
library(plotly)

financial_data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04", "2023-01-05")),
  Stock_Price = c(100, 102, 98, 105, 108),
  Volume_Traded = c(2.5, 3.0, 2.2, 2.8, 3.5),
  Market_Cap = c(500, 510, 490, 525, 540)
)

plot_ly(financial_data, x = ~Volume_Traded, y = ~Market_Cap, z = ~Stock_Price, type = "scatter3d", mode = "markers",
        marker = list(size = 5, color = ~Stock_Price, colorscale = 'Viridis')) %>%
  layout(title = "Stock Price, Volume Traded, and Market Cap")

plot_ly(financial_data, x = ~Stock_Price, y = ~Volume_Traded, z = ~Market_Cap, type = "mesh3d") %>%
  layout(title = "3D Surface Plot of Market Cap")
