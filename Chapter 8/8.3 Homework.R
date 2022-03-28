# Scientists often use mice to study human disease and physiology. Parker et al. (2016) studied over 1000 newborn mice in order to better understand the genetic loci involved in many human diseases. As part of this study, the scientists snipped up to 5mm from the end of each mouse's tail for the purpose of DNA collection. The scientists weighed each mouse immediately after snipping its tail. The provided data set lists the weights of the mice (in grams) after snipping.
# Suppose the researchers wish to determine a range of plausible values for the weights of newborn mice with recently snipped tails.
# Use software to construct a 95% t-confidence interval for the mean weight of newborn mice with snipped tails. Give your answer as an interval of the form (lower, upper) rounded to two decimal places.
	# Already imported weights csv
	n <- length(weights$id)	# sample size
	xbar <- mean(weights$bw0)	# sample mean
	s <- sd(weights$bw0)	# sample standard deviation
	margin <- qt(0.975,df=n-1)*s/sqrt(n)	# calculate margin of error
	# calculate bounds
		low <- xbar - margin
		high <- xbar + margin
		round(low, digits=2)
		round(high, digits = 2)
		# Confidence interval: (25.21, 25.56)
		# The researchers are 95% confident that the true population mean weight of all newborn mice with snipped tails is between the upper and lower limits of the confidence interval.

# A recent study indicated that Americans are keeping their cars longer. One reason may be vehicle quality. However, older vehicles do not include all of the current safety features. A random sample of new‑ and used‑car owners was obtained, and the length of ownership (in months) was recorded for each.
	# Find a  99% confidence interval for the true mean time for which people keep a new car. Report your answer as an interval in the form (lower limit, upper limit). Give the limits to two decimal places. 
		# Imported CSV to car
		n <- length(car$NewOwnershipLength_.mo.)	# sample size
		xbar <- mean(car$NewOwnershipLength_.mo.)	# sample mean
		s <- sd(car$NewOwnershipLength_.mo. )	# sample standard deviation
		margin <- qt(0.995,df=n-1)*s/sqrt(n)	# calculate margin of error
		# calculate bounds
			low <- xbar - margin
			high <- xbar + margin
			round(low, digits=2)
			round(high, digits = 2)
			# 99% confidence interval: (62.31, 97.03)
	# Find a  99% confidence interval for the true mean time for which people keep a used car. Report your answer as an interval in the form (lower limit, upper limit). Give the limits to two decimal places.
		# Data contains NA values, so need to remove those
			is.na_remove <- car$UsedOwnershipLength_.mo.[!is.na(car$UsedOwnershipLength_.mo.)]	# removes NA values
			UsedCar <- is.na_remove	# adds non-NA values to new value
		n <- length(UsedCar)	# sample size
		xbar <- mean(UsedCar)	# sample mean
		s <- sd(UsedCar)	# sample standard deviation
		margin <- qt(0.995,df=n-1)*s/sqrt(n)	# calculate margin of error
		# calculate bounds
			low <- xbar - margin
			high <- xbar + margin
			round(low, digits=2)
			round(high, digits = 2)
			# 99% confidence interval: (47.70, 74.08)
	#  Do you think new‑car owners and used‑car owners keep their cars for different lengths of times? Complete the sentence to form the correct conclusion.
		# There *is no* evidence that new-car owners and used-car owners keep their cars for different lengths of time because the interval of plausible values for mean new-car ownership length *includes* plausible values for mean used-car ownership length.

# In 2018, the United States decided to freeze the vehicle emissions standards as of 2021. Up until this time, the automobile industry had been required to reduce emissions with each new model year. A random sample of 2019 model automobiles was obtained, and the greenhouse gas (GHG) emissions were measured for each (in grams/mile). Assume the distribution of GHG emissions is normal.
	# Find a 95% confidence interval for the true mean vehicle GHG emissions for the 2019 model year. Report your answer as an interval in the form (lower limit, upper limit). Give the limits to two decimal places.
		# data imported as emissions
		emissions <- emissions$Emissions_.g.mi.
		n <- length(emissions)	# sample size
		xbar <- mean(emissions)	# sample mean
		s <- sd(emissions)	# sample standard deviation
		margin <- qt(0.975,df=n-1)*s/sqrt(n)	# calculate margin of error
		# calculate bounds
			low <- xbar - margin
			high <- xbar + margin
			round(low, digits=2)
			round(high, digits = 2)
		# 95% confidence interval: (256.33, 276.95)
	# Suppose the mean industry target is  255 g/mi. If the 95% confidence interval for the true mean vehicle emissions is (256.33,276.95), is there any evidence to suggest that the automobile industry has not met this goal? Complete the sentence to form the correct conclusion.
		# There *is* evidence to suggest that the automobile industry has not met this goal because the mean industry target of 255 g/mi *is not* in the confidence interval.

# The planetary boundary layer (PBL) is the lowest layer of the troposphere; its characteristics are influenced by contact with the ground. Wind speed, temperature, and moisture in the PBL all affect weather patterns around the globe. A random sample of days was obtained and the height of the PBL (in meters) above the Great Basin Desert was measured using weather radar. Assume the underlying distribution of PBL heights is normal.
	# Find a 95% confidence interval for the true mean height of the PBL above the Great Basin Desert. Round to two decimal places.
		# data imported as pbl
		pbl <- pbl$Height_.m.
		n <- length(pbl)	# sample size
		xbar <- mean(pbl)	# sample mean
		s <- sd(pbl)	# sample standard deviation
		margin <- qt(0.975,df=n-1)*s/sqrt(n)	# calculate margin of error
		# calculate bounds
			low <- xbar - margin
			high <- xbar + margin
			round(low, digits=2)
			round(high, digits = 2)
		# confidence interval: (676.57, 780.99)
	# Is there any evidence to suggest that the true mean height of the PBL above the Great Basin Desert is different from 700m? Justify your answer.
		# There is *no evidence* to suggest that the mean height is different from 700m. The confidence interval *captures* the value 700 so it is *plausible* as the true mean height of the PBL.