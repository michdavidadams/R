#*****Chapter 5 R Demonstrations*****

#**Begin Problem 1 Section 5.2
	# Create a row vector
		x <- c(1, 2, 3, 4, 5, 6)	#The sample space for discrete random variable x
		x	#Print the contents stored in row vector x
		
	#Creating a function
		px <- x*(x+1)/112 #Function that generates the probability of X: P(X=x)
		px
		
	#Create a data frame containing x and px
		pdf <- data.frame(x, px)
		pdf
		
##Code for Part A
#Show that pdf is a valid probability distribution (It is visible at all p(x) are between 0 and 1.)
	sum(pdf$px)	#Calculates the sum of the probabilities in vector px to see if the sum is 1.
	
#Use attach () to make x and px visible variables so that $ notation is not needed.
	attach(pdf)
	sum(px)
	
##Code for Part D
	plot(x,px, type= "h", xlab= "X", ylab= "P(X=x)", main= "PDF of X")

	detach(pdf)

#**End Problem 1 Section 5.1

#*************************************

#**Begin Problem 1 Section 5.3
	#Create the data frame for the problem
		ch <- c(88, 89, 90, 91, 92, 93)	#Number of chips in a tube
		pch <- c(.03, .07, .3, .25, .2, .15)	#Probability of the number of chips
		sum(pch)	#Check that the sum of the probabilities is 1
		
		chips <- data.frame(ch, pch)	#Creates the data set
		attach(chips)	#Ch and Pch are now visible as variables
		chips	#Prints the contents

##Code for Part A
	mu_chips <- sum(ch*pch)	#Compute the expected value
	variance_chips <- sum(((ch-mu_chips)**2)*pch)	#Compute the variance (theoretical formula)
	var_chips <- sum((ch**2)*pch) - (mu_chips)**2	#Compute the variance (computational formula)
	sd_chips <- sqrt(var_chips)	#Compute the standard deviation
	round(cbind(mu_chips, variance_chips, var_chips, sd_chips), 4)	#Print the values, round to 4 decimal places
	#Use either of the variance formulas, not both.
	
##Code for Part B
	endpts1 <- mu_chips + c(-1, 1)*sd_chips	#Compute the interval within 1 sd of mean.
	endpts1	#Observe the endpoint to determine the rows to choose for the subset.
	setB <- chips[c(3:5), c(1:2)]	#Select rows (3:5) and columns (1:2) for the subset.
	setB	#Check that the correct rows and columns were selected.
	sum(setB$pch)	#Compute the probability.