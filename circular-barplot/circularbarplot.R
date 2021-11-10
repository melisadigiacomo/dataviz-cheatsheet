# Circular Barplot

# Library
library(tidyverse)

# Set seed
set.seed(1235)

# Create dataset
data <- data.frame(
  id=seq(1,20),
  individual= c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J",
                "K", "M", "N", "O", "P", "Q", "R", "S", "T", "U"),
  value=sample(seq(10,150), 20, replace=T)
)

head(data)

# Circular Barplot
ggplot(data, aes(x=as.factor(id), y=value)) +
  geom_bar(stat="identity", fill="#2171b5") +
  # Limits: the negative value controls the size of the inner circle,
  # the positive one is useful to add size over each bar
  ylim(-50,170) +
  theme_minimal() +
  theme(axis.text = element_blank(),
        axis.title = element_blank(),
        plot.margin = unit(rep(0,4), "cm")) +
  # Coordinate polar instead of cartesian
  coord_polar(start = 0)