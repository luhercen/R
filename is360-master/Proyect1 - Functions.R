# Project 1

##new submission

#Inputs a numeric value to give out min,max,mean,standar deviation,quartiles.
project1 <- function(x){
  min <- min(x, na.rm = T)
  max <- max(x, na.rm = T)
  mean <- mean(x, na.rm=T)
  stdev <- sd(x, na.rm = T)
  quartiles <- quantile(x,probs = c(0.25,0.5,0.75), na.rm = T)
  countna <- vectorinput(x)
  
  c(mean = mean, max = max, min = min, firstquartile = quartiles[1], median = quartiles[2], thirdquartile= quartiles[3], stdev = stdev, nacount =countna)
}

##example
project1(35)
mean               max               min firstquartile.25% 
35                35                35                35 
median.50% thirdquartile.75%             stdev           nacount 
35                35                NA                 0 