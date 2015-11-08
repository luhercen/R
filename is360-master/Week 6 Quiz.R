##Quiz 6 

##1) In the MASS package, there is a dataset named caith. In one or two sentences, 
describe what is contained in the caith dataset.

library(MASS)
library(dplyr)
library(ggplot2)
library(tidyr)

data(caith)
tbl_df(caith)
str(caith)

#### this is describing the color of the eyes and how thickness
tbl_df(caith)
Source: local data frame [4 x 5]

fair red medium dark black
blue    326  38    241  110     3
light   688 116    584  188     4
medium  343  84    909  412    26
dark     98  48    403  681    85

> str(caith)
'data.frame':  4 obs. of  5 variables:
$ fair  : int  326 688 343 98
$ red   : int  38 116 84 48
$ medium: int  241 584 909 403
$ dark  : int  110 188 412 681
$ black : int  3 4 26 85


##2)  in the variable eye color is stored the the number of each type of eye color
require(MASS)
data(caith)

EyeColor <- rowSums(caith)
EyeColor

##3) creating variable haircolor

HairColor <- colSums(caith)
HairColor

HairColor
fair    red medium   dark  black 
1455    286   2137   1391    118 

##4) Historiagram of ete colors:

barplot(EyeColor)

##5) This converted the data frame caith to a matrix

data(caith)
caith <- as.matrix(caith)

##6) This barplot is a base r package. This creates a bar plot where inside each eye color its represent diffrent color on the same bar
barplot(t(as.matrix(caith)))

##7) 

barplot(t(as.matrix(caith)), beside=TRUE)

##8) from the previousgraph we can see that people in general with medium eye color to have medium hair color.


