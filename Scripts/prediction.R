set.seed((123))

## data split

#cforest algorithm
pred1_cf <- predict(model1[[1]], test1)
confusionMatrix(pred1_cf,test1$Class)

#cTree algorithm
pred1_ct <- predict(model1[[2]], test1)
confusionMatrix(pred1_cf,test1$Class)

#xgbTree algorithm
pred1_xgb <- predict(model1[[3]], test1)
confusionMatrix(pred1_cf,test1$Class)

#random forest algorithm
pred1_rf <- predict(model1[[4]], test1)
confusionMatrix(pred1_cf,test1$Class)


## leave one out cross validation

#cforest algorithm

pred2_cf <- model2[[1]]$pred$pred
test2_cf = model2[[1]]$pred$obs
confusionMatrix(pred2_cf, test2_cf)

#cTree algorithm
pred2_ct <- model2[[2]]$pred$pred
test2_ct <-model2[[2]]$pred$obs
confusionMatrix(pred2_ct, test2_ct)

#xgbTree algorithm
pred2_xgb <- model2[[3]]$pred$pred
test2_xgb <- model2[[3]]$pred$obs
confusionMatrix(pred2_xgb, test2_xgb)

#random forest algorithm
pred2_rf <- model2[[4]]$pred$pred
test2_rf <- model2[[4]]$pred$obs
confusionMatrix(pred2_rf, test2_rf)

