# Example data quality assessment: Checking missing values
data_quality <- data.frame(
  Variable = c("Age", "Income", "Gender", "Location"),
  Missing_Percent = c(5, 2, 0, 8)  # Percent of missing values
)

# Bar plot for missing data percentages
ggplot(data_quality, aes(x = Variable, y = Missing_Percent)) +
  geom_bar(stat = "identity", fill = "red") +
  labs(title = "Data Quality Assessment: Missing Data", x = "Variable", y = "Missing Percentage") +
  theme_minimal()
