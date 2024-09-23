# Install necessary packages
# install.packages("forecast")

library(forecast)

# Example sales data (monthly sales)
sales_data <- ts(c(500, 600, 700, 650, 800, 850, 900, 920, 950, 1000), frequency = 12, start = c(2023, 1))

# Fit ARIMA model
fit <- auto.arima(sales_data)

# Forecast future sales
forecast_data <- forecast(fit, h = 12)

# Plot the forecast
plot(forecast_data, main = "Sales Forecast with ARIMA", xlab = "Time", ylab = "Sales")
