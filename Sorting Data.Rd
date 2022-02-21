#Length of 141 major rivers of North America in miles
rivers

# *** Sorting ***
# ** If data missing, will exclude automatically. To show, sort(Exam2, na.last=T) **
# Sort river values smallest to largest
sort(rivers)
# Sort river values largest to smallest
sort(rivers, decreasing=T)

# ** Sort an entire data set **
# Eruptions and waiting times for Old Faithful geyser
eruptions <- c(3.600, 1.800, 3.333, 2.283, 4.533, 2.883, 4.700, 3.600, 1.950, 4.350)
waiting <- c(79, 54, 74, 62, 85, 55, 88, 85, 51, 85)
faithful10 <- data.frame(eruptions, waiting)
# Sort by eruption time observation numbers. $ to access inside data set
index <- order(faithful10$eruptions)
index
faithful10[index, ]

# *** Order ***
# Order rivers smallest or largest. Displays as index numbers (observation numbers)
order(rivers)
# Show river length
rivers[68]