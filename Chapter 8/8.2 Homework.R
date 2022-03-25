# The London Eye is a giant Ferris wheel on the banks of the River Thames in London. This popular tourist attraction offers stunning views and has appeared in movies and on television. A random sample of London Eye riders was obtained and the length of each ride was measured (in minutes). Assume  𝜎=5 min.
	# Find a  95% confidence interval for the mean amount of time spent on this ride. Round the values in your confidence interval to two decimal places.
		NumberofHours <- read.csv("/Users/michaeladams/Code/R/Chapter 8/chapter_08_csv/ex08-36eye.csv")	# Imports data
		NumberofHours <- NumberofHours$NumberofHours	# Turns table into data
		MeanHours <- mean(NumberofHours)	# mean
		StandardDeviationHours <- ((5 / 60) / sqrt(length(NumberofHours)))	# standard deviation, original sd given in minutes so divide by 60 for hours
		1 - ((1 - 0.95)/2)	# z-score probability, gives us 0.975. look at z-table; corresponds to 1.96
		MarginOfErrorHours <- (1.96 * StandardDeviationHours)	# margin of error = z-score value * standard deviation
		low <- (MeanHours - MarginOfErrorHours)	# low interval
		high <- (MeanHours + MarginOfErrorHours)	# high interval
		low * 60	# print minutes
		high * 60	# print minutes
	# Find a  99% confidence interval for the mean amount of time spent on this ride. Round the values in your confidence interval to two decimal places.
		1 - ((1 - 0.99)/2)	# z-score probability, gives us 0.995. look at z-table; corresponds to 2.575
		MarginOfErrorHours <- (2.575 * StandardDeviationHours)	# margin of error
		low <- (MeanHours - MarginOfErrorHours)	# low interval
		high <- (MeanHours + MarginOfErrorHours)	# high interval
		low * 60	# print minutes
		high * 60	# print minutes
	# Explain why the 99% confidence interval is wider than the 95% confidence interval.
		# A higher confidence level has a higher critical value, which makes the margin of error larger, and the confidence interval wider.

# A random sample of professional wrestlers was obtained, and the annual salary (in dollars) for each was recorded. The summary statistics were sample mean 𝑥⎯⎯⎯=57500 and the sample size 𝑛=18. Assume the distribution of annual salary is normal, with the population standard  deviation 𝜎=9500.
	# Find a 90% confidence interval for the true mean annual salary for all professional wrestlers.
		1 - ((1 - 0.90)/2)	# z-score probability, gives us 0.95
		qnorm(0.95)	# gives us 1.644854
		StandardDeviationWrestlers <- (9500 / sqrt(18))	# standard deviation
		MarginOfErrorWrestlers <- (1.644854 * StandardDeviationWrestlers)	# margin of error
		low <- (57500 - MarginOfErrorWrestlers)	# low interval
		high <- (57500 + MarginOfErrorWrestlers)	# high interval
		low	# prints low interval
		high	# prints high interval