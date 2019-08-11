#Linear Model
data_simple= Demo.1_Perform.simple.linear.regression
View(data_simple)
names(data_simple)

#Weight~Height means we need model for Weight vs Height
#lm is Linear Model here
simple_linear=lm(Weight~Height,data=data_simple)
simple_linear
summary(simple_linear)

simple_linear_2=lm(Weight~Height+Age,data=data_simple)
simple_linear_2
summary(simple_linear_2)

simple_linear_all=lm(Weight~.,data=data_simple)

simple_linear_all




#Linear model with variable relevancy check
data = Boston
head(Boston)
?Boston
str(Boston)
linear_Boston = lm(medv~.,data = Boston)
linear_Boston
summary(linear_Boston)
#indus and age are irrelevent here. we can see in t-test of summary()
#excluding indus(3) and age(7)
linear_Boston1 = lm(medv~.,data = Boston[,-c(3,7)])
summary(linear_Boston1)
