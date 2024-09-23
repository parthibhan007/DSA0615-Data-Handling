# Install necessary packages
# install.packages("survival")
# install.packages("ggplot2")

library(survival)
library(ggplot2)

# Example churn data (time to churn in months)
churn_data <- data.frame(
  Time = c(2, 3, 4, 5, 6, 7, 8, 9, 10, 12),
  Status = c(1, 1, 0, 1, 0, 1, 0, 1, 1, 0)  # 1 = churned, 0 = active
)

# Kaplan-Meier survival curve
fit <- survfit(Surv(Time, Status) ~ 1, data = churn_data)

# Plot survival curve
ggsurvplot(fit, conf.int = TRUE, title = "Customer Retention: Kaplan-Meier Curve",
           xlab = "Months since Acquisition", ylab = "Survival Probability")
