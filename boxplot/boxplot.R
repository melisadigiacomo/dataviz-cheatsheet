# Boxplot

# Libraries
library(palmerpenguins)
library(ggpubr)
library(ggplot2)

# Seed
set.seed(4021)

## Read dataset Palmer Penguins
data = penguins
data <- na.omit(data)

#Boxplot
ggboxplot(data, x = "species", y = "bill_length_mm", color = "#2171b5", 
          lwd=1.5, shape = "species") +
  theme_classic() +
  theme(text = element_text(size=20),
        legend.position="none",
        axis.text.x = element_blank(),
        axis.title = element_blank())
