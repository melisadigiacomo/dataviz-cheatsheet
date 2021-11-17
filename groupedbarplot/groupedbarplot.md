# Grouped Barplot

```r
# Grouped barplot

# Library
library(ggplot2)

# Seed
set.seed(4457)

# create a dataset
animal <- c(rep("A" , 3) , rep("B" , 3) , rep("C" , 3) , rep("D" , 3) )
condition <- rep(c("cond1" , "cond2" , "cond3") , 4)
value <- abs(rnorm(12 , 0 , 15))
data <- data.frame(animal,condition,value)

# Grouped barplot
ggplot(data, aes(fill=condition, y=value, x=animal)) + 
  geom_bar(position="dodge", stat="identity") + 
  scale_fill_manual(values=c("#2171b5", "#9ecae1", "#08306b")) +
  theme_classic() +
  theme(text = element_text(size=20),
        legend.position="none",
        axis.title = element_blank())
``` 
![groupedbarplot](groupedbarplot.png)