# Example KPI data
kpi_data <- data.frame(
  Metric = c("Revenue Growth", "Customer Acquisition Rate", "Conversion Rate", "Customer Satisfaction"),
  Value = c(15, 20, 12, 4.5)
)

# Bar plot for KPIs
ggplot(kpi_data, aes(x = Metric, y = Value)) +
  geom_bar(stat = "identity", fill = "lightblue") +
  labs(title = "Performance Dashboard", x = "KPI", y = "Value") +
  theme_minimal()
