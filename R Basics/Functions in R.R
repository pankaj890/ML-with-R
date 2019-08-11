attach(mtcars)
names(mtcars)
dim(mtcars)
summary(mtcars)

library(dplyr)
select(mtcars,disp)
select(mtcars,mpg:hp)

attach(iris)
select(iris, starts_with("Petal"))
select(iris, ends_with("th"))

View(iris)
select(iris, contains("etal"))
select(iris, matches(".t."))



filter(mtcars, cyl == 8)
filter(mtcars, cyl < 6)
filter(mtcars, cyl < 6 & vs == 1)
filter(mtcars, cyl < 6 | vs == 1)


arrange(mtcars, desc(disp))
arrange(mtcars, cyl, disp)


summarize(group_by(mtcars, cyl), mean(disp))
summarize(group_by(mtcars, cyl), m=mean(disp), sd=sd(disp))
