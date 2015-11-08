##Week 7 assignment


require(dplyr)
require(tidyr)
require(ggplot2)

##reproducing the table

x<- c(10.0, 8.0, 13.0, 9.0, 11.0, 14.0, 6.0, 4.0, 12.0, 7.0, 5.0)
y<- c(8.04, 6.95, 7.58, 8.81, 8.33, 9.96, 7.24, 4.26, 10.84, 4.82, 5.68)
I <- data.frame(x,y)

x<- c(10.0, 8.0, 13.0, 9.0, 11.0, 14.0, 6.0, 4.0, 12.0, 7.0, 5.0)
y<- c(9.14, 8.14, 8.74, 8.77, 9.26, 8.10, 6.13, 3.10, 9.13, 7.26, 4.74)
II <-data.frame(x, y)

x<- c(10.0, 8.0, 13.0, 9.0, 11.0, 14.0, 6.0, 4.0, 12.0, 7.0, 5.0)
y<- c(7.46, 6.77, 12.74, 7.11, 7.81, 8.84, 6.08, 5.39, 8.15, 6.42, 5.73)
III <-data.frame(x,y)

x<- c(8.0, 8.0, 8.0, 8.0, 8.0, 8.0, 8.0, 19.0, 8.0, 8.0, 8.0)
y<- c(6.58, 5.76, 7.71, 8.84, 8.47, 7.04, 5.25, 12.50, 5.56, 7.91, 6.89)
IV <- data.frame(x, y)


##creating the data frame from the lists

df <- data.frame(I, II, III, IV)

##corveting a data frame to a data table, just in case we wanted to use other builtint funtion from libraries
df = tbl_df(df)

View(df)

### plotting methods

##scatterplot
barplot(t(as.matrix(df)), beside = TRUE)

##histogram
hist(as.matrix(df))

##boxplot
boxplot(df)

###Summary
summary(df)
x              y               x.1            y.1             x.2            y.2       
Min.   : 4.0   Min.   : 4.260   Min.   : 4.0   Min.   :3.100   Min.   : 4.0   Min.   : 5.39  
1st Qu.: 6.5   1st Qu.: 6.315   1st Qu.: 6.5   1st Qu.:6.695   1st Qu.: 6.5   1st Qu.: 6.25  
Median : 9.0   Median : 7.580   Median : 9.0   Median :8.140   Median : 9.0   Median : 7.11  
Mean   : 9.0   Mean   : 7.501   Mean   : 9.0   Mean   :7.501   Mean   : 9.0   Mean   : 7.50  
3rd Qu.:11.5   3rd Qu.: 8.570   3rd Qu.:11.5   3rd Qu.:8.950   3rd Qu.:11.5   3rd Qu.: 7.98  
Max.   :14.0   Max.   :10.840   Max.   :14.0   Max.   :9.260   Max.   :14.0   Max.   :12.74  
x.3          y.3        
Min.   : 8   Min.   : 5.250  
1st Qu.: 8   1st Qu.: 6.170  
Median : 8   Median : 7.040  
Mean   : 9   Mean   : 7.501  
3rd Qu.: 8   3rd Qu.: 8.190  
Max.   :19   Max.   :12.500  





