# Pareto chart

# Library
library(ggplot2)

# Dataset
data <- data.frame(var=c('A', 'B', 'C', 'D'),
                   count=c(40, 57, 50, 82),
                   stringsAsFactors = FALSE)
data <- data[order(data[,1], decreasing=TRUE), ]
data$var <- factor(data$var, levels=data$var)
data$cumulative <- cumsum(data$count)

# Pareto chart
ggplot(data) +
  geom_bar(aes(x=var, y=count),stat="identity", fill = "#2171b5") +
  geom_line(aes(x=var, y=cumulative),stat="identity", group = 1, size=1.2) +
  geom_point(aes(x=var, y=cumulative)) +
  scale_y_continuous("count", sec.axis = sec_axis(~ . * 1, name = "cumulative")) +
  theme_classic() +
  theme(text = element_text(size=20),
        legend.position="none",
        axis.title = element_blank())


## 

# Library
library(qcc)

# Dataset
data1 <- data.frame(var=c('A', 'B', 'C', 'D'),
                 count=c(40, 57, 50, 82))

#Pareto Chart
pareto.chart(data1$count, main = '',
             ylab = "Frequency", ylab2 = "Cumulative Percentage",
             cumperc = seq(0, 100, by = 25), plot = TRUE)