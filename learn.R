library(RColorBrewer)
library(caret)
library(rattle)
library(rpart)

cac <- read.csv('cac.csv')

train.index <- createDataPartition(cac$ViolentCrimesPerPop, p=0.8, list=FALSE)
cac.train <- cac[train.index,]
cac.test <- cac[-train.index,]

fit <- rpart(ViolentCrimesPerPop ~ .,
             data = cac.train)
predictions <- predict(fit, newdata = cac.test, type = 'vector')

print(fit)
print(paste('Test set SD:', sd(cac.test$ViolentCrimesPerPop)))
print(paste('Test set RMSE:', sqrt(sum(predictions - cac.test$ViolentCrimesPerPop)^2 / nrow(cac.test))))

png(filename='tree.png', width=1280, height=1280)
fancyRpartPlot(fit,
               Margin=0.1,
               yesno=2,
               split.border.col=1)
dev.off()
