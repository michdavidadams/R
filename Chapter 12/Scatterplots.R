speed <- cars$speed
dist <- cars$dist

plot(speed, dist)	# plot(x-axis, y-axis)

# Change scale
plot(speed, dist, xlim=c(0,30))	# can also change y-axis scale using ylim

# Change symbol
plot(speed, dist, pch='M')	# can also use numbers for special symbols