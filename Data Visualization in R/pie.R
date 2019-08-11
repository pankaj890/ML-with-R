#Consider a pie chart that contains values 10, 12, 4, 16,8 as slices
# and US, UK, Australia, Germany, and France as labels.
slices <- c(10, 12,4, 16, 8)
lbls <- c("US", "UK","Australia", "Germany","France")
pie( slices, labels = lbls,main="Simple Pie Chart")

#EDITING PIE CHARTS IN R
slices <- c(10, 12,4, 16, 16)
pct <-round(slices/sum(slices)*100)
lbls <- paste(c("US", "UK","Australia","Germany", "France"), " ", pct,"%", sep="")
pie(slices, labels=lbls,col=rainbow(5),main="Pie Chart with Percentages")




# 3-dimensional pie chart
#install.packages("plotrix")
library(plotrix)
slices <- c(10, 12,4, 16, 8)
lbls <- paste(c("US", "UK","Australia","Germany", "France"), " ", pct,"%", sep="")
pie3D(slices,labels=lbls,explode=0.0,main="3D Pie Chart")
