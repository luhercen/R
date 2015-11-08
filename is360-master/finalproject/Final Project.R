##Project 3
##Loading packages, I choose the data airquality for this project, I later added chracters variables

require(dplyr)
require(tidyr)
require(ggplot2)


airquality1 <- airquality

airquality1

str(airquality1)
View(airquality1)

##Taking the data from airquality data and adding for columns

airquality1["RealFeel"]<- NA

airquality1["WindchillTemp"] <- NA

t<- airquality1$Temp

v<- airquality1$Wind

rf<- airquality1$RealFeel

##Creating new variables

airquality1$WindchillTemp<- 35.74 + (0.6215*t) - 35.75*(v^0.16) + (0.4275*t)*(v^0.16)

airquality1$RealFeel<- airquality1$WindchillTemp+(0.348*airquality1$Ozone)-(0.70*airquality1$Wind)+0.70*(airquality1$Solar.R/(airquality1$Wind+10))-4.25


## creating a mothly report of realefeel data

airquality1 %>%
  select(Day,Month,RealFeel)  %>%
  filter(!is.na(RealFeel))

monthly<- airquality1 %>%
  select(Day,Month,RealFeel)  %>%
  filter(!is.na(RealFeel))

View(monthly)

##plotting

ggplot(airquality1, aes(x=RealFeel)) +
  geom_bar(width =.3)

##another plot 

barplot(t(as.matrix(monthly)), main="MONTHLY REAL FEEL",beside=TRUE)

##full colored plot
##loading library


##to view full data from airquality1
summary(airquality1)


##this will save the file on our file folder

write.csv(airquality1, "airquality1.csv")

targetFrame = read.table("airquality1.csv")
-------------------------------------------------
  
##First before exporting the data airquality 1 to a csv we omit the NA values 
##from all the columns:

data <- na.omit(airquality1, with.na)

View(data)

## now exporting the data to a csv

write.csv(data, "data.csv")
targetFrame = read.table("data.csv")

View(data)


-----------------------------------------
  
To have another table with data on Celsius:
  
#function to convert airquality data from Farenheit to celsius:
Celsius <- (airquality1 -32)*(5/9)

View(Celsius)

##omitting NAs on celius data
Celsiusnonas <- na.omit(Celsius, with.na, row.names=FALSE)

View(Celsiusnonas)

RoundCelsius <- round(Celsiusnonas)

View(RoundCelsius)

## now exporting Celsius clean and rounded data to a csv called DatainCelsius

write.csv(RoundCelsius, "dataincelsius.csv")
targetFrame = read.table("dataincelsius.csv")

View(RoundCelsius)

## now exporting the data to a csv


----------------------------
#installing the data set WeatherData.
  
install.packages('weatherData')

library(weatherData)

##Seeing all data from manhattan all columns.
all = getWeatherForDate("MANHATTAN", "2014-05-05", "2014-10-05", opt_all_columns = TRUE)

View(all)

Manhattandata = getWeatherForDate("MANHATTAN", "2014-05-05", "2014-10-05")


View(Manhattandata)

## taking NAs out

Manhattan <- na.omit(Manhattandata, with.na)

View(Manhattan)

## now exporting the data to a csv

write.csv(Manhattan, "Manhattan.csv")
targetFrame = read.table("Manhattan.csv")

View(Manhattan)


##list of stations codes
http://weather.rap.ucar.edu/surface/stations.txt



#View(weatherData)::
       

dfw_wx <- getWeatherForYear("DFW", 2013)

View(dfw_wx)

----------------------------------------------
##to add the tables on the R markdown report:
  
write.table(airquality1,sep=",",file="airquality1.csv")
targetFrame = read.table("airquality1.csv",sep=",")


write.table(data,sep=",",file="data.csv")
targetFrame = read.table("data.csv",sep=",")

write.table(RoundCelsius,sep=",",file="RoundCelsius.csv")
targetFrame = read.table("RoundCelsius.csv",sep=",")

write.table(Manhattan,sep=",",file="Manhattan.csv")
targetFrame = read.table("Manhattan.csv",sep=",")
  
Source:
http://ram-n.github.io/weatherData/
