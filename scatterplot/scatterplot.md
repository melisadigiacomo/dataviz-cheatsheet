# Scatterplot

```r
#Scatterplot

# load ggplot2
library(ggplot2)

## Read dataset Palmer Penguins
data = penguins
data <- na.omit(data)

# Scatterplot
ggplot(data, aes(x=body_mass_g, y=bill_length_mm, color=species)) + 
  scale_colour_manual(values = c("#2171b5", "#9ecae1", "#08306b")) +
  geom_point(size=6) +
  theme_classic() + 
  theme(text = element_text(size=20))
``` 
![scatterplot](scatterplot.png)