# Create consumer survey data
survey_data <- data.frame(
  Product = c("A", "B", "C", "D", "E"),
  Price = c(50, 70, 60, 45, 55),
  Rating = c(4.2, 3.8, 4.0, 4.5, 3.9),
  Age_Group = c("25-35", "35-45", "18-25", "45-55", "25-35")
)

# ECDF for Price
ggplot(survey_data, aes(x = Price)) +
  stat_ecdf(geom = "step") +
  labs(title = "ECDF of Product Prices", x = "Price", y = "ECDF")
# Density Histogram for Rating
ggplot(survey_data, aes(x = Rating)) +
  geom_histogram(aes(y = ..density..), bins = 5, fill = "lightblue", color = "black") +
  geom_density(alpha = 0.2, fill = "#FF6666") +
  labs(title = "Density Histogram of Product Ratings", x = "Rating", y = "Density")
# Check skewness using moments package
# install.packages("moments")
library(moments)

# Find skewness for each variable
skew_price <- skewness(survey_data$Price)
skew_rating <- skewness(survey_data$Rating)

cat("Skewness of Price:", skew_price, "\n")
cat("Skewness of Rating:", skew_rating, "\n")

# If skewness is high, visualize with a histogram
ggplot(survey_data, aes(x = Price)) +
  geom_histogram(bins = 5, fill = "lightblue", color = "black") +
  labs(title = "Highly Skewed Distribution of Prices", x = "Price", y = "Frequency")
