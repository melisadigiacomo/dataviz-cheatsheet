# Candlestick chart

# Library
library(ggplot2)
library(quantmod) 
library(plotly)

# Data from Apple Stock data
getSymbols("AAPL",src='yahoo')
df <- data.frame(Date=index(AAPL),coredata(AAPL))
df <- tail(df, 30)

# Colors
i <- list(line = list(color = '#2171b5'))
d <- list(line = list(color = '#000000'))

# Candlesitck chart
df %>% plot_ly(x = ~Date, type="candlestick",
               open = ~AAPL.Open, close = ~AAPL.Close,
               high = ~AAPL.High, low = ~AAPL.Low,
               increasing = i, decreasing = d)



# Data from Amazon Stock data
tesla<-getSymbols("TSLA", 
                  from = "2021-10-01", 
                  to = "2021-11-01",
                  periodicity = "daily",
                  auto.assign=FALSE)

# Candlesitck chart
chartSeries(tesla, name="Tesla Chart", theme="white")