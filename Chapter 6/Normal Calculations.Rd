# Find probability given variable value
# Assume heights of a population are normally distributed with mean of 68 inches, standard deviation 2.5 inches

# Probability of randomly selecting someone less than 65 inches tall?
pnorm(65, 68, 2.5)

# Probability of randomly selecting someone taller than 65 inches?
# Upper-tail probability
pnorm(65, 68, 2.5, lower.tail=F)

# Finding variable values when given a probability
# What height represents 90th percentile of population?
qnorm(.90, 68, 2.5)
# What height represents tallest 25 percent of population?
qnorm(.25, 68, 2.5, lower.tail=F)