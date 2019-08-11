#Boxplots in R
#CREATING A BOX PLOT IN R
View(airquality)    #inbuilt dataset

boxplot(airquality$Ozone,
        main="Mean Ozone in parts per billion at Roosevelt Island",
        xlab="Parts Per Billion",
        ylab="Ozone",
        col="green",
        horizontal=TRUE)

