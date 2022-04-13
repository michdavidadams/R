# Suppose that Sarah is an analyst for family-style dining restaurant industry. When she was in college, one of her professors had claimed that the number of tables attended by a single server in a six-hour shift had a mean of 23 and a standard deviation of 6.0 tables per shift. She decides to conduct a one-sample 𝑧-test to see if the mean number of tables attended by a server in a six-hour shift is different from 23. In order to simplify her test, she assumes that her professor's standard deviation of 6.0 is valid.
# She collects data from a simple random sample of 105 servers at family-style dining restaurants. The results are summarized below.
	# Test of 𝜇=23 vs. 𝜇≠23The assumed standard deviation=6.0𝑛105Mean21.2SE mean0.586𝑧−3.074
	# Test of μ=23 vs. μ≠23
	# The assumed standard deviation =6.0
	# n		Mean	SE mean		z
	# 105	21.2	0.586		−3.074 
	# Using the software your professor requires, determine the 𝑃-value for this test. Give your answer as a decimal, precise to at least four decimal places.
		2 * pnorm(-3.074, lower.tail=TRUE)	# gives 0.0021
		
# Suppose that ACT scores in a particular state are normally distributed with a mean of 21.5 points with a standard deviation of 4.7 points. A student at Wright High School thinks the mean ACT score of seniors at her school is less than 21.5, but she is willing to assume that the distribution of scores in her school is normal with a standard deviation of 𝜎=4.7 points, the same as in the general population.
# She randomly surveys 105 seniors and calculates the mean ACT score in the sample to be 20.2 points. The output of the survey is summarized below, where the value of the one-sample 𝑧-statistic is 2.834 standard deviations below the mean.
	# Test of μ=21.5 vs μ<21.5
	# The assumed standard deviation =4.7
	# N=105, Mean=20.2, SE Mean = 0.459, Z=-2.834
	# Use software to determine the 𝑃-value of the 𝑧-statistic. Give your answer as a decimal precise to at least four decimal places.
		pnorm(-2.834, lower.tail=TRUE)	# gives 0.0023