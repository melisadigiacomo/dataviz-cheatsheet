# Pairplot

# Libraries
library(ggplot2)
library(GGally)
library(palmerpenguins)

# Read dataset Palmer Penguins
data = penguins
data <- na.omit(data)
df <- data[,c("species","bill_length_mm","bill_depth_mm", "flipper_length_mm")]

# Pairplot
ggpairs(df, columns = 2:4,
        aes(color = species, alpha = 0.5),
        lower = list(continuous = "smooth")) +
  scale_colour_manual(values = c("#2171b5", "#9ecae1", "#08306b")) +
  scale_fill_manual(values = c("#2171b5", "#9ecae1", "#08306b")) +
  theme_bw() +
  theme(text = element_text(size=16),
        axis.title = element_blank())