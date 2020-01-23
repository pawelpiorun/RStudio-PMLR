pca1 <- prcomp(data[,-55], center = TRUE, scale. = TRUE)
summary(pca1)
pca2 <- prcomp(data[,-55], center = FALSE, scale. = FALSE)
summary(pca2)