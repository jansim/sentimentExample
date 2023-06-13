calculate_sentiment <- function(text, positive_words = c("good", "happy", "great"), negative_words = c("bad", "sad", "terrible")) {
  cleaned_text <- clean_text(text)
  words <- strsplit(cleaned_text, "\\s+") |> unlist()

  positive_count <- sum(words %in% positive_words)
  negative_count <- sum(words %in% negative_words)

  sentiment_score <- positive_count - negative_count

  return(sentiment_score)
}

get_sentiment_category <- function(sentiment_score) {
  if (sentiment_score > 0) {
    category <- "Positive"
  } else if (sentiment_score < 0) {
    category <- "Negative"
  } else {
    category <- "Neutral"
  }

  return(category)
}

analyze_sentiment <- function(text, positive_words = c("good", "happy", "great"), negative_words = c("bad", "sad", "terrible")) {
  sentiment_score <- calculate_sentiment(text, positive_words, negative_words)
  sentiment_category <- get_sentiment_category(sentiment_score)

  result <- list(sentiment_score = sentiment_score, sentiment_category = sentiment_category)

  return(result)
}
