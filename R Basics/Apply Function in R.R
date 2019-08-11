#1)Apply function
x=matrix(1:20,nrow=10)
x
apply(x,MARGIN=1,mean) #Takes the mean of rows
apply(x,MARGIN=2,mean) #Takes the mean of columns

#2) Apply to array of more dimention
x=array(1:12,c(2,2,3))
x
apply(x,1,sum)
apply(x,2,sum)
apply(x,c(1,2),sum)

#3)Apply to array of more dimention
x=array(1:40,c(2,2,10))
x
apply(x,c(1,2),sum)