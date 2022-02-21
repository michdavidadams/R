# Zoo
Animal <- c("Penguin", "Monkey", "Fish")
Count <- c(5, 7, 100)
Zoo <- data.frame(Animal, Count)

# Create barplot of count of animals
barplot(Count)

# Create barplot with Animal label
barplot(Count, names=Animal)

# Create barplot with horizontal Animal label
barplot(Count, names=Animal, las=1)

# Create barplot with vertical Animal label
barplot(Count, names=Animal, las=2)

# Create barplot with vertical Animal label, shrunken
barplot(Count, names=Animal, las=2, cex.names=.7)