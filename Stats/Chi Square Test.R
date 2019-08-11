# CHI SQUARE TEST
# It is commonly used for testing relationships between categorical variables

library(MASS)
head(survey)
dim(survey)
tbl = table(survey$Smoke,survey$Exer)
tbl

chisq.test(tbl)
