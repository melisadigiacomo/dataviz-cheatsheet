# Chord plot

```r
# Chord plot

# Libraries
library(circlize)

# Set seed
set.seed(2948)

# Create an adjacency matrix: a list of connections between 3 origin nodes and 4 destination nodes:
numbers <- sample(c(1:100), 12, replace = T)
data <- matrix(numbers, ncol=3)
rownames(data) <- paste0("D-", seq(1,4))
colnames(data) <- paste0("O-", seq(1,3))

# Chord plot
chordDiagram(data, transparency = 0.1, grid.col = c('#c6dbef','#9ecae1','#6baed6','#4292c6','#2171b5','#08519c','#08306b'))
``` 
![chordplot](chordplot.png)