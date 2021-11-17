# Contour Plot

```r
# Contour plot

# Colors
cols <- hcl.colors(22, "Blues")

# Contour
filled.contour(volcano,
        col = cols)


# Library
library(plotly)

# Contour plot
fig <- plot_ly(z = ~volcano, type = "contour", 
               contours = list(showlabels = TRUE),
               colorscale="Cividis")
fig
``` 
![contourplot](contourplot.png)