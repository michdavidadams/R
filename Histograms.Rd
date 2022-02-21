# Create a histogram
hist(rivers)

# Change intervals/breakpoints (number of breaks is always 1 more than the number of intervals). Suggestion of breaks
hist(rivers, breaks=21)

# Change intervals/breakpoints, force breaks
hist(rivers, breaks=c(0,1000,2000,3000,4000))
# Change intervals/breakpoints, force breaks, less typing
hist(rivers, breaks=seq(0,4000,500))
# Another option for specific number of breakpoints. 6 intervals, 7 breakpoints
hist(rivers, breaks=seq(0,4000,length=7))