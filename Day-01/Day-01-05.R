company <- c("A", "B", "C", "D")
market_share <- c(20, 30, 25, 25)

pie(market_share, labels = company, 
    main = "Pie Chart: Market Share by Company", 
    col = c("red", "blue", "green", "purple"))
