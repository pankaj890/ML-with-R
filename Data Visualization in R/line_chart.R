#CREATING A LINE CHART IN R
weight <- c(2.5, 2.8, 3.2, 4.8, 5.1,5.9, 6.8, 7.1, 7.8,8.1)
months <- c(0,1,2,3,4,5,6,7,8,9)
plot(months,
     weight, type = "b",
     main="Baby Weight Chart", 
     )

#Note: to create a plot with lines between data points, 
#use type="l"; to plot only the points, use type="p"; 
#and to draw both lines and points, use type="b":
# l = line
# p = points
# b = both line and points


#EDITING A LINE CHART IN R
plot(months, weight, type = "b",col = "Red")

