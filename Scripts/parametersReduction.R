# Use RFE method to check how can we reduce parameters number
set.seed(1)
results <- caret::rfe(data$Class ~ ., data, sizes=c(3,5,7,9,13,20,30,40,50),
                      rfeControl=caret::rfeControl(functions=caret::rfFuncs,
                                                   method="cv", number=10, verbose=FALSE));
print(results)
plot(results, type=c("g", "o"))

# Use RFE with different function
results2 <- caret::rfe(data$Class ~ ., data, sizes=c(3,5,7,9,13,20,30,40,50),
                      rfeControl=caret::rfeControl(functions=caret::nbFuncs,
                                                   method="cv", number=10, verbose=FALSE));
print(results2)
plot(results2, type=c("g", "o"))