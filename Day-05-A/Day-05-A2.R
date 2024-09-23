# Install necessary package
# install.packages("ggplot2")

library(ggplot2)

# Example operational data
operations_data <- data.frame(
  Process = c("Assembly", "Packaging", "Inspection"),
  Start_Time = as.POSIXct(c("2023-01-01 08:00", "2023-01-01 09:00", "2023-01-01 10:00")),
  End_Time = as.POSIXct(c("2023-01-01 09:00", "2023-01-01 10:30", "2023-01-01 11:00")),
  Downtime = c(TRUE, FALSE, TRUE)  # Indicates downtime events
)

# Create Gantt Chart
ggplot(operations_data, aes(x = Start_Time, xend = End_Time, y = Process, yend = Process, color = Downtime)) +
  geom_segment(size = 6) +
  labs(title = "Operational Efficiency: Gantt Chart with Downtime", x = "Time", y = "Process") +
  scale_color_manual(values = c("FALSE" = "green", "TRUE" = "red")) +
  theme_minimal()
