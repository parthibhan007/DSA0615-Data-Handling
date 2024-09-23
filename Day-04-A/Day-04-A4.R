# Install necessary packages
# install.packages("ggplot2")

library(ggplot2)

# Example data for risks
risk_data <- data.frame(
  Risk = c("Risk A", "Risk B", "Risk C", "Risk D", "Risk E"),
  Impact = c(8, 5, 6, 7, 9),  # Impact on a scale of 1 to 10
  Likelihood = c(6, 8, 3, 7, 9)  # Likelihood on a scale of 1 to 10
)

# Create a Risk Matrix
ggplot(risk_data, aes(x = Likelihood, y = Impact, label = Risk)) +
  geom_point(aes(size = Impact, color = Impact), alpha = 0.7) +
  geom_text(nudge_y = 0.5, size = 4) +
  scale_color_gradient(low = "yellow", high = "red") +
  labs(title = "Risk Matrix", x = "Likelihood", y = "Impact") +
  theme_minimal()
