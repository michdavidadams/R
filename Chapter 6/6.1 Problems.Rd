# ***** Problem 1 *****
	# Plot X~U(25,75); dunif(a,b) is the continuous uniform distribution with parameters a and b where a < b
		x <- seq(25, 75, length=100)	# Define the x-axis
		y <- dunif(x, min=25, max=75)	# Calculate the values of f(x)
		plot(x, y, type= "l", lwd=3, ylim=c(0, 0.025), col="blue", xlab="x", ylab="f(x)", main="Plot for X~U(25,75)")
		
		# Part A
			a <- punif(40, min=25, max=75) - punif(30, min=25, max=75)	# F(B) - F(A)
			a 
		
		# Part B
			rm(a)
			a <- 25
			b <- 75
			mu <- (a+b)/2
			var <- (b-a)^2 / 12
			sd <- sqrt(var)
			round(cbind(a, b, mu, var, sd), 1)
			
		# Part C
			lwr <- mu - 2*sd
			upr <- mu + 2*sd
			prb <- punif(lwr, min=25, max=75) + (1- punif(upr, min=25, max=75))
			round(cbind(lwr, upr, prb), 4)
		
		# Part D
			#F(X)= 0.02x - 0.5 = 0.60 is a polynomial of degree 1. We use solve() in the matrix where 0.02x=1.1
			solve(0.02, 1.1)
			
		# Part E
			both <- punif(40, min=25, max=75) - punif(30, min=25, max=75)
			round(both^2, 4)
			

# ***** Problem 2 *****
	# Code for the graph and defining the probability density function
		func <- function(x) {(x<10)*(0*x)+(10<=x & x < 20)*(0.005*x-0.05)+(20<=x & x < 30)*(0.05)+(30<=x & x < 40)*(-0.005*x+0.2)+(x>40)*(0*x)}	# Using + joins the discontinuities
		vectFunc <- Vectorize(func)
		plot(vectFunc, 0, 50, type="l", col="blue", ylab="", main="Probability Density Function, Problem 2")
		abline (v=0, h=0)
		
	# Part A
		integrate(func, lower=10, upper=40)	# Verify the total area under the curve is 1
		
	# Part C
		integrate(func, lower=27, upper=40)	# Compute P(X>27)
		
		
# ***** Problem 3 *****
	# Part A
		f3 <- function(x) {(0<=x & x<=5)*(-0.08*(x-5))}
		vectf3 <- Vectorize(f3)
		plot(vectf3, -.5, 5.5, type="l", col="blue", ylab="", main="Probability Density Function for Problem 3")
		integrate(f3, lower=0, upper=5)	# Verify the total area under the curve is 1
		
	# Part C
		# We found that F(c)= -0.04c^2 + 0.4c = 0.95 --> -0.04c^2 + 0.4c - 0.95 = 0
		# Code to solve quadratic equations
			# Quadratic equation: a*x^2 + b*x + x for real roots
				# Constants
					a <- -0.04
					b <- 0.4
					c <- -0.95
					
				# Determine the discriminant
					d <- b^2 - 4*a*c
					
				# Real number solutions
					s1 <- (-b + sqrt(d))/(2*a)
					s2 <- (-b - sqrt(d))/(2*a)
					print(s1, s2)
					
	# Part D
		# P(X>4)= 0.04 is from Part A
			p <- integrate(f3, lower=4, upper=5)
			
		# Y~Geom(0.04), determine P(X=4) where 4 is the number of failures for R code
			py <- dgeom(4, 0.04)
			round(py, 4)