#Create the data frame for the problem
		overdraft <- c(10, 12, 15, 20, 25, 27, 30, 35, 38)	#Number of overdraft
		poverdraft <- c(.02, .06, .08, .1, .16, .28, .15, .07, .08)	#Probability of overdraft
		sum(pch)	#Check that the sum of the probabilities is 1
		
		overdraft <- data.frame(overdraft, poverdraft)	#Creates the data set
		attach(overdraft)	#overdraft and poverdraft are now visible as variables
		overdraft	#Prints the contents

	mu_overdraft <- sum(overdraft*poverdraft)	#Compute the expected value
	variance_overdraft <- sum(((overdraft-mu_overdraft)**2)*poverdraft)	#Compute the variance (theoretical formula)
	sd_overdraft <- sqrt(variance_overdraft)	#Compute the standard deviation
	round(cbind(mu_overdraft, variance_overdraft, sd_overdraft), 4)	#Print the values, round to 4 decimal places
	
	endpts1 <- mu_overdraft + c(-1, 1)*sd_overdraft	#Compute the interval within 1 sd of mean.
	endpts1	#Observe the endpoint to determine the rows to choose for the subset.
	setB <- overdraft[c(3:5), c(1:2)]	#Select rows (3:5) and columns (1:2) for the subset.
	setB	#Check that the correct rows and columns were selected.
	sum(setB$poverdraft)	#Compute the probability.
