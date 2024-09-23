# Example scenario data
scenario_data <- data.frame(
  Scenario = c("Low Budget", "Medium Budget", "High Budget"),
  Profit = c(50, 80, 120)  # Expected profit in thousands
)

# Bar plot for scenario analysis
ggplot(scenario_data, aes(x = Scenario, y = Profit, fill = Scenario)) +
  geom_bar(stat = "identity") +
  labs(title = "Scenario Analysis: Profit Comparison", x = "Scenario", y = "Profit (Thousands)") +
  theme_minimal()
