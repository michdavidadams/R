# 12 random integers from 1-100
sample.int(100, 12)

# 12 random integers from 1-100, repeating numbers
sample.int(100, 12, replace=T)

# 12 random numbers from 1-100, store in list
sample(1:100, 12) -> random12
sort(random12)	# sorts list

x <- seq(0, 10, by=.25)	# sequence of numbers
sample(x, 12)	# random numbers sample from those numbers