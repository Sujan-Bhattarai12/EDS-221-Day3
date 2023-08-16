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

##For loops
height <- c(58, 61, 65, 72, 89, 94)
for (i in seq_along(height)){
  sqrt = height[i]^2
  print(sqrt)
}

## each height added with consecutive number
## but not for the last one
for (i in seq_along(height)){
   if (i < length(height)){
     add_1 = height[i]+ height[i+1]
     print(add_1)
   }
  else{ print(height[i])}
}

### write a for loop with a conditional(if)
### statement
library(palmerpenguins)

for(i in seq_along(penguins)){
  if(is.numeric(penguins[[i]])){
    mean = mean(penguins[[i]],  na.rm =TRUE)
    print(mean)
  }
}

##check the class of each columns
for (i in seq_along(penguins)){
  clas = class(penguins[[i]])
  print(clas)
}

##functional programming for iterations
apply (mtcars, 1, median)
tapply(mtcars$mpg, mtcars$hp, mean)

##apply across
library(dplyr)
penguins  %>%
  group_by(species) %>%
  summarise(across(where(is.numeric), fun=mean, na.rm=TRUE))

##Detecting string patterns
food <- "I love enchiladas"
if(str_detect(food, "burritos")){
  print("Yup")
}else
{print("Nope")}

