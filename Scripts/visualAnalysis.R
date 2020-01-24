#Add box plots in packages of 2x3, so 9 times 6 = 54 attributes
for (i in 1:9)
{
  # Prepare plot space
  par(mfrow=c(2,3))
  for (j in 1:6)
  {
    # Show plot
    k = (i-1)*6+j
    boxplot(data[[k]] ~ Class, data = data, main=names(data)[k])
  }
}; rm(i); rm(j); rm(k)

# Show heatmap of correlations
# The darker the square, the more correlated it is.
heatmap(cor(data[,-55]), Rowv=NA, Colv=NA)