# Test H0: m=68 vs. HA: m<68.
# The heights are assumed Normal with sd=2.2. The sample of size 20 yielded an observed mean of 67
	xbar = 67
	n = 20
	sigma = 2.2
	mu = 68
	pnorm(xbar, mu, sigma/sqrt(n), lower.tail=T)	# find p-value using normal distribution. lower tail because m < 68. gives us 0.021; sufficient evidence to reject initial hypothesis.
	
# Test H0: m=68 vs. HA: m!=68.
	pnorm(xbar, mu, sigma/sqrt(n), lower.tail=T)*2	# because tail on left and right side

# When using raw data (data sets)
# Test H0: m=51 vs. HA: m!=51.
	xbar = mean(temps)
	n = length(temps)
	sigma = 1.2	# don't use sd(temps) for sigma bc that would be a sample standard deviation and we don't know that
	mu = 51
	pnorm(xbar, mu, sigma/sqrt(n), lower.tail=F)*2	# if we had selected lower.tail=T, would give a value greater than 1. Over 30% so do not have sufficient evidence to suggest that the avg yearly temperature is not equal to 51.