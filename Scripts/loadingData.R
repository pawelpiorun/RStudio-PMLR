# Read data with first row as headers row
data <- read.table("divorce.csv", sep = ';', header = T)

# Show column names
colnames(data)

#Show data
head(data)

# Prepare output
data$Class <- as.factor(data$Class)
levels(data$Class) <- c("Divorced", "Not divorced")

# Show data
head(data)
summary(data$Class)