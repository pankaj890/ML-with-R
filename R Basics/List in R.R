# A list is a collecction of objects(Collection of vectors/data frame matrices etc) of mixed data types
#1) List Creation
a=c(1,2,3)
b=c("x","y")
m=matrix(1:9,nrow=3)
List1=list(a,b,m)
List2=list(a=a,e=b,k=m)
#2) Accessing vector/matrix etc
List1[1]
List1[2]
List1[3]
List1[c(1,2)]
#3) Accessing the vector/Matrix without sqare brackets (Ex:[[1]]) in the Output
List1[[1]]
List1[[2]]
List1[[3]]
List1[[c(1,2)]] # Returns second element of 1st object
List1[[c(2,2)]] # Returns second element of secobd object
List1[[c(3,8)]] # Returns row wise 8th element of 3rd  object which is a matrix




list <-list(a=c(1,1), b=c(2,2), c=c(3,3))
lapply(list,sum)
lapply(list,mean)


#1) Returning a vector of length=2
x=list(a=rnorm(10),b=c(1:10))
sapply(x,mean)

#2) Returning a list if length>1
mat1=matrix(1:9,nrow=3)
mat2=matrix(11:19,nrow=3)
mat=list(mat1,mat2)
x=sapply(mat,function(a){10*a})