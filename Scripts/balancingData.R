#Up sample the data (this will add two more Divorced observations)
data <- caret::upSample(x = data[,-55], y = data$Class)
summary(data$Class)