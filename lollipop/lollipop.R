# Lollipop Chart

# Library
library(ggplot2)

# Set seed
set.seed(2045)

# Create data
data <- data.frame(
  x=LETTERS[1:10],
  y=abs(rnorm(10))
)

# Lollipop chart
ggplot(data, aes(x=x, y=y)) +
  geom_segment( aes(x=x, xend=x, y=0, yend=y), color="black") +
  geom_point(color="#2171b5", size=6) +
  geom_hline(yintercept=0, size=1) +
  theme_bw() +
  theme(panel.grid.major.x = element_blank(),
        panel.border = element_blank(),
        axis.ticks.x = element_blank(),
        text = element_text(size=20)) +
  xlab("") +
  ylab("")