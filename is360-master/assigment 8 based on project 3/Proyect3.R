##Project 3
##Loading packages, I choose the data airquality for this project, I later added chracters variables


write.table(airquality1,sep=",",file="airquality1.csv")
targetFrame = read.table("airquality1.csv",sep=",")


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



