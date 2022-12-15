# Rank chart

# Library
library(ggplot2)

# Data
place <- c("ARG", "FRA", "AUS", 
           "ARG", "FRA", "AUS",
           "ARG", "FRA", "AUS",
           "ARG", "FRA", "AUS")
ranking <- c(4, 2, 2,
             3, 1, 4,
             2, 3, 1,
             1, 4, 3)
group <- c("Phone", "Phone", "Phone",
           "Notebook", "Notebook", "Notebook", 
           "Tablet", "Tablet", "Tablet",
           "TV", "TV", "TV")

df <- data.frame(place = place,
                 ranking = ranking,
                 group = group)

# Plot 
ggplot(df, aes(x = place, y = ranking, group = group)) +
  geom_line(aes(color = group), size = 2) +
  geom_point(aes(color = group), size = 4) +
  scale_color_manual(values = c("#08306b", "#2171b5", "#6baed6", "#c6dbef")) +
  scale_y_reverse(breaks = 1:nrow(df)) +
  xlab("") + ylab("") +
  theme_classic() +
  theme(legend.position = "bottom")