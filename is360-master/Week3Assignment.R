##Week 3 assignment

##1) 
vector = seq(1,1000, by=3,7,11)

##new versionÑ
q1 <- function (){
  count = 0
  for (i in 1:1000){
    if(i %% 3 == 0 || i %% 7 == 0 || i %% 11 == 0){}
    else{
      count <- count + 1
    }
    
    
  }
  count
}

q1()

##2) number of missing values
missing_dat <- data.frame(v1=c(1,NA,0,1),v2=c("M","F",NA,"M"))
missing_dat

##3) 

df = mtcars # use a built in data frame within R 32 rows x 11 cols

# put in some random NaNs randomly (this is not part of assignment)
r = nrow(df)
c = ncol(df)
for (i in 1:c) {
   n = round(runif(1) * r) # number of randoms to introduce
   irand = round(runif(n) * r)
   df[irand,i] = NaN
}

df_num_missing = function(df) {
  
  # implementation using loop
  missing_vec = NULL
  c = ncol(df)
  for (i in 1:c) {
    col_name = colnames(df)[i]
    n_missing = num_missing(df[col_name])
    missing_vec[col_name] = n_missing
  }
  return (missing_vec)
  
}

print ("#3 function that gives named vector of number of missing values in each col")
print (df_num_missing(df))

print ("#3 non-loop non-function one line implementation")
print (colSums(is.na(df)))

##4)

##the minimum 
> min(number)
[1] 10
##the maximum
> max(number)
[1] 20

##the median
> median(number)
[1] 15.5

##the quantile
quantile(number)
0%   25%   50%   75%  100% 
10.00 13.25 15.50 17.75 20.00

##the Standard deviation
> sd(number)
[1] 3.204164

##number of missing values
> length(number)
[1] 10
> length(which(is.na(number)))
[1] 0
