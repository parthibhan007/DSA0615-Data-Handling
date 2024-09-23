panel_data <- data.frame(
  Country = c('USA', 'USA', 'USA', 'China', 'China', 'China'),
  Year = c(2010, 2015, 2020, 2010, 2015, 2020),
  GDP = c(15.2, 18.3, 21.5, 10.5, 12.3, 14.0)
)

# Line plot of GDP over Year
ggplot(panel_data, aes(x = Year, y = GDP, color = Country, group = Country)) +
  geom_line() + geom_point() +
  labs(title = "GDP over Year by Country", x = "Year", y = "GDP (Trillion $)") +
  theme_minimal()
panel_data$Population <- c(310, 330, 350, 1400, 1450, 1500)

# Scatter plot of Population vs GDP
ggplot(panel_data, aes(x = Population, y = GDP, color = Country)) +
  geom_point(size = 3) +
  labs(title = "Population vs GDP by Country", x = "Population (Millions)", y = "GDP (Trillion $)") +
  theme_minimal()
library(reshape2)

# Melt the data
panel_melt <- melt(panel_data, id.vars = c("Country", "Year"), measure.vars = c("GDP", "Population"))

# Stacked bar plot
ggplot(panel_melt, aes(x = Year, y = value, fill = variable)) +
  geom_bar(stat = "identity", position = "stack") +
  facet_wrap(~Country) +
  labs(title = "GDP and Population over Year", y = "Value", x = "Year") +
  theme_minimal()
# Grouped bar plot
ggplot(panel_data, aes(x = factor(Year), y = GDP, fill = Country)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Comparing GDP across Years", x = "Year", y = "GDP (Trillion $)") +
  theme_minimal()
