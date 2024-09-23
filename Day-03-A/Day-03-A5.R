# Install necessary packages
# install.packages("sf")
# install.packages("ggplot2")

library(ggplot2)
library(sf)

# Example spatial data (replace with actual customer location data)
# Assume you have a shapefile of regions and customer sales data
# Load shapefile of regions (replace with actual file)
regions <- st_read("path_to_shapefile.shp")

# Example sales data for each region (replace with your data)
sales_data <- data.frame(region = c("Region1", "Region2"), sales = c(1000, 1500))

# Merge sales data with spatial data
regions <- merge(regions, sales_data, by.x = "region_name_column", by.y = "region")

# Plot choropleth map based on sales
ggplot(regions) +
  geom_sf(aes(fill = sales)) +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "Sales by Region", fill = "Sales")
