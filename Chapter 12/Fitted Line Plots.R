speed <- cars$speed
dist <- cars$dist

plot(speed, dist)
lm.cars <- lm(dist~speed, data=cars)
abline(lm.cars)	# draw line on top of scatter plot
abline(h=mean(dist), col='red')	# draw mean of stopping distance line
abline(v=mean(speed), col='blue')	# draw vertical line at mean of travelling speeds