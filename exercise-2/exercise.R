# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2) {
  difference <- abs(length(v1) - length(v2))
  return(paste("The difference in lengths is", difference))
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(c(1,2,3), c(4,5,6,7,8))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(v1, v2) {
  difference <- abs(length(v1) - length(v2))
  if (length(v1) > length(v2)) {
    return(paste("Your first vector is longer by", difference, "elements"))
  }
  else 
    return(paste("Your second vector is longer by", difference, "elements"))
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(c(1:100), c(1,2,3))

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeDifference <- function(v1, v2) {
  difference <- abs(length(v1) - length(v2))
  if (length(v1) > length(v2)) {
    name <- deparse(substitute(v1))
  }
  else {
    name <- deparse(substitute(v2))
  }
  return(paste(name, "is longer by", difference, "elements"))
}
DescribeDifference(c(1:100), c(1:50))