# Task 1
	# Enter data set into R
		x <- c(58,73,56,74,43,46,64,95,44,78,77,52,60,98,46,86,56,61,76,45)
		y <- c(200,201,201,203,202,199,199,211,200,203,201,200,200,226,202,205,202,201,203,201)
		DataSet <- data.frame("x"=x, "y"=y)
	# Complete the following tasks using α = 0.01 and provide your code in the space provided.
		# Generate a scatter plot with least squares regression line.
			plot(x,y)
			lm.DataSet <- lm(y~x, data=DataSet)
			abline(lm.DataSet)
		# Generate the ANOVA for a model utility test.
			anova(lm.DataSet)
		# Generate a hypothesis test and confidence interval for the regression coefficients. That is, generate the parameter estimates and their respective test statistics and confidence intervals.
			confint(lm.DataSet, level=0.99)
			                  	# 0.5 %   99.5 %
				# (Intercept) 175.67731946 198.8925
				# x           	0.06944561   0.4186
			# y = 0.4186x + 196.8925
		# Generate the correlation coefficient of a simple regression.
			cor(x,y)
				# [1] 0.688116
		# Generate a data set of the residuals.
			model <- lm.DataSet
		# Generate a histogram and normal probability plot of the residuals.
			ResidualModel <- resid(model)
			hist(ResidualModel)
			qqnorm(ResidualModel)
			qqline(ResidualModel)
		# Generate a residual plot with horizontal axis.
			FittedModel <- fitted(model)
			plot(FittedModel, ResidualModel)
			abline(0,0)
