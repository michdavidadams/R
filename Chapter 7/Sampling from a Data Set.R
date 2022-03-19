# sampling from a single variable
rivers	# river length data set
sample(rivers, 30)	# 30 observations of rivers, without replacement
sample(rivers, 30, replace=T)	# 30 observations of rivers, with replacement

# sampling from an entire data set
trees	# tree variables data set
dim(trees)	# finds number of observations (31	3)
index <- sample(1:31, 10)	# 10 randomly selected observations from 1-31
trees[index, ]	# all columns of the selected trees from observation numbers
