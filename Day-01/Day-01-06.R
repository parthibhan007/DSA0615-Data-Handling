class_A <- c(85, 90, 78, 92)
class_B <- c(88, 76, 80, 84)

boxplot(class_A, class_B, 
        names = c("Class A", "Class B"), 
        main = "Box Plot: Exam Scores by Class", 
        col = c("lightblue", "lightgreen"))
