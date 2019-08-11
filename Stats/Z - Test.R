#Z-Test
pnorm(84,mean=72,sd=15.2,lower.tail = T)

qt(c(.025,.975),df=5)


df1=fastfood_1
df1
#Concatenate the data rows of df1 into a single vector r.
r = c(t(as.matrix(df1))) # response data
#Assign new variables for the treatment levels and number of observations.
f = c("Item1", "Item2", "Item3") # treatment levels
k = 3 # number of treatment levels
n = 6 # observations per treatment
#Create a vector of treatment factors, corresponding to each element of R in step 3,
#using the gl function.
tm = gl(k, 1, n*k, factor(f)) # matching treatments
tm
#Apply the function aov to a formula that describes the response r by the treatment
#factor tm.
av = aov(r ~ tm)
#Print out the ANOVA table with the summary function.
summary(av)
