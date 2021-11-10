# Venn Diagram

# Libraries 
library(VennDiagram)

# Movies dataset
movies <- read.csv(system.file("extdata", "movies.csv", package = "UpSetR"), 
                   header = T, sep = ";")

# Selected genres to plot a venn diagram
movies1 <- transmute(movies,Movie = Name, Action, Comedy, Drama)

# Set the sets 
# In order to have easy names, we previously separate the sets.
Drama <- sum(movies1$Drama == 1)
Action <- sum(movies1$Action == 1)
Comedy <- sum(movies1$Comedy == 1)
DramaAction <- sum((movies1$Drama == 1) & (movies1$Action == 1))
DramaComedy <- sum((movies1$Drama == 1) & (movies1$Comedy == 1))
ActionComedy <- sum((movies1$Action == 1) & (movies1$Comedy == 1))
DramaActionComedy <- sum((movies1$Drama == 1) & (movies1$Action == 1) & (movies1$Comedy == 1))


# Venn Diagram
grid.newpage()
draw.triple.venn(area1 = Drama,
                 area2 = Comedy,
                 area3 = Action,
                 n12 = DramaComedy,
                 n23 = ActionComedy,
                 n13 = DramaAction,
                 n123 = DramaActionComedy,
                 fill = c("#2171b5", "#9ecae1", "#08306b"),
                 alpha = 0.65,
                 lty = 'blank',
                 category = c('Drama', 'Comedy', 'Action'),
                 cat.col = c("#2171b5", "#9ecae1", "#08306b"),
                 cat.cex = 2,
                 cex = 2)