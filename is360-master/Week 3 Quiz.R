##Week 3 Quiz
## Luis Hernandez

##1) Loop calculates 12 factorial
n = 12
nfact = 1
for (i in 1:12) {
  nfact = nfact * i
}
print("#1. Write a loop that calculates 12-factorial.")
print (nfact)

##2) Final Balance
rate = 0.0324 
balance = 1500
years = 6
periods = years * 12 # number of months
for (i in 1:periods) {
  balance = balance * ( 1 + rate /12 )
}

print("#2. Use a loop to calculate the final balance, rounded to the nearest cent, in an account that earns 3.24% interest compounded monthly after six years if the original balance is $1,500.")
print (balance)

##3) 
vector = seq(1,20, by=3)
>vector
[1]  1  4  7 10 13 16 19
>sum(vector)
70

##4)
total = 0
x = 2
for (i in 1:10) {
  total = total + x^i
}

print ("#4. Use a for loop to calculate for the summation for value x=2")
print (total)

##5)
total = 0
x = 2
i = 0
while (i<10) {
  i = i + 1
  total = total + x^i
}

print ("#5. Use a while loop to accomplish the same task as in the previous exercise.")
print (total)

##6)
i = c(1:10)
total = sum(x^i)
print ("#6. Solve the problem from the previous two exercises without using a loop.")
print(total)

##7)
vector = seq(20,50, by=5)
>vector
[1] 20 25 30 35 40 45 50

##8)
word = "example"
n = 10
word_vec = rep(word,n)

print ("#8. Show how to create a character vector of length 10 with the same word")
print (word_vec)

##9)
a = 10
b = 5
c = -2
print ("#9. Show how to take a trio of input numbers a, b, and c and implement the quadratic equation.")
print(quadraticEq(a,b,c))

---------------------------------------------------------
Solution: 
> quadraticequ3numbers <- function(a,b,c)
+ { 
+     a <- readline(prompt="Insert first number ")
+     a <- as.integer(a)
+     
+     b <- readline(prompt="Insert second number: ")
+     b <- as.integer(b)
+     
+     c <- readline(prompt="Insert third number: ")
+     c <- as.integer(c)
+     
+     quadraticEQ = (-b + c(-1, 1) * sqrt(b^2 - 4 * a * c))/(2 * a)
+     
+     return(quadraticEQ)
+ }
------------------------------------------------------------------
> quadraticequ3numbers()
Insert first number 10
Insert second number: 5
Insert third number: -2
[1] -0.7623475  0.2623475

##10)
calc_mean = function(vec) {
  total = sum(vec)
  n = length(vec)
  return (total/n)
}
vec = c(1:20)

print("#10. Write a function that takes a numeric vector and calculates the mean of the observations in the vector.")
print(calc_mean(vec))


##12) Greatest common divisor
gcd <- function(a,b) ifelse (b==0, a, gcd(b, a %% b)) 
>gcd(10,20)
10



