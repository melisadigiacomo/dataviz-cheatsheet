# Bubble plot

# Library
library(ggplot2)
library(dplyr)
library(gapminder)

# Gapminder dataset
data <- gapminder %>% filter(year=="2007") %>% dplyr::select(-year)

# Bubble plot
data %>%
  arrange(desc(pop)) %>%
  mutate(country = factor(country, country)) %>%
  ggplot(aes(x=gdpPercap, y=lifeExp, size=pop, color=continent)) +
  geom_point(alpha=0.7) + guides(colour = guide_legend(override.aes = list(size=5)), size = FALSE) +
  scale_size(range = c(1, 50)) +
  scale_colour_manual(values = c("#2171b5", "#9ecae1", "#08306b", "#6baed6", "#4292c6", "#c6dbef")) +
  theme_classic() +
  theme(text = element_text(size=20),
        axis.title = element_blank())