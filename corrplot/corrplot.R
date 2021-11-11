# Corrplot

# Libraries
library(ggplot2)
library(corrplot)

# Load movies dataset from GitHub
movies <- read.csv("https://raw.githubusercontent.com/fivethirtyeight/data/master/fandango/fandango_score_comparison.csv", header=TRUE)
df <- movies[1:10,c("FILM","RottenTomatoes","RottenTomatoes_User", "Metacritic", "Metacritic_User","IMDB", "Fandango_Stars")]
rownames(df) <- df$FILM
df <- df[,!colnames(df)%in%c("FILM")] 


# Correlation matrix
M = cor(df)

# Corrplot
corrplot(M, type = 'upper', method = 'shade', tl.col = 'black',
         addCoef.col = 'white', cl.pos = 'n',
         order = 'hclust', addrect = 2,
         diag = FALSE)