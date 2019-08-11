#CREATING HEAT MAP IN R
df <- scale(mtcars)
mtcars
df
heatmap(df, scale = "row")
#scale: a character indicating if the values should be centered and scaled in either the row direction or the column direction, or none. 
#Allowed values are in c(“row”, “column”, “none”). Default is “row”.
heatmap(df, scale = "none")




#SCALE Functionality
Age = c(24,25,58,50,46)
Salary = c(10000,56000,100040,57000,78000)
df1 = data.frame(Age,Salary)
scaled_df=scale(df1)     # bring Age and Salary in a similar scale
scaled_df
summary(scaled_df)
fix(df)
