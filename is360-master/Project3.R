##Project 3
##Loading packages, I choose the data airquality for this project, I later added chracters variables


require(dplyr)
require(tidyr)
require(ggplot2)
data(airquality)


str(airquality)
View(airquality)

##Taking the data from airquality data and adding for columns

airquality["RealFeel"]<- NA

airquality["WindchillTemp"] <- NA

t<- airquality$Temp

v<- airquality$Wind

rf<- airquality$RealFeel

##Creating new variables

airquality$WindchillTemp<- 35.74 + (0.6215*t) - 35.75*(v^0.16) + (0.4275*t)*(v^0.16)

airquality$RealFeel<- airquality$WindchillTemp+(0.348*airquality$Ozone)-(0.70*airquality$Wind)+0.70*(airquality$Solar.R/(airquality$Wind+10))-4.25


## creating a mothly report of realefeel data

airquality %>%
  select(Day,Month,RealFeel)  %>%
  filter(!is.na(RealFeel))

monthly<- airquality %>%
select(Day,Month,RealFeel)  %>%
filter(!is.na(RealFeel))

View(monthly)

##plotting

ggplot(airquality, aes(x=RealFeel)) +
geom_bar(width =.3)

##another plot 

barplot(t(as.matrix(monthly)), main="MONTHLY REAL FEEL",beside=TRUE)

##full colored plot
##loading library
library("RColorBrewer")
coloredplot <- rev(colorRampPalette(brewer.pal(9, "RdYlBu"))(32))

filled.contour(t, v, rf , col=coloredplot, main="Monthly Real Feel",
nlevels=31, xlab="Temperature (??F)", ylab="Windspeed (mph)",
key.title=title("??F"), key.axes=axis(4, seq(-120, 40, by=20)),
zlim=c(-120,40))

