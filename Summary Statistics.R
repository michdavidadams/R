# Calculate number of observations
length(waiting)

# Calculate minimum
min(waiting)
# Calculate maximum
max(waiting)

# *** Calculate measures of center ***
# Calculate mean
mean(waiting)
# Calculate median
median(waiting)

# *** Calculate measures of spread ***
# Calculate range (min & max)
range(waiting)
# Calculate standard deviation
sd(waiting)
# Calculate variance
var(waiting)
# Calculate Interquartile range
IQR(waiting)

# Display Five Number Summary
fivenum(waiting)
# Display all summary statistics with labels
summary(waiting)
# Works with data sets
summary(faithful)