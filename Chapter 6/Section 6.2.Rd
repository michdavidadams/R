# ***** Problem 3 *****
	# Part A - pnorm(x, mu, sigma) is the cdf
		round(1 - pnorm(36, 35, 0.52), 4)
		
	# Part B
		round(pnorm(33.5, 35, 0.52), 4)
		
	# Part C
		pnorm(35, 35, 0.52) - pnorm(33, 35, 0.52)
		
	# Part D
		qnorm(0.25, 35, 0.52)
		qnorm(0.75, 35, 0.52)