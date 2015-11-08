##Week 5 project 2
##Questions:
#1.How many people were asked on this poll?
#2.Total of people older than 25+ that voted for Partan Bree
#3.Percentage of user in age in Edunburg

#creating data frame that has 2 observations only...
Voters<-c(80100, 143000, 35900, 214800, 99400, 150400, 43000, 207000)
City<-c("Edinburgh", "Edinburgh", "Edinburgh", "Edinburgh", "Glasgow", "Glasgow", "Glasgow", "Glasgow")
Ages<-c("16-24", "25+", "16-24", "25+", "16-24", "25+", "16-24", "25+")
Answers<-c("Yes", "Yes", "No", "No", "Yes", "Yes", "No", "No")


#naming data frames:
df1 <- data.frame(City, Ages, Answers, Voters)
df2 <-data.frame(Ages, City, Voters)
df3 <-data.frame(Answers,  City, Voters)
df4 <-data.frame(Ages,Answers)

#tidyng data with tools:

library(tidyr)
library(dplyr)
df1 %>%
  gather(key, value, starts_with('City'))

##answeing question 1:
require(dplyr)
library(dplyr)
sum <- summarise(df1, total = sum(Voters))
sum

##question 2:
require(dplyr)
library(dplyr)
agevoters <- filter(df4, Ages == "25+", Answers == "Yes")

agevoters%>%
  filter(Answers == 'Yes', Ages == "25+") %>%
  summarise(PartanVoters = sum(Voters))

>PartanVoters



##question 3:
percentagevotarsEdinburg <- mutate(df1,city = "Edinburgh", voters = Voters/sum(Voters))
percentagevotarsEdinburg

##it was a great exercise to learn to use data frames. 

