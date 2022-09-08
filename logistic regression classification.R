# Loading package
library(dplyr)
library(caTools)
library(ROCR)
library("ggplot2")
      # For ROC curve to evaluate model
print(mtcars)

# Summary of dataset in package
summary(mtcars)


# Splitting dataset
split <- sample.split(mtcars, SplitRatio = 0.8)
split

train_reg <- subset(mtcars, split == "TRUE")
test_reg <- subset(mtcars, split == "FALSE")

# Training model
logistic_model <- glm(vs ~ wt + disp, 
                      data = train_reg, 
                      family = "binomial")
logistic_model

# Summary
summary(logistic_model)

# Predict test data based on model
predict_reg <- predict(logistic_model, 
                       test_reg, type = "response")
predict_reg  

# Changing probabilities
predict_reg <- ifelse(predict_reg >0.5, 1, 0)

# Evaluating model accuracy
# using confusion matrix
cM<-table(test_reg$vs, predict_reg)
print(cM)
accuracy<-(cM[1,1]+cM[2,2])/sum(cM) 
print(accuracy)
precision<-cM[2,2]/(cM[2,2]+cM[1,2])
print(precision)
recall<-cM[2,2]/(cM[2,2]+cM[2,1])
print(recall)#sensitivity/true positive rate
f1_score<-2*precision*recall/(precision+recall)
print(f1_score)
specificity<-cM[1,1]/(cM[1,1] +cM[1,2]) #true negative rate
print(specificity) 










