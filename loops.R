## loops in R

##simplest loop
countOneToTen <- list()

for(i in 1:10) {
  # code to be executed for each value of i
  countOneToTen[i] <- i
}

##while loop
count <- 1
while(count <= 10){
  count= count + 1
  return(count)
}

##when number is between 1500-2000 print all numbers with adding 100 on it

for (dollar in 1500:2000) {
  return(dollar*100)
}


calculate_factorial <- function(n){
  if(n==0 || n==1){
    return(1)
  }else {
    factorial= 1
    for(i in 2:n){
      factorial <- factorial*i
    }
    return(factorial)
  }
}

calculate_factorial(10)

factorial=1
n = 7
for( i in 1:n){
  factorial= factorial * i
}
print(factorial)

##test a new fibonaci sequence

limit = 10
prev = 1
curr = 2
sum = 0

while (curr <= limit){
  if  (curr %% 2 == 0){
    sum <- sum + curr
  }
  Next <- prev + curr
  prev <- curr
  curr <- Next
}

paste("Sum of even Fibonacci numbers up to", limit, "equals", sum)

##one more loop

housing_type = "single"
switch(housing_type,
       "single"= print("400"),
       "double"= print(500))


