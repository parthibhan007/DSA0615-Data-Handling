months <- c("Jan", "Feb", "Mar", "Apr", "May")
city_A <- c(5, 6, 7, 8, 9)
city_B <- c(10, 11, 12, 13, 14)
city_C <- c(15, 16, 17, 18, 19)

temperature_matrix <- matrix(c(city_A, city_B, city_C), nrow = 3, byrow = TRUE)
colnames(temperature_matrix) <- months
rownames(temperature_matrix) <- c("City A", "City B", "City C")

heatmap(temperature_matrix, main = "Heatmap: Monthly Temperatures")
