## This is the lab for week 2 
## Add working R code in between the questions
## The functions refer to the sections in https://rspatial.org/intr/

## Functions

## 1) Write a function 'f' that behaves like this:
## > f('Jim')
## [1] "hello Jim, how are you?"
##HINT: you will need to use the paste() function within your new function
f <- function(name) {
  x <- paste("hello", name,", how are you?") #include the order/sequence of what you want for the sentence
  return(x)
}
f('Jim') #make sure you identify the name

## 2) Write a function 'sumOfSquares' that behaves like this:


 #d <- c(1,5,2,4,6,2,4,5)
#sumOfSquares(d)
## [1] 21.875

# To compute the "sum of squares", subtract the mean value of all numbers from each number. 
# Square these numbers and sum them
# (bonus: make a variant that can handle NAs)
sumofsquares <- function(x, na.rm = FALSE) {
  d <- mean(x, na.rm = FALSE) #need to identify the mean first, if you want NAs to be handled you can add , na.rm=false
  dd <- (x-d)^2 #need to subtract from the mean and get the square value
  ss <- mean(dd, na.rm = FALSE) #now need to get the sum of the squares
  return(ss)
}
d1 <- c(1,5,2,4,6,2,4,5)
sumofsquares(d1)
## Flow Control

## 4) Write a for loop that adds the numbers 1 to 10
##HINT: you will need one variable that loops through the numbers 1 to 10 and one that keeps count through each loop
j <- 0
for (i in 1:10) {
  print(i)
  j <- j + i
}
j

## 5) Write a for loop that adds the odd numbers between 1 and 10 
j <- 0
s <- seq(1,9,2)
s
for (i in s){
  j <- j + i
}
j
