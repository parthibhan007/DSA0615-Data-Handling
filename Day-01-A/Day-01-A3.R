data <- data.frame(
  Date = as.Date(c('2024-01-01', '2024-01-02', '2024-01-03', '2024-01-04', '2024-01-05', '2024-01-06')),
  StationA_Temperature = c(25.0, 24.5, 26.2, 23.8, 25.5, 23.0),
  StationA_Precipitation = c(0.1, 0.0, 0.3, 0.2, 0.1, 0.4),
  StationB_Temperature = c(23.5, 22.8, 25.0, 22.5, 24.5, 21.8),
  StationB_Precipitation = c(0.2, 0.3, 0.1, 0.0, 0.4, 0.2)
)


ggplot(data, aes(x=Date)) + 
  geom_line(aes(y=StationA_Temperature, color="Station A Temperature")) + 
  geom_line(aes(y=StationB_Temperature, color="Station B Temperature")) + 
  geom_line(aes(y=StationA_Precipitation, color="Station A Precipitation"), linetype="dashed") +
  geom_line(aes(y=StationB_Precipitation, color="Station B Precipitation"), linetype="dashed") +
  labs(title="Time Series of Temperature and Precipitation", x="Date", y="Value")
