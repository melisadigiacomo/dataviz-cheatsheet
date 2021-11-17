# Percent Stacked Barplot

```r
# Percent Stacked Barplot

# Library
library(ggplot2)

#Set seed
set.seed(9465)

# create a dataset
animal <- c(rep("A" , 3) , rep("B" , 3) , rep("C" , 3) , rep("D" , 3) )
condition <- rep(c("cond1" , "cond2" , "cond3") , 4)
value <- abs(rnorm(12 , 0 , 15))
data <- data.frame(specie,condition,value)

# Percent stacked barplot
ggplot(data, aes(fill=condition, y=value, x=animal)) + 
  geom_bar(position="fill", stat="identity") + 
  scale_fill_manual(values=c("#2171b5", "#9ecae1", "#08306b")) +
  theme_classic() +
  theme(text = element_text(size=20),
        legend.position="none",
        axis.title = element_blank())
``` 
![percentstackedbarplot](percentstackedbarplot.png)