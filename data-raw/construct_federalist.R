library(syllogi)
library(dplyr)
library(tm)
library(stringr)

# Based on https://doi.org/10.1214/21-AOS2158
#
# Load and process the Federalist Papers
#
data(federalistPapers)
meta <- federalistPapers %>%
  lapply("[[", "meta") %>%
  bind_rows() %>%
  mutate(i=row_number())
texts <- federalistPapers %>%
  lapply("[[", "paper") %>%
  VectorSource() %>%
  VCorpus() %>%
  tm_map(content_transformer(tolower)) %>%
  tm_map(content_transformer(\(x) str_replace_all(x, "“", ""))) %>% # Remove “
  tm_map(removePunctuation) %>%
  # tm_map(removeNumbers) %>% # Keep Numbers
  # tm_map(removeWords, stopwords("en")) %>% # Keep Stopwords
  # tm_map(stemDocument)  %>% # No Stemming
  tm_map(stripWhitespace)
rm(federalistPapers)

# Drop the second of the two 70 papers
texts <- texts[-71]
meta <- meta[-71,]

# Compare this to Kipnis:
meta %>% group_by(author) %>% summarise(is=paste0(i, collapse=", "))
# Drop the jointly authored papers and Jay's papers, as in Kipnis
drop <- meta %>%
  filter(author %in% c("HAMILTON AND MADISON", "JAY")) %>%
  pull(i)
texts <- texts[-drop]
meta <- meta[-drop,]

# Find the 1500 most common words for each author
common_terms <- DocumentTermMatrix(texts) %>%
  findMostFreqTerms(1500, INDEX=meta$author)
tokeep <- common_terms[c("HAMILTON", "MADISON")] %>%
  lapply(names) %>%
  unlist() %>%
  unique()
print(length(tokeep)) # Are 1985, kipnis has 1995

#
# Construct the term-document matrix
#

words <- DocumentTermMatrix(texts, control = list(dictionary = tokeep)) %>%
  as.matrix()
meta_export <- meta %>%
  transmute(doc_no = number, doc_author = str_to_title(author), 
            doc_author = case_when(
              doc_author == "Hamilton" ~ "Alexander Hamilton",
              doc_author == "Madison" ~ "James Madison",
              TRUE ~ doc_author
            ))
federalist <- bind_cols(meta_export, as.data.frame(words))

usethis::use_data(federalist, overwrite = TRUE)