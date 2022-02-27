# * Data sets *
# Tunnel data set
colnames(tunnel) = c("sec")	# Relabels column name
head(tunnel)	# Print 1st 5 rows
attach(tunnel)	# Define column names as variables
# Oxyben data set
colnames(oxyben) = c("ppt")
head(oxyben)
attach(oxyben)

# ***** Problem 1 - Tunnel Data Set
# * Code for the 4 methods to assess normality
	# 1) Construct graphs of sample distribution
		# Tunnel histogram, box plot, stem plot
			hist(sec, main= "Distribution of Tunnel Travel Time", xlab="Seconds", ylab="Frequency")	# Histogram of seconds
			boxplot(sec, data= tunnel, main= "Distribution of Tunnel Travel Time")	# Box plot of seconds
			stem(sec)	# Stem plot of seconds
			
	# 2) Compute the IQR/s ratio for the sample
		# IQR/s ratio for tunnel
			tunnel_iqr <- IQR(sec)
			tunnel_sd <- round(sd(sec), 1)
			tunnel_ratio <- (tunnel_iqr / tunnel_sd)
			round(tunnel_ratio, 1)
		
	# 3) Construct sample normal probability plot
		# Tunnel - normal probability plot
			qqnorm(sec, main="Normal Quantile Plot of Tunnel Travel Time", xlab="Theoretical Quantiles", ylab="Sample Quantiles", pch=20)	# Normal Q-Q plot with solid dot as marker
			qqline(sec)	# Plot line for Q-Q plot
			
	# 4) Apply the Backwards Empirical Rule to the sample
		# Tunnel - Backwards Empirical Rule Table
			tunnel_mean <- round(mean(sec), 1)
			# tunnel_sd was defined in the IQR/s ratio code block
		# Code for sample intervals (mean -+ k*sd)
			Tunnel_Interval <- c(paste("(", tunnel_mean - tunnel_sd, ",", tunnel_mean + tunnel_sd, ")", sep=""), paste("(", tunnel_mean - 2*tunnel_sd, ",", tunnel_mean + 2*tunnel_sd, ")", sep=""), paste("(", tunnel_mean - 3*tunnel_sd, ",", tunnel_mean + 3*tunnel_sd,")", sep=""))
		# Code for count of observations in each interval
			Tunnel_Frequency <- c(sum(sec > tunnel_mean - tunnel_sd & sec < tunnel_mean + tunnel_sd), sum(sec > tunnel_mean - 2*tunnel_sd & sec < tunnel_mean + 2*tunnel_sd), sum(sec > tunnel_mean - 3*tunnel_sd & sec < tunnel_mean + 3*tunnel_sd))
		# Code for proportion of observations in each interval
			Tunnel_Proportion <- round(Tunnel_Frequency / nrow(tunnel), 2)
		# Code to print empirical rule table
			tunnel_backward_empirical_table <- data.frame(Tunnel_Interval, Tunnel_Frequency, Tunnel_Proportion)
			print(tunnel_backward_empirical_table)