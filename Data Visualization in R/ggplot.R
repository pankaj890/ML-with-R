#ggplot2
library(ggplot2)

#Syntax
#ggplot(airquality,aes(x=read)) + geom_bar()

ggplot(airquality, aes(x = Ozone))
  + geom_histogram(aes(y = ..count..), binwidth = 5, colour = "black", fill = "blue")
  + scale_x_continuous(name = "Mean Ozone", breaks=seq(0,175,25),limit=c(0,175))
  + scale_y_continuous(name = "Count")
  + ggtitle("Box Plot for mean Ozone by Month")




#Another Example
airquality$Month <-factor(airquality$Month,
                          labels = c("May", "Jun", "Jul", "Aug",
                                     "Sep"))
ggplot(airquality, aes(x = Month, y = Ozone))+ geom_boxplot(fill = "blue", colour =
                                                              "black")+ scale_y_continuous(name = "Mean ozone
in\nparts per billion", breaks = seq(0, 175,
                                     25), limits=c(0, 175))+ scale_x_discrete(name = "Month") +
  ggtitle("Boxplot of mean ozone by month")