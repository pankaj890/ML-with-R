#saving graphs to a file
jpeg("my_plot.jpg")
counts<-table(mtcars$gear)
barplot(counts)
dev.off()
