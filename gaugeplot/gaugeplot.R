# Gauge plot

# Libraries
library(ggplot2)
library(plotly)

# Gauge plot
fig <- plot_ly(
  type = "indicator",
  mode = "gauge+number+delta",
  value = 420,
  title = list(text = "KPI", font = list(size = 50)),
  delta = list(reference = 400, increasing = list(color = "#3690c0")),
  gauge = list(
    axis = list(range = list(NULL, 500), tickwidth = 1, tickcolor = "black"),
    bar = list(color = "#2171b5"),
    bgcolor = "white",
    borderwidth = 2,
    bordercolor = "black",
    steps = list(
      list(range = c(0, 200), color = "#d0d1e6"),
      list(range = c(200, 400), color = "#a6bddb")),
    threshold = list(
      line = list(color = "#3690c0", width = 4),
      thickness = 0.75,
      value = 450))) 


fig <- fig %>%
  layout(
    margin = list(l=20,r=30),
    font = list(color = "black", family = "Arial"))

fig