##Week 4 Quiz

##1) about OSEMN 
1) Data scientist OSEMN : Obtain, Scrub, Explore, Model, and iNterpret
-Obtain: In this first step we need to look to get enough data that is usable to us. Most of the time we will need to grab information from more than one source in order to get as much information. The methods we can use to get the data are by scripts, these scripts can extract data from the sources we have available (websites).
-Scrub: In this part of the process we need to take that data obtained before and then sort and clean that data out, this in order to get as much specific data we feel useful to our need. We can clean the data obtained with a various scripts.
-Explore: This is the part where we look closely at the data we have obtained after we have stripped out and scrubbed it as much as needed. On this step we can analyze graphically the data obtain, by plotting into graphics and then try to predict where our data can lead us. Predictions here are not meant to be correct, just to get to know our data.
-Model: In this part we take the graphical predictions we have done before and we split our data in order to make less saturated and easier to read and predict. Then we compare the now two parts of our data, this will lead to a reduction on the percentage of errors in ours predictions, in this way we will obtain a new improved data that will be close to the final precise data we wanted to obtain since the beginning.
-Interpret: This where we test our predictions and algorithms kick in. We take our predictions and analyze them with complex scripts to obtain as much data as we wanted, as detailed as possible. Then we finally can suggest directions to our data and ways to improve them or take them where we want from that moment on. 

##2) 
Which do you think will yield a better program: Well-designed function interfaces and data structures, decently implemented, or decently designed function interfaces and data structures, well implemented? 
Briefly explain your reasoning.

-The optimal would be both well implemented and well-designed functions and data structures. But if there one to give priority over the other I'm more inclined toward the idea to have a well-designed function interfaces and data structures, decently implemented. We can always restructure the implementation more easily than reworking or debugging the code. For example if a system is well implemented but the program itself it is still buggy I can't see a proper use for it. 



##3) using lubridate
as.numeric(as.Date("1970-09-19"))

##4) 
-POSIXct for example above, will show the number of sec since 1970 until now as a numeric vector
-POSIXlt here represent a list of vectors that are sec,min,hour,month,year,wday,timezone(zone)

##5) shannon was born in:
origin
[1] "1970-01-01 UTC"

or 

question5 <- "How long since Claude Shannon was born?"
d1 <- as.POSIXct("1916-4-30")
d2 <- as.POSIXct("2014-9-19")
d2 - d1 

##7)
as.Date(format(a,"z-%m-%d"))

##8)
as.numeric(format(date1, "%m"))

##9)
> start_2010 <- ymd_hms("2014-12-31 12:00:00")
> start_2005 <- ymd_hms("2005-01-01 12:00:00")
span <- start_2005 - start_2015

