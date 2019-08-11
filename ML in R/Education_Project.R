###########################################################################################################
# EDUCATION PROJECT
###########################################################################################################
DTdata = Project.1_Dataset
dim(DTdata)
str(DTdata)
summary(DTdata)
names(DTdata)
install.packages("psych")
library(psych)
describe(DTdata)

DTdata$gre[DTdata$gre >= 0    & DTdata$gre < 440] = 0   # Low
DTdata$gre[DTdata$gre >= 440  & DTdata$gre < 580] = 1   # Medium
DTdata$gre[DTdata$gre >= 580  ] = 2                     # High

library(caTools)
set.seed(123)        # All students will get the same sample
split = sample.split(DTdata$admit, SplitRatio = 0.75)      #admit is the dependent variable

boxplot(DTdata$gpa, col="green", horizontal=TRUE)
boxplot(DTdata$gre, col="green", horizontal=TRUE)
boxplot(DTdata$ses, col="green", horizontal=TRUE)
boxplot(DTdata$Race, col="green", horizontal=TRUE)
hist(DTdata$admit, breaks=2,col="blue")
hist(DTdata$gre, breaks=100,col="blue")

training_set = subset(DTdata, split == TRUE)    
test_set = subset(DTdata, split == FALSE)
dim(training_set)
dim(test_set)

training_set[-1] = scale(training_set[-1])      # scaling is used to get every variable in same format
test_set[-1] = scale(test_set[-1])              # -1 to exclude 1st variable which dependent var in this case

logitMod <- glm(training_set$admit~., data=training_set, family=binomial(link="logit"))
logitMod <- glm(training_set$admit~., data = training_set, family = binomial)
summary(logitMod)

predicted_1 <- plogis(predict(logitMod, test_set))  # prediction
# or
predicted_2 <- predict(logitMod, test_set, type="response")
predicted_1[predicted_1 < 0.5] = 0
predicted_1[predicted_1 >= 0.5] = 1
df_lgr=data.frame(predicted_1,test_set[,1])
cm_lgr = table(df_lgr)                                              # 64% accuracy
cm_lgr

#MODEL DIAGNOSTICS
library(InformationValue)
optCutOff <- optimalCutoff(test_set$admit, predicted_1)[1]
#VIF(logitMod)
misClassError(test_set$admit, predicted_1, threshold = optCutOff)   # 0.36
plotROC(test_set$admit, predicted_1)                                # 0.6229
sensitivity(test_set$admit, predicted_1, threshold = optCutOff)     # 0.0625
specificity(test_set$admit, predicted_1, threshold = optCutOff)     # 0.9852941
confusionMatrix(test_set$admit, predicted_1, threshold = optCutOff) # 64% Accuracy
#     0   1
#  0  57  25
#  1  11   7

#----------------------------------------------------------------------------------------------------------







###########################################################################################################
# SUPPORT VECTOR MACHINE
###########################################################################################################

library(e1071)                                  # Imported e1071
classifier = svm(formula = admit ~ .,           # Churn depends on all independent var
                 data = training_set, 
                 type = 'C-classification', 
                 kernel = 'linear')
summary(classifier) 

pred_svm = predict(classifier, newdata = test_set)
df_svm=data.frame(pred_svm,test_set[,1])
cm=table(df_svm)
accuracy_Test <- sum(diag(cm)) / sum(cm)
print(paste("Accuracy for test",accuracy_Test))        # 68% Accuracy
#----------------------------------------------------------------------------------------------------------





###########################################################################################################
# DECISION TREE  MODEL
###########################################################################################################

library(rpart)
library(rpart.plot)

#Model
fit <- rpart(training_set$admit~.,data = training_set, method = 'class')
rpart.plot(fit)
summary(fit)

pred_dt <- predict(fit,test_set, type='class')

df_dt=data.frame(pred_dt,test_set[,1])
cm_dt = table(df_dt)
accuracy_Test <- sum(diag(cm_dt)) / sum(cm_dt)
print(paste("Accuracy for test",accuracy_Test))        # 69% Accuracy
#----------------------------------------------------------------------------------------------------------

