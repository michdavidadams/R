# 50 students from population of mean height of 66 inches and standard deviation of 3 inches
rnorm(50, 66, 3)

# Discrete distribution
# Number of observations, number of trials, probability of success
rbinom(100, size=5, p=.7)
# New object of sample
rbinom(100, size=5, p=.7) -> sample
# Mean of sample
mean(sample)

# *** What distributions are available? ***
?Distributions