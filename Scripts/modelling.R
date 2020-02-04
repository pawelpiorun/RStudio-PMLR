set.seed(123)

#Split data
ind1 = caret::createDataPartition(data$Class, p=0.7, list=FALSE)
train1 <- data[ind1,]
test1 <- data[-ind1,]

#data modelling
model1 <- lapply(c( 'cforest', 'ctree', 'xgbTree', 'rf'),
                              function (met) {
                                caret::train(Class~., method = met,
                                data=train1) })

#leave one out cross validation
train_cont <-  caret::trainControl(method = "LOOCV")

#data modelling
model2 <- lapply(c( 'cforest', 'ctree', 'xgbTree', 'rf'),
                 function (met) {
                   caret::train(Class~., data=data, method=met, 
                                trControl = train_cont) })

 