# Check PCA with normalized data
pca1 <- prcomp(data[,-55], center = TRUE, scale. = TRUE)
summary(pca1)

# Check PCA without normalizing
pca2 <- prcomp(data[,-55], center = FALSE, scale. = FALSE)
summary(pca2)