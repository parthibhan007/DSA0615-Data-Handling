# Example A/B test data
ab_test_data <- data.frame(
  Version = c("A", "B"),
  Clicks = c(200, 220),
  Signups = c(50, 60)
)

# Calculate conversion rates
ab_test_data$Conversion_Rate <- ab_test_data$Signups / ab_test_data$Clicks

# Stacked bar plot
ggplot(ab_test_data, aes(x = Version, y = Conversion_Rate, fill = Version)) +
  geom_bar(stat = "identity") +
  labs(title = "A/B Testing: Conversion Rates", x = "Version", y = "Conversion Rate") +
  scale_fill_manual(values = c("A" = "blue", "B" = "green"))
