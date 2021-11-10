# Violin plot

# Libraries
library(palmerpenguins)
library(ggpubr)
library(ggplot2)

# Seed
set.seed(2021)

## Read dataset Palmer Penguins
data = penguins
data <- na.omit(data)

# Violin plot
ggviolin(data, x = "species", y = "bill_length_mm", color = "#2171b5", add = "boxplot", 
         add.params = list(color = "black", fill = "white"), fill= "#2171b5",
         lwd=1.5, shape = "species") +
  scale_y_continuous(limits = c(20, 60)) +
  theme_classic() +
  theme(text = element_text(size=20),
        legend.position="none",
        axis.text.x = element_blank(),
        axis.title = element_blank())