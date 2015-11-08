##HW2 is360
##luis hernandez centti
##question 1:
x<-c(1,2,3,4,5,6,7,8,9,10,10,11,12,13,14,15,16,17,18,18)
x

##question 2:
charx<-as.character(x)
charx

##question 3:
xFactors<-as.factor(charx)
xFactors

##question 4:
nlevels(xFactors)

##question 5:
x<-3 * x ^ 2 - 4 * x + 1
x

##question 6:
>list1 <-list(a=1,2,3,4,5, b=c(one,two))
list1$b{1}

##question 7:
> x<-10:1
> y<-4:5
> a<-c("h","f","b","c","r")
> testdf<-data.frame(x,y.,a)

##question 8:
test<-data.frame(numbers=2,02,2014,leters=a)
str(test)
test$numbers<-as.date(test$numbers)
test$leters<-as.character(test$leters)

str(test)
test$leters
str(test)

test1<-rbind(test1,test)
test1
str(test1)

##question9:
getwd()
hw360<-read.table(file="temperatures.csv",header=true,sep=",")

##question10:

theurl<-read.table(file=c:/lu/data/masurments.txt",header=true,sep=",")
measuremts<-read.table (file=theurl,header=true,sep=",")

##question11:

theurl<--"http://www.xxxxxx/asdada/question11.txt"
url <- read.table(file = url, header = FALSE, sep = "|")
