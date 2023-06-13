clean_text <- function(text) {
  # Remove special characters and numbers
  cleaned_text <- gsub("[^a-zA-Z]", " ", text)

  # Remove extra whitespaces
  cleaned_text <- gsub("\\s+", " ", cleaned_text)

  # Convert text to lowercase
  cleaned_text <- tolower(cleaned_text)

  return(cleaned_text)
}
