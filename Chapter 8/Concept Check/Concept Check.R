AbsorptionRate <- c(98.23, 95.29, 98.52, 94.29, 97.12, 89.58, 93.80, 95.07, 96.81, 89.71, 95.88, 96.93)

hist(AbsorptionRate)	# histogram
boxplot(AbsorptionRate)	# boxplot
# normal probability plot
	qqnorm(AbsorptionRate)	
	qqline(AbsorptionRate)

# 93% confidence interval
	z <- qnorm(1-((1-0.93)/2))	# gives us z-score
	mean <- mean(AbsorptionRate)
	n <- length(AbsorptionRate)
	sd <- (sd(AbsorptionRate)/sqrt(n))
	errormargin <- (z*sd)	# calculate margin of error
	# calculate bounds
		low <- mean - errormargin
		high <- mean + errormargin
		low	# 93.57055
		high	# 96.63445
	# interpretation: values for true mean are between 93.57077 and 96.63445. Mean falls in interval