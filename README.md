# Sentiment Analysis Package

The Sentiment Analysis Package is an example R package that allows you to perform sentiment analysis on text data. It provides functions to clean the text, calculate the sentiment score, and assign a sentiment category.

This is a minimal example package intended solely for the teaching of function documentation.

``` r
# Define the input text
text <- "I had a great day today. The weather was amazing!"

# Clean the text
clean_text(text)
# Output: "i had a great day today the weather was amazing"

# Calculate the sentiment score
positive_words <- c("great", "amazing")
negative_words <- c("bad", "terrible")
calculate_sentiment(text, positive_words, negative_words)
# Output: 2

# Get the sentiment category
sentiment_score <- calculate_sentiment(text, positive_words, negative_words)
get_sentiment_category(sentiment_score)
# Output: "Positive"

# Perform full sentiment analysis using the analyze_sentiment() function
analyze_sentiment(text, positive_words, negative_words)
```

## Attribution

The majority of code was generated using ChatGPT.
