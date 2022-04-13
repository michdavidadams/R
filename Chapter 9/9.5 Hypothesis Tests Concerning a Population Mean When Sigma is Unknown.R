# Suppose that Vera wants to test the hypothesis that women make less money than men doing the same job. According to the Bureau of Labor Statistics (BLS), the median weekly earnings for men in the professional and related occupation sector in 2015 was $1343. Vera collected median weekly earnings data for women in 2015 from a random subset of 19 positions in the professional and related occupation sector. The following is the sample data.
	# $1325, $683, $924, $1144, $1448, $604, $1522, $728, $1170, $971, $1082, $1811, $633, $1533, $722, $918, $917, $1125, $1026
# Vera assumes that the women's median weekly earnings data is normally distributed, so she decides to perform a t-test at a significance level of α = 0.05 to test the null hypothesis, 𝐻0:𝜇=1343 against the alternative hypothesis, 𝐻1:𝜇<1343, where 𝜇 is the population mean.
# If the requirements for performing a t-test have not been met, only answer the final question. Otherwise, answer all five of the following questions.
	money <- c(1325, 683, 924, 1144, 1448, 604, 1522, 728, 1170, 971, 1082, 1811, 633, 1533, 722, 918, 917, 1125, 1026)
	# First, compute the mean, xbar, of Vera's sample. Report your answer with two decimals of precision.
		xbar <- mean(money)	# 1067.68
	# Then, compute the sample standard deviation, s. Report your answer with two decimals of precision.
		s <- sd(money)	# 339.09
	# Next, compute the t-statistic of the test. Report your answer with four decimals of precision.
		t <- (xbar-1343)/(s/sqrt(19))	# -3.5391
	# Then, use software to calculate the 𝑃-value for the test. Report your answer with four decimals of precision.
		p_value <- pt(t, 18)	# 0.0012
	# Finally, use the words and descriptions below to state the decision and conclusion of Vera's test.
		# Versa *should make the* decision *to reject* the *null hypothesis*. The conclusion is that *there is sufficient evidence that* the median salary of women in the professional and related occupation sector *is less than $1343*.