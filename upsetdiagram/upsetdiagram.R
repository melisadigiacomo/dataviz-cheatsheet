## Upset diagram

# Libraries
library(UpSetR)
library(ggplot2)

# Movies dataset
movies <- read.csv(system.file("extdata", "movies.csv", package = "UpSetR"), header = T, sep = ";")

#Upset diagram
upset(movies, sets = c("Drama", "Comedy", "Romance"), main.bar.color = "black",
     queries = list(list(query = intersects, params = list("Drama"), color = "#2171b5", active = T)), 
     mainbar.y.label = "Movies", sets.x.label = "Total movies by genre",
     text.scale = c(1.3, 1.3))