# Heatmap

# The mtcars dataset
data <- as.matrix(mtcars)

# Heatmap
heatmap(data, Colv = NA, Rowv = NA, scale="column",
        col= colorRampPalette(brewer.pal(9, "Blues"))(25))
heatmap(data, scale="column", col= colorRampPalette(brewer.pal(9, "Blues"))(25))