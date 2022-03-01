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
      oxyben <- 
    # Method 1
        hist(ex06.94oxyben$oxybenzene_ppt, main="Sample Distribution of Oxybenzene", xlab="ppt")  # Histogram
      