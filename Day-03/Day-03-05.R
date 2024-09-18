# Load necessary libraries
library(ggplot2)
library(plotly)

academic_data <- data.frame(
  Student = c("A", "B", "C", "D", "E"),
  Math_Score = c(85, 72, 90, 78, 88),
  Science_Score = c(78, 85, 80, 75, 82),
  Attendance = c(95, 92, 98, 85, 93)
)

# 3D scatter plot: Math Score, Science Score, and Attendance
plot_ly(academic_data, x = ~Math_Score, y = ~Science_Score, z = ~Attendance, type = "scatter3d", mode = "markers",
        marker = list(size = 5, color = ~Math_Score, colorscale = 'Viridis')) %>%
  layout(title = "Math Score, Science Score, and Attendance")

# 3D surface plot: Science Score with Math Score and Attendance
plot_ly(academic_data, x = ~Math_Score, y = ~Attendance, z = ~Science_Score, type = "mesh3d") %>%
  layout(title = "3D Surface Plot of Science Scores")
