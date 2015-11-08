##Week 6 Assignment

## for this assingment I choose the data called Cardiac Data for Domestic Dog, This data frame contains the following columns:
#mvo: Cardiac Oxygen Consumption
#lvp:Left Ventricular Pressure
##after importing the dataset
## and naming the variables dogs

> dogs <- read.csv("C:/Users/Administrador/Desktop/dogs.csv")
>   View(dogs)
> dogs
X mvo lvp
1  78  32
2  92  33
3 116  45
4  90  30
5 106  38
6  78  24
7  99  44

require(dplyr)
require(tidyr)
require(ggplot2)

##scatterplot
barplot(t(as.matrix(dogs)), beside = TRUE)

##histogram
hist(as.matrix(dogs))

##boxplot
boxplot(dogs)


##Do the graphics provide insight into any relationships in the data?
#-Yes they do, as we can see from the 3 plots we got, we can note that the cardiac the dogs that have higher cardiac oxygen comsumption(mvo) tend to have also greater left ventricular pressure(lvp) than other set of dogs wuth different mvo.