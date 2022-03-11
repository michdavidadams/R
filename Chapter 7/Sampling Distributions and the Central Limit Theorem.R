# Length of river lengths
rivers
# Histogram of rivers
hist(rivers)	# Right-skewed, doesn't resemble a normal distribution

# Simulate the sample distribution of a sample mean
mean(sample(rivers, 10))	# 945.4
river.means <- vector()
for (i in 1:100) river.means[i] <- mean(sample(rivers, 10))
hist(river.means)	# Little bit of right-skewdness
for (i in 1:100) river.means[i] <- mean(sample(rivers, 75))
hist(river.means)	# Looks more normal

# Using Central Limit Theorem in Normal Calculations
# mean
mean(rivers)
# standard deviation
sd(rivers)
# standard deviation of sampling distribution
sd(rivers)/sqrt(75)	# standard deviation / sample size

# What is the probability that 75 randomly sampled rivers would have a mean length of less than 500 miles?
pnorm(500, mean(rivers), sd(rivers)/sqrt(75))