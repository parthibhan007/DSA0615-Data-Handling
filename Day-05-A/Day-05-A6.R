library(ggplot2)

# Example data
data <- data.frame(
  ID = c(1, 1, 1, 2, 2, 2),
  Time = c(1, 2, 3, 1, 2, 3),
  Value = c(10, 12, 15, 9, 11, 13)
)

# Line plot
ggplot(data, aes(x = Time, y = Value, color = factor(ID), group = ID)) +
  geom_line() + geom_point() +
  labs(title = "Value over Time by ID", x = "Time", y = "Value") +
  theme_minimal()
# Grouped bar plot
ggplot(data, aes(x = factor(Time), y = Value, fill = factor(ID))) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Values at Different Times", x = "Time", y = "Value") +
  theme_minimal()
# Scatter plot
ggplot(data, aes(x = Time, y = Value, color = factor(ID))) +
  geom_point(size = 3) +
  labs(title = "Value vs Time by ID", x = "Time", y = "Value") +
  theme_minimal()
# Connected scatter plot
ggplot(data, aes(x = Time, y = Value, color = factor(ID), group = ID)) +
  geom_line() + geom_point() +
  labs(title = "Trend of Values over Time by ID", x = "Time", y = "Value") +
  theme_minimal()
# Stacked area chart
ggplot(data, aes(x = Time, y = Value, fill = factor(ID))) +
  geom_area() +
  labs(title = "Cumulative Values over Time", x = "Time", y = "Value") +
  theme_minimal()
