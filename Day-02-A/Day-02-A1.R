# Install if not installed
# install.packages("ggplot2")

# Load ggplot2
library(ggplot2)
library(reshape2)
# Create the dataset
data <- data.frame(
  Month = c('January', 'February', 'March', 'April', 'May', 'June', 
            'July', 'August', 'September', 'October', 'November', 'December'),
  Category_A = c(500, 600, 700, 500, 800, 800, 500, 700, 500, 800, 500, 600),
  Category_B = c(700, 800, 500, 600, 400, 400, 700, 500, 600, 400, 700, 800),
  Category_C = c(600, 700, 600, 800, 300, 300, 600, 600, 800, 300, 600, 700)
)
# Melt the data for easier plotting
data_melt <- melt(data, id.vars = 'Month')

# Create the vertical bar chart
ggplot(data_melt, aes(x = Month, y = value, fill = variable)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Sales Figures by Category (Vertical Bar Chart)", 
       x = "Month", y = "Sales", fill = "Category") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
# Create the horizontal bar chart
ggplot(data_melt, aes(x = value, y = Month, fill = variable)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Sales Figures by Category (Horizontal Bar Chart)", 
       x = "Sales", y = "Month", fill = "Category") +
  theme_minimal()
# Create the grouped bar chart
ggplot(data_melt, aes(x = Month, y = value, fill = variable)) +
  geom_bar(stat = "identity", position = position_dodge()) +
  labs(title = "Grouped Bar Chart", x = "Month", y = "Sales") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
# Create the stacked bar chart
ggplot(data_melt, aes(x = Month, y = value, fill = variable)) +
  geom_bar(stat = "identity") +
  labs(title = "Stacked Bar Chart", x = "Month", y = "Total Sales") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
