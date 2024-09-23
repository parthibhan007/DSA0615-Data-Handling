# Install necessary packages (if not already installed)
# install.packages("arules")
# install.packages("arulesViz")

library(arules)
library(arulesViz)

# Load transaction data (replace with your actual data)
data(Groceries)

# Perform Market Basket Analysis with adjusted parameters
rules <- apriori(Groceries, parameter = list(supp = 0.001, conf = 0.5))

# Check if rules were generated
if(length(rules) > 0) {
  # Visualize rules with a graph (network diagram)
  plot(rules, method = "graph", control = list(type = "items"))
  
  # View top 5 rules by lift
  inspect(sort(rules, by = "lift")[1:5])
} else {
  print("No rules were generated with the given support and confidence thresholds.")
}
