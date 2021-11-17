# Piechart

```r
#Piechart

# Library
library(ggplot2)

# Create Data
data <- data.frame(
  variable=LETTERS[1:4],
  value=c(13,7,3,21))

# Basic piechart
ggplot(data, aes(x="", y=value, fill=variable)) +
  geom_bar(stat="identity", width=1, color="white") +
  scale_fill_manual(values = c("#2171b5", "#9ecae1", "#08306b", "#6baed6")) +
  coord_polar("y", start=0) +
  theme_void() + 
  theme(legend.position="none")
``` 
![piechart](piechart.png)