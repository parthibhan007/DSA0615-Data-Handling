product <- c("A", "B", "C", "D", "E")
sales <- c(300, 450, 500, 350, 400)

barplot(sales, names.arg = product, 
        main = "Bar Plot: Sales by Product", 
        xlab = "Product", 
        ylab = "Sales", 
        col = "lightblue")
