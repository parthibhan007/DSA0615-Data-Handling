# Install necessary packages
# install.packages("ggplot2")
# install.packages("reshape2")

library(ggplot2)
library(reshape2)

# Create weather data
weather_data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04", "2023-01-05")),
  Temperature = c(10, 12, 8, 15, 14),
  Humidity = c(75, 70, 80, 65, 72),
  Wind_Speed = c(15, 12, 18, 20, 16)
)

# Melt the data for heatmap
melted_weather <- melt(weather_data, id.vars = "Date")

# Create Heat Map
ggplot(melted_weather, aes(x = Date, y = variable, fill = value)) +
  geom_tile() +
  labs(title = "Heat Map of Weather Data", x = "Date", y = "Variable") +
  scale_fill_gradient(low = "lightblue", high = "darkblue")
# Create Box Plot
ggplot(melted_weather, aes(x = variable, y = value)) +
  geom_boxplot(fill = "lightblue") +
  labs(title = "Box Plot of Weather Data", x = "Variable", y = "Value")
# Create Violin Plot
ggplot(melted_weather, aes(x = variable, y = value)) +
  geom_violin(fill = "lightblue") +
  labs(title = "Violin Plot of Weather Data", x = "Variable", y = "Value")

