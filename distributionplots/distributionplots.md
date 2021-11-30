# Distribution plots

```r
# Distribution plots

# Libraries
library(ggplot2)
library(ggridges)
library(Stat2Data)

# Set seed
set.seed(2948)

# Hawks dataset
data("Hawks")

# Distribution density plots
ggplot(Hawks, aes(x = Tail, y = Species)) +
  geom_density_ridges(aes(fill = Species)) +
  scale_fill_manual(values=c("#2171b5", "#9ecae1", "#08306b")) +
  theme_minimal() +
  theme(text = element_text(size=20),
        legend.position="none",
        axis.title = element_blank())


# Add marginal rug
ggplot(Hawks, aes(x = Tail, y = Species, fill = Species)) +
  scale_fill_manual(values=c("#2171b5", "#9ecae1", "#08306b")) +
  geom_density_ridges(
    jittered_points = TRUE, scale = 0.7,
    position = position_points_jitter(width = 0.05, height = 0),
    point_shape = '|', point_size = 5, point_alpha = 1, alpha = 1) +
  theme_minimal() +
  theme(text = element_text(size=20),
        legend.position="none",
        axis.title = element_blank())


# Vertical quantile lines
ggplot(Hawks, aes(x = Tail, y = Species, fill = Species)) +
  geom_density_ridges(
    jittered_points = TRUE, quantile_lines = TRUE, scale = 0.5, alpha = 0.7,
    vline_size = 1.2, vline_color = "blue",
    point_size = 0.4, point_alpha = 1,
    position = position_raincloud(adjust_vlines = TRUE)) +
  scale_fill_manual(values=c("#2171b5", "#9ecae1", "#08306b")) +
  theme_minimal() +
  theme(text = element_text(size=20),
        legend.position="none",
        axis.title = element_blank())
``` 
![distributionplots](distributionplots.png)