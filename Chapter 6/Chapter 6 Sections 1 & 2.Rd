# ***** Solving a Linear Equation in R *****
# A linear expression is a polynomial of degree 1
# Rewrite linear equation in form mx=c
# R syntax is solve(m,c)

# ***** Constructing & Plotting a Piecewise Function *****
# R syntax with respect to X: function(x){(interval 1)*(expression 1)+(interval 2)*(expression 2)+(interval N)*(expression N)}

# ***** Evaluate a Definite Integral *****
# R syntax: integrate(function-object, lower=a, upper=b)
# -Inf is negative infinity, Inf is positive infinity

# ***** Continuous Uniform Distribution *****
# For a continuous random variable X that follows a uniform distribution with parameters a and b, where a < b, the notation is X~U(a,b)
# Continuous uniform function in R requires X, a, and b as inputs
# Probability density function f(x): dunif(x, min=a, max=b)
# Cumulative distribution function F(X)=P(X<=x): punif(x, min=a, max=b)

# ***** Normal Distributions *****
# A continuous random variable X that follows a normal distribution is defined by the parameters m (mu is the population mean) and o (sigma is the population standard deviation) and is denoted X~N(m,o)
# The CDF normal distribution function in R requires X, m, and o as inputs
# The cumulative distribution function, F(X)=P(X<=x): pnorm(x,m,o)
# The inverse CDF normal distribution calculates the percentile. Requires the proportion, m, and o as inputs. qnorm(p, m, o)