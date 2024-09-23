# Install necessary package
# install.packages("igraph")

library(igraph)

# Create a sample network data (replace with your actual data)
g <- graph_from_data_frame(d = data.frame(from = c("UserA", "UserB", "UserC"), to = c("UserB", "UserC", "UserA")))

# Calculate centrality metrics
degree_centrality <- degree(g)
betweenness_centrality <- betweenness(g)

# Visualize the network with centrality-based node sizes
plot(g, vertex.size = degree_centrality * 10, vertex.color = "lightblue",
     main="Social Network Analysis", edge.arrow.size = 0.5)
