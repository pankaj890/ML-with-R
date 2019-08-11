install.packages("wordcloud")
library("wordcloud")
data <- read.csv(" TEXT.csv",header = TRUE)
head(data)

wordcloud(words = data$word,
freq = data$freq, min.freq = 2, max.words = 100, random.order=FALSE, 
                    rot.per =0.35, colors brewer.pal(8,"Dark2")
