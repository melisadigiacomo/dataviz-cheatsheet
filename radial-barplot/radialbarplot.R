# Radial barplot

# Library 
library(ggplot2)

# Dataset
Category <- c("A", "B", "C", "D")
Percent <- c(81, 77, 70, 50)
df <- data.frame(Category,Percent)

# Create some "empty" entries
len <- 4
df2 <- data.frame(Category = letters[1:len], Percent = rep(0, len), Category2 = rep("", len))
df$Category2 <- paste0(df$Category," - ",df$Percent,"%")

# Append number to category
df <- rbind(df, df2)

# Set factor to plot in descending order 
df$Category <-
  factor(df$Category, 
         levels=rev(df$Category))

# Radial barplot
ggplot(df, aes(x = Category, y = Percent,
               fill = Category2)) + 
  geom_bar(width = 0.9, stat="identity") + 
  coord_polar(theta = "y") +
  xlab("") + ylab("") +
  ylim(c(0,100)) +
  ggtitle("") +
  geom_text(data = df, hjust = 1, size = 5,
            aes(x = Category, y = 0, label = Category2)) +
  scale_fill_manual(values=c("#c6dbef","#08306b", "#2171b5", "#6baed6", "#9ecae1")) +
  theme_minimal() +
  theme(legend.position = "none",
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        axis.line = element_blank(),
        axis.text.y = element_blank(),
        axis.text.x = element_blank(),
        axis.ticks = element_blank())