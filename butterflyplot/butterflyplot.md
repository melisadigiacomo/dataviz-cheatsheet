# Butterfly plot

```r
# Butterfly plot

# Library
library(ggplot2)

# Read the dataset
email_campaign_funnel <- read.csv("https://raw.githubusercontent.com/selva86/datasets/master/email_campaign_funnel.csv")

# X Axis Breaks and Labels 
brks <- seq(-15000000, 15000000, 5000000)
lbls = paste0(as.character(c(seq(15, 0, -5), seq(5, 15, 5))), "m")

# Butterfly plot
ggplot(email_campaign_funnel, aes(x = Stage, y = Users, fill = Gender)) +   
  geom_bar(stat = "identity", width = .6) +
  scale_y_continuous(breaks = brks,
                     labels = lbls) + 
  coord_flip() +
  theme_minimal() +
  theme(plot.title = element_text(hjust = .5), 
        axis.ticks = element_blank()) +   # Centre plot title
  scale_fill_manual(values=c("#2171b5", "#9ecae1")) 
``` 
![butterflyplot](butterflyplot.png)