# Alluvial plot

#install.packages("alluvial")

# Library 
library(alluvial)

# To create an alluvial plot, you will need to have your data in a specific format. 
# The data should be a matrix or data frame with columns representing the different
# groups and rows representing the different flow values.

# Create some dummy data
data <- data.frame(
  region = c("Region1", "Region2", "Region3"),
  fruit = c("Apples", "Apples", "Apples", "Oranges", "Oranges", "Oranges", "Bananas", "Bananas", "Bananas"),
  freq = c(10, 5, 7, 20, 15, 12, 30, 25, 28)
)

# Alluvial plot
data1 <- aggregate( freq ~ region + fruit, data=data, sum)
alluvial( data1[,1:2], freq=data1$freq, xw=0.0, alpha=0.8,
          gap.width=0.1, col = c("#2171b5", "#9ecae1", "#08306b"), border="white")