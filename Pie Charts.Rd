# Exam 1 grades
Grade <- c("A","B","C","D","F")
Count <- c(20, 13, 10, 5, 2)
Exam1 <- c(Grade, Count)

# Make pie chart
pie(Count)

# Make pie chart with labels
pie(Count, labels=Grade)

# Make pie chart with percentages
pie(Count, labels=Count/sum(Count))

# Make pie chart with letter grade and frequency count
my.label <- paste(Grade, "\n", Count)
pie(Count, labels=my.label)