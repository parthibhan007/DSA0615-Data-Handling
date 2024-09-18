months <- c('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec')
conditions <- c('Good', 'Good', 'Good', 'Good', 'Fair', 'Fair', 'Good', 'Bad', 'Fair', 'Good', 'Bad', 'Fair')
unemployment_rate <- c(10.7, 9.8, 10.2, 11.2, 15.75, 17.8, 19.4, 25.6, 18.6, 15.6, 26.7, 19.5)

data <- data.frame(months, conditions, unemployment_rate)

ggplot(data, aes(fill=conditions, y=unemployment_rate, x=months)) + 
  geom_bar(position="stack", stat="identity") +
  labs(title = "Stacked Bar Plot for Economic Condition and Unemployment Rate")

pie_data <- data.frame(months, unemployment_rate)
pie(pie_data$unemployment_rate, labels = pie_data$months, main="Pie Chart of Unemployment Rate")


ggplot(data, aes(fill=conditions, y=unemployment_rate, x=months)) + 
  geom_bar(position="dodge", stat="identity") +
  labs(title = "Grouped Bar Plot for Economic Condition and Unemployment Rate")
