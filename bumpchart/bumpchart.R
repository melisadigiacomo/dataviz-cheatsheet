# Bump chart

# A bump chart is a type of data visualization that shows the rankings of items in a dataset over time

# Libraries
library(tidyverse)
library(ggbump)

# Data
year <- rep(2019:2021, 4)
ranking <- c(4, 2, 2, 3, 1, 4, 2, 3, 1, 1, 4, 3)
group <- c("A", "A", "A",
         "B", "B", "B", 
         "C", "C", "C",
         "D", "D", "D")

df <- data.frame(year = year,
                 ranking = ranking,
                 group = group)

# Plot
ggplot(df, aes(x = year, y = ranking, color = group)) +
  geom_point(size = 6) +
  geom_bump(size = 1.5) +
  scale_color_manual(values = c("#08306b", "#2171b5", "#6baed6", "#c6dbef")) +
  scale_x_continuous(limits = c(2018.5, 2021.5), breaks = c(2019, 2020, 2021), expand = c(0, 0)) +
  geom_text(data = df %>% filter(year == min(year)),
            aes(x = year - 0.1, label = group),
            size = 5, hjust = 1) +
  geom_text(data = df %>% filter(year == max(year)),
            aes(x = year + 0.1, label = group),
            size = 5, hjust = 0) +
  xlab("") + ylab("") +
  theme_classic() +
  theme(legend.position = "none")