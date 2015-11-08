#Assigment 1
#To see the R version
R.version.string
#To see the PostgreSQL version
select version()
"PostgreSQL 9.3.5, compiled by Visual C++ build 1600, 64-bit"
#To install the package DMwR
install.packages("DMwR")
to load the package DMwR on the memory
library(DMwR)
#to load a specific data set, in this case to load Sales
data(sales)
#To see the first few rows of the data set
head(sales)
#to see the number of rows of the data set Sales
nrow(sales)
Sales has 401146 observations