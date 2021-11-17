# Strip Chart

# Seed
set.seed(2356)

## Read built-in dataset airquality
data = airquality

## Strip Chart
stripchart(Temp~Month,
           data=airquality,
           ylab="Temperature",
           col="#2171b5",
           group.names=c("May","June","July","August","September"),
           vertical=TRUE,
           pch=16)