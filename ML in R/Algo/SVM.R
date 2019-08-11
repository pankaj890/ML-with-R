#Support Vector Machines  -  #Problem Statement - Predict if a customer will churn or not?
#Importing data
data_svm=Demo.1_.Support.Vector.Machines
head(data_svm)
View(Demo.1_.Support.Vector.Machines)
dim(data_svm)
str(data_svm)

install.packages('caTools')
library(caTools)                         #Load the package into the program like import in python

set.seed(123)                           # Seed - In sampling, the data should be same only then we can get the same data
split = sample.split(data_svm$Churn, SplitRatio = 0.75)       # sample.split() is a part of caTool package 
                                                              # 75% Training and 25% for testing    # Random sampling
training_set = subset(data_svm, split == TRUE)    
test_set = subset(data_svm, split == FALSE)
dim(training_set)
dim(test_set)        # prints the dimenion - n * n --  row * column
names(test_set)      # prints the column names in the data

# Feature Scaling - To get data in same format/tpye when features are of different formats
training_set[-1] = scale(training_set[-1])      # -1 to exclude 1st variable which dependent var in this case
test_set[-1] = scale(test_set[-1]) 

# Fitting SVM to the Training set 
install.packages('e1071') 
library(e1071)                                  # Imported e1071

classifier = svm(formula = Churn ~ .,           # Churn depends on all independent var
                 data = training_set, 
                 type = 'C-classification', 
                 kernel = 'linear')
summary(classifier)      # in summary(), cost is number of misclassifcations, out of 2500 data in training data, 
                         # 823 used for support vector, 461 for '1' and 362 for '0'

# Predicting the Test set results 
y_pred = predict(classifier, newdata = test_set)

# Making the Confusion Matrix 
df1=data.frame(y_pred,test_set[,1])
df1
cm=table(df1)
cm
#library(caret) 
#confusionMatrix(df1)
accuracy_Test <- sum(diag(cm)) / sum(cm)
print(paste("Accuracy for test",accuracy_Test))
