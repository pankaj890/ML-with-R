#Kernel Density graph
#A Kernel density plot shows the distribution of a continuous variable.
# kernel Density Plot
density_data <- density(mtcars$mpg)
density_data
plot(density_data)


#EDITING A KERNEL DENSITY PLOT IN R
# Filling density Plot withcolor
density_data <-density(mtcars$mpg)
plot(density_data, main="Kernel Density of Miles Per Gallon")
polygon(density_data,col="blue", border="green")
