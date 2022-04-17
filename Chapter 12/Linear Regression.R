# *** Linear Regression: Inference for the Slope ***
	lm.cars <- lm(dist ~ speed, data=cars);	lm.cars
	# If we want to test H0: B1=0 vs. HA: B1!=0
		summary(lm.cars)	# We have significant evidence that speed is a significant indicator for stopping distance
	# If we want a confidence interval for B1
		confint(lm.cars)
		# To see only see the slope paramter confidence interval
			confint(lm.cars, 'speed')
		# To see level of confidence interested in
			confint(lm.cars, 'speed', level=.90)
			
# *** Linear Regression: Confidence Intervals for the Mean ***
	lm.cars <- lm(dist ~ speed, data=cars);	lm.cars
	# To find predicted values
		predict(lm.cars, data.frame(speed=20))	# Stopping distance when traveling 20mph
	# To find prediction interval
		predict(lm.cars, data.frame(speed=20), interval='prediction')	# Gives 95% confidence interval
	# To find confidence interval
		predict(lm.cars, data.frame(speed=20), interval='confidence')	# Gives 95% confidence interval
	# To find confidence interval for more than 1 value
		predict(lm.cars, data.frame(speed=c(10,20,30)), interval='confidence')
	# To find 90% confidence interval
		predict(lm.cars, data.frame(speed=20), interval='confidence', level=.90)
	# Displaying prediction bands and confidence bands on a regression plot
		plot(dist~speed, data=cars)
		abline(lm.cars)
		range(cars$speed)
		x <- seq(4, 25, length=1000)
		# Confidence bands
			y <- predict(lm.cars, data.frame(speed=x), interval='confidence')
			lines(x, y[,2], col='red')	# lower confidence limits
			lines(x, y[,3], col='red')	# upper confidence limits
		# Prediction bands
			y <- predict(lm.cars, data.frame(speed=x), interval='prediction')
			lines(x, y[,2], col='blue')	# lower prediction limits
			lines(x, y[,3], col='blue')	# upper prediction limits