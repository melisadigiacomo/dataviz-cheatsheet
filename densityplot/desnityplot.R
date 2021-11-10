# Density plot

# Libraries
library(ggplot2)
library(dplyr)

# Load dataset prices from GitHub
data <- read.table("https://raw.githubusercontent.com/holtzy/data_to_viz/master/Example_dataset/1_OneNum.csv", header=TRUE)

# Density plot
data %>%
  filter(price<300) %>%
  ggplot(aes(x=price)) +
  geom_density(fill="#2171b5") +
  theme_classic() +
  theme(text = element_text(size=20),
        legend.position="none",
        axis.title = element_blank())