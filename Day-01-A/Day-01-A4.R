browser_data <- data.frame(
  Year = c(2019, 2020, 2022, 2023, 2024),
  Browser = rep('Chrome', 5),
  Users = c(22.7, 25.8, 28.7, 30.5, 35.2)
)

pie(browser_data$Users, labels = browser_data$Year, main="Pie Chart of Chrome Users")

mosaic(~ Year + Browser, data = browser_data, shade = TRUE)

ggplot(browser_data, aes(x=Year, y=Users)) + 
  geom_point() +
  geom_line() +
  labs(title="Scatter plot of Chrome Users over Years")
