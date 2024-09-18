jobs_data <- data.frame(
  Year = c(2019, 2020, 2022, 2023, 2024),
  Job_Sector = c('IT', 'Government Job', 'Customer care', 'Bank', 'Games'),
  Job_Seekers_Rate = c(95, 97, 98, 82, 74),
  Selection_Rate = c(25, 12, 45, 20, 35)
)

pie(jobs_data$Job_Seekers_Rate, labels = jobs_data$Job_Sector, main="Pie Chart of Job Seekers Rate")

mosaic(~ Year + Job_Sector, data = jobs_data, shade = TRUE)

ggplot(jobs_data, aes(x=Job_Sector, y=Selection_Rate)) + 
  geom_bar(stat="identity", fill="blue") +
  coord_polar("y", start=0) +
  labs(title="Funnel Plot of Selection Rate by Job Sector")
