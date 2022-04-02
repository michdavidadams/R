# Volume of black cherry trees chopped down in cubic feet
Volume

# Create boxplot
boxplot(Volume) # Save as bitmap for best sharing
# Horizontal boxplot
boxplot(Volume, horizontal=T)
# Change boxplot width
boxplot(Volume, boxwex=1.5)
# Staples (end of whiskers) shrink, default .5
boxplot(Volume, boxwex=1.5, staplewex=.2)
# Range, default 1.5
boxplot(Volume, range=0)