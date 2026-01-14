## This is the lab for week 2 
## Add working R code in between the questions
## The functions refer to the sections in https://rspatial.org/intr/

## Functions

## 1) Write a function 'f' that behaves like this:
## > f('Jim')
## [1] "hello Jim, how are you?"
##HINT: you will need to use the paste() function within your new function
f <- function(name) {
  x <- paste0("hello ", name,", how are you?") #include the order/sequence of what you want for the sentence/paste0 removes the spaces
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
  sum(dd) #now need to get the sum of the squares
}
d1 <- c(1,5,2,4,6,2,4,5)
sumofsquares(d1)
## Flow Control

## 4) Write a for loop that adds the numbers 1 to 10
##HINT: you will need one variable that loops through the numbers 1 to 10 and one that keeps count through each loop
#i is the input: It tells the loop what to work with right now.
#j is the output: It remembers the cumulative result of the entire process.
#Pro-Tip for Students: If you ever get confused about what a loop is doing, use print() statements inside the loop. 
#For example: print(paste("i is", i, "and j is now", j)). This lets them "see" the variables changing in real-time.

j <- 0 #This is like a physical piggy bank. You keep adding coins (i) into the bank (j) until you reach the end of the line.
for (i in 1:10) { #i is a temporary place holder, a worker persay moving through the list
  print(i)
  j <- j + i
}
j

## 5) Write a for loop that adds the odd numbers between 1 and 10 
j <- 0
s <- seq(1,9,2) #i suggest using seq for this one, identify start, finish, and intervales and define that sequence
s
for (i in s){
  j <- j + i 
}
j
