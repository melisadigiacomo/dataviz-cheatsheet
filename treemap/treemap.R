# Treemap

# Libraries
library(treemapify)
library(ggplot2)

# Set the seed
set.seed(244)

# Dataset
category <- c(rep("Group 1",3),rep("Group 2",4),rep("Group 3",2))
subcategory <- paste("Subgroup" , c(1,2,3,1,2,3,4,1,2), sep=" ")
value <- c(10,4,30,8,12,6,2,3,20)
data <- data.frame(category,subcategory,value)
head(data, 9)

# Treemap
ggplot(data, aes(area = value, fill = category, label = paste(subcategory, value, sep = "\n"), subgroup=category)) +
  geom_treemap() +
  geom_treemap_subgroup_border(colour="white") +
  geom_treemap_text(fontface = "italic",
                    colour = "white",
                    place = "centre",
                    grow = F,
                    reflow=T) +
  scale_fill_manual(values=c("#2171b5", "#3690c0", "#08306b"))


## Other treemap

# Libraries
library(treemapify)
library(ggplot2)
library(dplyr)
library(colorspace)
library(scales)

# Set the seed
set.seed(244)

# Dataset
SubG <- c(rep("SubG1", 4), rep("SubG2", 4), rep("SubG3", 4), rep("SubG4", 4)) # PL
value <- sample(seq(1:30), 16)
G <- rep(c("G1", "G2", "G3", "G4"), 4) # YEAR
df <- data.frame(SubG, G, value)
head(df, 9)

# One palette for each group
palette <- rep(c("PuBu", "Blues", "Blues 3", "Blues 2"), 4)

# Colors for each data point
# Scale the colors to the maximum value in each group
# 6 colors but use 4 to remove the lightest color
df2 <- mutate(df,
              palette = palette) %>%
  group_by(palette) %>%
  mutate(
    max_value = max(value),
    color = gradient_n_pal(sequential_hcl(6, palette = palette)[1:5])(value/max_value))

# Treemap
ggplot(df2, aes(area = value, fill = color, label=SubG, subgroup=G)) +
  geom_treemap() +
  geom_treemap_subgroup_border(colour="white") +
  geom_treemap_subgroup_text(place = "centre",
                             grow = T,
                             alpha = 0.5,
                             colour = "#FAFAFA",
                             min.size = 0) +
  geom_treemap_text(fontface = "italic",
                    colour = "black",
                    place = "centre",
                    grow = F,
                    reflow=T) +
  scale_fill_identity()