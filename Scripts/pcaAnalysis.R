pca1 <- prcomp(data[,1:54], center = TRUE, scale. = TRUE)
summary(pca1)
pca2 <- prcomp(data[,1:54], center = FALSE, scale. = FALSE)
summary(pca2)