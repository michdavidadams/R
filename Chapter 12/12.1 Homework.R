# Range of ankle motion is a contributing factor to falls among the elderly. Suppose a team of researchers is studying how compression hosiery, typical shoes, and medical shoes affect range of ankle motion. In particular, note the variables Barefoot and Footwear5. Barefoot represents a subject's range of ankle motion (in degrees) while barefoot, and Footwear5 represents their range of ankle motion (in degrees) while wearing compression hosiery and medical shoes.
	# Use this data and your preferred software to calculate the equation of the least-squares linear regression line to predict a subject's range of ankle motion while wearing compression hosiery and medical shoes, 𝑦̂, based on their range of ankle motion while barefoot, 𝑥. Round your coefficients to two decimal places of precision.
	ankles <- read.csv("/Users/michaeladams/Code/R/Chapter 12/ankles.csv")
	barefoot <- ankles$Barefoot
	footwear5 <- ankles$FW5
	lm(formula = footwear5 ~ barefoot, data = ankles)
	# 𝑦̂= 13.31+0.46x
	# A physical therapist determines that her patient Jan has a range of ankle motion of 7.26° while barefoot. Predict Jan's range of ankle motion while wearing compression hosiery and medical shoes, 𝑦̂. Round your answer to two decimal places.
	13.31+0.46(7.26)	# 𝑦̂= 16.65
	# Suppose Jan's actual range of ankle motion while wearing compression hosiery and medical shoes is 9.79°. Use her predicted range of ankle motion to calculate the residual associated with this value. Round your answer to two decimal places.
	16.65-9.79	# 𝑦̂= -6.86
	
# Suppose a simple linear regression model is used to explain the relationship between 𝑥 and 𝑦. A random sample of 𝑛=21 values for the independent variable was selected, and the corresponding values of the dependent variable were observed. Construct a scatter plot for these data and add the estimated regression line to it.
	# Estimate the true mean value of 𝑌 when 𝑥=62.
		xy <- read.csv("/Users/michaeladams/Code/R/Chapter 12/xy.csv")
		x <- xy$x
		y <- xy$y
		lm(formula = y ~ x, data = xy)
			# Coefficients:
			# (Intercept)            x  
				# 117.914       -1.517
	    # 𝑦̂= 117.914 - 1.517x
	    117.914 - (1.517 * 62)	# 23.9
	# Construct an ANOVA summary table, except for the 𝑝 value.
 		# Source of variation		Sum of squares		Degrees of freedom		Mean square		𝐹
 		# Regression				A					D						G				I
		# Error						B					E						H
		# Total						C					F
		anova(lm(formula = y ~ x, data = xy))
		# A=2290.8, B=2393.8, C=A+B=4684.6, D=1, E=19, F=20, G=2290.75, H=125.99, I=18.182