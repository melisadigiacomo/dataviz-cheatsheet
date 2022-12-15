# Parliament plot

# Libraries
library(ggparliament)
library(ggplot2)

# create some dummy data
df <- data.frame(party = c("A", "B", "C", "D", "E"),
                 seats = c(140, 156, 200, 252, 345))

# Plot type = semicircle
df_semicircle <- parliament_data(election_data = df,
                                 type = "semicircle",
                                 parl_rows = 15,
                                 party_seats = df$seats)

ggplot(df_semicircle, aes(x = x, y = y, colour = party)) +
  geom_parliament_seats() + 
  scale_colour_manual(values=c("#08306b", "#2171b5", "#6baed6", "#9ecae1", "#c6dbef")) +
  theme_ggparliament()

# Plot type = circle
df_circle <- parliament_data(election_data = df,
                             type = "circle",
                             parl_rows = 10,
                             party_seats = df$seats)

ggplot(df_circle, aes(x = x, y = y, colour = party)) +
  geom_parliament_seats() + 
  scale_colour_manual(values=c("#08306b", "#2171b5", "#6baed6", "#9ecae1", "#c6dbef")) +
  theme_ggparliament()