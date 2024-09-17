library(ggplot2)

month <- c("Jan", "Jan", "Feb", "Feb", "Mar", "Mar")
region <- c("East", "West", "East", "West", "East", "West")
sales <- c(200, 150, 220, 170, 210, 160)

sales_data <- data.frame(month, region, sales)

ggplot(sales_data, aes(x = month, y = sales, fill = region)) + 
  geom_bar(stat = "identity", position = "dodge") + 
  facet_wrap(~region) + 
  ggtitle("Facet Plot: Sales by Month and Region")
