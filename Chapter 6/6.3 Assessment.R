# *** Question 1 ***
  # sample mean
    mean(paths$width_feet)
  # sample standard deviation
    sd(paths$width_feet)

# *** Question 2 ***
  # mean & standard deviation
    pathsmean <- mean(paths$width_feet)
    pathssd <- sd(paths$width_feet)
  # sample intervals (mean -+ k*sd)
    intervals <- c(paste("(", pathsmean - pathssd, ",", pathsmean + pathssd, ")", sep=""), paste("(", pathsmean - 2*pathssd, ",", pathsmean + 2*pathssd, ")", sep=""), paste("(", pathsmean - 3*pathssd, ",", pathsmean + 3*pathssd,")", sep=""))
    intervals

# *** Question 3 ***
  # frequency of observations
    pathsfrequency <- c(sum(paths$width_feet > pathsmean - pathssd & paths$width_feet < pathsmean + pathssd), sum(paths$width_feet > pathsmean - 2*pathssd & paths$width_feet < pathsmean + 2*pathssd), sum(paths$width_feet > pathsmean - 3*pathssd & paths$width_feet < pathsmean + 3*pathssd))
  # proportions for intervals
    pathsproportion <- round(pathsfrequency / nrow(paths), 2)
  # backwards empirical table
    paths_backward_empirical_table <- data.frame(intervals, pathsfrequency, pathsproportion)
    print(paths_backward_empirical_table) # Non-normal, because the proportion of the observations in the first interval differ significantly from the proportion specified by the Empirical Rule.
    
# *** Question 4 ***
    # stem-and-leaf plot
    stem(golf$roundtime_hours, scale=3)
    # ratio IQR/s
    golfratio <- (IQR(golf$roundtime_hours) / sd(golf$roundtime_hours))
    golfratio
    # normal probability plot
    qqnorm(golf$roundtime_hours, main="Normal Quantile Plot of Golf Roundtime Hours", xlab="x", ylab="z", pch=20)	# Normal Q-Q plot with solid dot as marker
    qqline(golf$roundtime_hours)	# Plot line for Q-Q plot
