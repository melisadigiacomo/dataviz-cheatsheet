# Pareto chart

# Dataset
data <- data.frame(
  var=c("A", "B", "C", "D"),  
  value=c(13, 37, 2, 25),
  count=c(0.38, 1.24, 1.33, 3.58))
ratio <- max(data$value)/max(data$count)

# Pareto chart
ggplot(data) +
  geom_bar(aes(x=var, y=value),stat="identity", fill = "#2171b5") +
  geom_line(aes(x=var, y=count*ratio),stat="identity", group = 1, size=1.2) +
  geom_point(aes(x=var, y=count*ratio)) +
  scale_y_continuous("value", sec.axis = sec_axis(~ . / ratio, name = "ratio")) +
  theme_classic() +
  theme(text = element_text(size=20),
        legend.position="none",
        axis.title = element_blank())