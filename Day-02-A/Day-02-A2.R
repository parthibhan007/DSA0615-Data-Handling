# Install necessary packages
# install.packages("arules")
# install.packages("arulesViz")

library(arules)
library(arulesViz)

# Load transaction data (replace with your actual data)
data(Groceries)

# Perform Market Basket Analysis
rules <- apriori(Groceries, parameter = list(supp = 0.01, conf = 0.8))

# Visualize rules with a graph (network diagram)
plot(rules, method = "graph", control = list(type = "items"))

# View top 5 rules by lift
inspect(sort(rules, by = "lift")[1:5])
