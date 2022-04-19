# Many factors determine the outcome in NASCAR races, including car design and mechanics, the weather, and the efficiency of the pit crew. A recent study suggests that for NASCAR racers, starting position is strongly related to finishing position. A random sample of NASCAR racers was obtained, and the average starting position (x) and average finish position (y) for the 2018 season were recorded.
	# Find the sample correlation coefficient r.
		nascar <- read.csv("/Users/michaeladams/Code/R/Chapter 12/nascar.csv")	# Load data set
		start <- nascar$AveStart	# Add average start column to variable
		finish <- nascar$AveFinish	# Add average finish column to variable
		cor(start, finish)
		# r = 0.9104
	# Is the value of r consistent with your interpretation of the scatter plot?
		# Yes, because the value of r is positive and close to 1.
	# Find the estimated regression line in the form 𝑦=𝛽̂0+𝛽̂1𝑥.
		lm.nascar <- lm(finish ~ start, data=nascar)
		lm.nascar
			# Coefficients:
			# (Intercept)        start  
      			# 3.335        0.855 
      	# 𝛽̂1= 0.86, 𝛽̂0= 3.34
     # Complete the ANOVA table. Enter the value of the 𝐹 statistic.
     	anova(lm.nascar)
     	# F statistic: 116.24
     # What would the average starting position have to be for the average finishing position to be 11?
     	# 11 = 3.34 + .86x	-> 8.91 = x
     	# average starting position: 8.91
    
# The rate of evaporation at the surface of the water in a swimming pool (kg/hr) is believed to be related to the air velocity (m/sec) or the relative humidity (measured as a percentage). A random sample of swimming pools was obtained, and the evaporation rate, air velocity, and relative humidity were recorded for each.
	# Find the estimated regression line in the form 𝑦=𝛽̂0+𝛽̂1𝑥 for evaporation rate (y) and air velocity (x).
		evaporation <- read.csv("/Users/michaeladams/Code/R/Chapter 12/evaporation.csv")	# Load data
		evaporationRate <- evaporation$Evaporation
		airVelocity <- evaporation$AirVelocity
		lm.evaporation <- lm(evaporationRate ~ airVelocity, data=evaporation);	lm.evaporation
			# Coefficients:
			# (Intercept)  airVelocity  
				# 0.1719       0.1157
		# 𝛽̂1=0.12, 𝛽̂0= 0.17
	# Find the estimated regression line in the from 𝑦=𝛽̂0+𝛽̂1𝑥 for evaporation rate (y) and relative humidity (x).
		relativeHumidity <- evaporation$RelativeHumidity
		lm.evaporation <- lm(evaporationRate ~ relativeHumidity, data=evaporation);	lm.evaporation
 			# Coefficients:
     		# (Intercept)  relativeHumidity  
        		# 0.089530          0.008659
        # 𝛽̂1=0.01, 𝛽̂0= 0.09
	# Complete the ANOVA table for evaporation rate (𝑦) and air velocity (𝑥). Then complete the ANOVA table for evaporation rate (𝑦) and relative humidity (𝑥). Suppose the significance level 𝛼=0.05.
		# Which of the two models do you think is better?
			# The evaporation rate and air velocity model is better because there is a significant linear relationship in this model. There is no significant linear relationship in the evaporation rate and relative humidity model.
 