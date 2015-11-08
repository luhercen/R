##Week 5 Assignment

##luis hernandez

library(dplyr)

View(mtcars)
(avgcars <- group_by(mtcars, cyl, am))
average <- summarise(avgcars,
                   count=n(),
                   avgmpg=mean(mpg, na.rm = TRUE),
                   avgwt=mean(wt, na.rm = TRUE))
###> average
Source: local data frame [6 x 5]
Groups: cyl

cyl am count   avgmpg    avgwt
1   4  0     3 22.90000 2.935000
2   4  1     8 28.07500 2.042250
3   6  0     4 19.12500 3.388750
4   6  1     3 20.56667 2.755000
5   8  0    12 15.05000 4.104083
6   8  1     2 15.40000 3.370000

##to show only cars get more than 20 mpg

(filter(average, avgmpg > 20))

##> (filter(average, avgmpg > 20))
Source: local data frame [3 x 5]
Groups: cyl

cyl am count   avgmpg   avgwt
1   4  0     3 22.90000 2.93500
2   4  1     8 28.07500 2.04225
3   6  1     3 20.56667 2.75500


