#Histograms
mtcars$mpg            #miles per gallon data
hist(mtcars$mpg)

#color histograms with different number of bins
hist(mtcars$mpg, breaks=12,col="blue")
