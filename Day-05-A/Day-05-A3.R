# Install necessary packages
# install.packages("tm")
# install.packages("topicmodels")
# install.packages("wordcloud")

library(tm)
library(topicmodels)
library(wordcloud)

# Example customer reviews data
reviews <- c("The food was great", "Service was slow", "Loved the ambiance", "Food was cold", "Excellent service")

# Create document-term matrix
corpus <- Corpus(VectorSource(reviews))
dtm <- DocumentTermMatrix(corpus)

# Perform LDA for topic modeling
lda_model <- LDA(dtm, k = 2)  # 2 topics

# Extract terms from the topics
terms <- terms(lda_model, 5)
print(terms)

# Create a word cloud for each topic
wordcloud(rownames(terms), colSums(as.matrix(dtm)), random.order = FALSE, colors = brewer.pal(8, "Dark2"))
