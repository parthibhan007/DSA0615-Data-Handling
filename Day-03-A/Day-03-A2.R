# Install necessary package
# install.packages("BTYD")

library(BTYD)

# Assuming you have transaction data with customer ID and purchase dates
# Example data:
transaction_data <- data.frame(
  customer_id = c(1, 1, 2, 2, 3, 3),
  purchase_date = as.Date(c('2020-01-01', '2020-03-01', '2020-02-15', '2020-05-15', '2020-02-10', '2020-04-20'))
)

# Estimate the parameters for CLV model
est_params <- pnbd.EstimateParameters(transaction_data)

# Predict CLV for each customer
clv <- pnbd.DERT(est_params, transaction_data)

# Visualization
barplot(clv, main="Customer Lifetime Value", xlab="Customer", ylab="CLV")
