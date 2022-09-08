
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 70, 62, 48)
xtest<-c(132,139,145,148,150,169,171,176,182,185)
ytest<-c(55,57,59,62,67,70,71,74,88,90)
# Apply the lm() function.
relation <- lm(y~x)

print(summary(relation))


result <-  predict(relation,data.frame(xtest))
print(result)

# Give the chart file a name.
png(file = "linearregression.png")

# Plot the chart.
 
#Evaluation metrics
Rmse<-sqrt(mean((result-ytest)^2))
print(Rmse)
Rsquare<-1-sum((result-ytest)^2)/sum((mean(ytest)-ytest)^2)
print(Rsquare)
pearson<-cor(xtest, y = result, use = "everything",
    method = c("pearson"))
print(pearson)
Abs_error=(sum(abs(result-ytest)))
print(Abs_error)
MAE<-(sum(abs(result-ytest))/length(ytest))
print(MAE)
Rel_error<-(sum(abs(result-ytest))/sum(abs(ytest)))
print(Rel_error)
