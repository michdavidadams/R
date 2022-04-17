# Correlation coefficient, r
	cor(speed, dist)	# 0.81, high correlation
	cor(car.weight, mileage)	# -0.97
	# correlation of variables with missing values
	cor(height, weight, use='complete')	# 0.997
	# correlations for an entire data set
		cor(cars)	# correlation matrix appears
		cor(Exams)	# huge correlation matrix
		round(cor(Exams), 2)	# smaller correlation matrix, round to 2 decimal places