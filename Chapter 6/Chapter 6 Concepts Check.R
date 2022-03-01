# ***** Chapter 6 Concepts Check *****
  # *** Task 1 ***
    # Plot X~U(5.085,5.155); dunif(a,b) is the continuous uniform distribution with parameters a and b where a < b
      x <- seq(5.085, 5.155, length=100)	# Define the x-axis
      y <- dunif(x, min=5.085, max=5.155)	# Calculate the values of f(x)
      plot(x, y, type="l", lwd=3, col="blue", xlab="x", ylab="f(x)", main="Plot for X~U(5.085,5.155)") # Plots probability density function
    # Part B
      mean(x) # mean
      var(x) # variance
      sd(x) # standard deviation
    # Part D
      x <- seq(5.085, 5.155)
      y <- dunif(x, min=5.085, max=5.155)
      
  # *** Task 2 ***
    # Part A
    # Plot X~U(0.95,1.31); dunif(a,b) is the continuous uniform distribution with parameters a and b where a < b
      x <- seq(0.95, 1.31, length=100)	# Define the x-axis
      y <- dunif(x, min=0.95, max=1.31)	# Calculate the values of f(x)
      plot(x, y, type="l", lwd=3, col="blue", xlab="x", ylab="f(x)", main="Plot for X~U(0.95,1.31)") # Plots probability density function
    # Part B
      mean(x) # mean
      var(x) # variance
      sd(x) # standard deviation
    # Part D
      x <- seq(0.95, 1.31)
      y <- dunif(x, min=0.95, max=1.31)
      
  # *** Task 3 ***
      oxyben <- read.csv("/Users/michaeladams/Documents/School/Probability & Data Analysis/R/Chapter 6/data sets/ex06-94oxyben.csv")
    # Method 1
        hist(oxyben$oxybenzene_ppt, main="Sample Distribution of Oxybenzene", xlab="ppt")  # Histogram
         boxplot(oxyben$oxybenzene_ppt, data=oxyben, main= "Sample Distribution of Oxybenzene")	# Box plot of oxyben$oxybenzene_pptonds
      	stem(oxyben$oxybenzene_ppt)	# Stem plot
     # Method 2
     	IQR(oxyben$oxybenzene_ppt)	# Interquartile range
     	sd(oxyben$oxybenzene_ppt)	# Standard deviation
     # Method 3
     	qqnorm(oxyben$oxybenzene_ppt)	# Normal quantile (or probability) plot
     # Method 4
     	oxyben_mean <- round(mean(oxyben$oxybenzene_ppt), 1)	# Mean
     	oxyben_sd <- round(sd(oxyben$oxybenzene_ppt), 1)	# Standard Deviation
		Oxyben_Interval <- c(paste("(", oxyben_mean - oxyben_sd, ",", oxyben_mean + oxyben_sd, ")", sep=""), paste("(", oxyben_mean - 2* oxyben_sd, ",", oxyben_mean + 2* oxyben_sd, ")", sep=""), paste("(", oxyben_mean - 3* oxyben_sd, ",", oxyben_mean + 3* oxyben_sd,")", sep=""))	# Intervals
		Oxyben_Frequency <- c(sum(oxyben > oxyben_mean - oxyben_sd & oxyben < oxyben_mean + oxyben_sd), sum(oxyben > oxyben_mean - 2*oxyben_sd & oxyben < oxyben_mean + 2*oxyben_sd), sum(oxyben > oxyben_mean - 3*oxyben_sd & oxyben < oxyben_mean + 3*oxyben_sd))	# Frequencies
		Oxyben_Proportion <- round(Oxyben_Frequency / nrow(oxyben), 2)	# Proportions
		oxyben_backward_empirical_table <- data.frame(Oxyben_Interval, Oxyben_Frequency, Oxyben_Proportion)	# Creates table
		print(oxyben_backward_empirical_table)	# Prints table