year <- c(2010, 2011, 2012, 2013, 2014)
population <- c(1000, 1020, 1040, 1060, 1080)

plot(year, population, type = "o", 
     main = "Line Plot: Year vs Population", 
     xlab = "Year", 
     ylab = "Population (millions)", 
     col = "green", 
     pch = 19, 
     lty = 1)
