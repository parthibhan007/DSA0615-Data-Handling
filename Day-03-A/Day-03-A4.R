# Install necessary packages
# install.packages("tidytext")
# install.packages("syuzhet")

library(tidytext)
library(syuzhet)

# Example text data
reviews <- c("This product is amazing!", "I hate this product", "It's okay, not great")

# Perform sentiment analysis
sentiments <- get_nrc_sentiment(reviews)

# Visualization: Sentiment over time or across products
barplot(colSums(sentiments), main="Sentiment Analysis", ylab="Count", las=2)
