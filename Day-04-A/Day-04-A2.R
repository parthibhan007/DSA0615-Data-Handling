# Create financial market data
market_data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04", "2023-01-05")),
  Stock_Price = c(100, 102, 98, 105, 108),
  Volume_Traded = c(2.5, 3.0, 2.2, 2.8, 3.5),
  Market_Cap = c(500, 510, 490, 525, 540)zzzzz
)

# Calculate average
average_stock_price <- mean(market_data$Stock_Price)
average_volume_traded <- mean(market_data$Volume_Traded)
average_market_cap <- mean(market_data$Market_Cap)

cat("Average Stock Price:", average_stock_price, "\n")
cat("Average Volume Traded:", average_volume_traded, "\n")
cat("Average Market Cap:", average_market_cap, "\n")
# Mean is the same as the average for these columns
mean_stock_price <- mean(market_data$Stock_Price)
mean_volume_traded <- mean(market_data$Volume_Traded)
mean_market_cap <- mean(market_data$Market_Cap)

cat("Mean Stock Price:", mean_stock_price, "\n")
cat("Mean Volume Traded:", mean_volume_traded, "\n")
cat("Mean Market Cap:", mean_market_cap, "\n")
# Mean is the same as the average for these columns
mean_stock_price <- mean(market_data$Stock_Price)
mean_volume_traded <- mean(market_data$Volume_Traded)
mean_market_cap <- mean(market_data$Market_Cap)

cat("Mean Stock Price:", mean_stock_price, "\n")
cat("Mean Volume Traded:", mean_volume_traded, "\n")
cat("Mean Market Cap:", mean_market_cap, "\n")
# Melt data for bar plot
melted_market <- melt(market_data, id.vars = "Date")

# Create Bar Plot
ggplot(melted_market, aes(x = Date, y = value, fill = variable)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Financial Market Data", x = "Date", y = "Value")
