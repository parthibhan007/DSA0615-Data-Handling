# Data for the second task
school_data <- data.frame(
  School = c('A', 'A', 'A', 'B', 'B', 'B', 'C', 'C', 'C', 'D', 'D', 'D'),
  Grade_Level = c('Grade 1', 'Grade 2', 'Grade 3', 'Grade 1', 'Grade 2', 'Grade 3', 'Grade 1', 'Grade 2', 'Grade 3', 'Grade 1', 'Grade 2', 'Grade 3'),
  Students = c(25, 30, 20, 22, 28, 18, 20, 25, 15, 28, 32, 24)
)

# Mosaic plot
library(vcd)
mosaic(~ School + Grade_Level, data = school_data, shade = TRUE)

# Histogram
ggplot(school_data, aes(x=Students)) + 
  geom_histogram(binwidth=5, fill="blue", color="black") +
  labs(title="Histogram of Students Count")

# Scatter plot
ggplot(school_data, aes(x=Grade_Level, y=Students)) +
  geom_point() + 
  labs(title="Scatter plot of Students by Grade Level")
