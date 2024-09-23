# Install necessary package
# install.packages("ggplot2")
# install.packages("reshape2")

library(ggplot2)
library(reshape2)

# Example customer RFM data
rfm_data <- data.frame(
  Customer = c("C1", "C2", "C3", "C4", "C5"),
  Recency = c(10, 30, 7, 40, 15),  # Days since last purchase
  Frequency = c(5, 2, 10, 1, 7),   # Number of purchases
  Monetary = c(200, 100, 500, 50, 300)  # Total spending
)

# Perform clustering (e.g., k-means clustering)
set.seed(123)
clusters <- kmeans(rfm_data[, 2:4], centers = 3)

# Add clusters to data
rfm_data$Segment <- as.factor(clusters$cluster)

# Visualize RFM segments with heatmap
melted_rfm <- melt(rfm_data, id.vars = c("Customer", "Segment"))
ggplot(melted_rfm, aes(x = variable, y = Customer, fill = value)) +
  geom_tile() +
  facet_wrap(~Segment) +
  labs(title = "Customer Segmentation: RFM Heatmap", x = "RFM Metric", y = "Customer") +
  scale_fill_gradient(low = "lightblue", high = "darkblue")
