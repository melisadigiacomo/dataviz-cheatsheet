# Radar Chart

# Library
library(fmsb)

# Set seed
set.seed(2021)

# Create data
data <- as.data.frame(matrix(sample(2:20, 10, replace=T), ncol=10))
colnames(data) <- c("A" , "B" , "C" , "D" , "E", "F" , "G" , "H", "I", "J")

# Add 2 lines to the dataframe: the max and min of each topic to show on the plot
data <- rbind(rep(20,10) , rep(0,10) , data)

# The default radar chart 
radarchart(data, axistype=1, 
           # Polygon
           pcol= "black", pfcol= rgb(0.1, 0.4, 0.8, alpha = 0.7), plwd=2, 
           # Grid
           cglcol="black", cglty=3, axislabcol="black", caxislabels=seq(0,20,5))