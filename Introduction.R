# Vectors of numbers
> height <- c(6, 4, 2, .5)

# Multiplies each item in row vector
> height * 2
[1] 12, 8, 4, 1

# Vectors of names
> name <- c("Michael","Skyler","Hawk", "Shelldon")

# Creates data frame set
> family <- data.frame(name, height)
> family
    name        height
1    Michael        6
2    Skyler        4
3    Hawk        2
4    Shelldon    .5

> family[2][1]
[1] "Skyler"

> family[3, ]
    name        height
3    Hawk        2

> family.name
[1] "Michael" "Skyler" "Hawk" "Shelldon"
