##Week 4 assigment

##1) First importing and merging data sets
> week.4.make.model.data <- read.csv("C:/Users/Administrador/Desktop/week-4-make-model-data.csv")
>   View(week.4.make.model.data)
> week.4.price.data <- read.csv("C:/Users/Administrador/Desktop/week-4-price-data.csv")
>   View(week.4.price.data)

m=merge(week.4.make.model.data,week.4.price.data,by="ModelNumber")
> m
ModelNumber   Make    Model Year ID  Color Mileage Price
1         1091 Toyota    Camry 2010  1   Blue   36281 12400
2         1091 Toyota    Camry 2010  6    Red   61130  9900
3         1091 Toyota    Camry 2010 17 Silver   43017 11700
4         1091 Toyota    Camry 2010 10   Blue   56095 10400
5         1091 Toyota    Camry 2010 24   Blue   31204 12900
6         1091 Toyota    Camry 2010 18   Blue   53126 10700
7         1142 Toyota    Camry 2011  3    Red   45827 11400
8         1142 Toyota    Camry 2011  5  White   38426 12200
9         1142 Toyota    Camry 2011 20  White   48504 11100
10        1142 Toyota    Camry 2011  9  White   64466  9600
11        1142 Toyota    Camry 2011  2  Black   30107 13000
12        1142 Toyota    Camry 2011 13 Silver   54342 10600
13        1142 Toyota    Camry 2011 14 Silver   40757 11900
14        1254 Toyota  Corolla 2010  7    Red   68400  9200
15        1254 Toyota  Corolla 2010  4  White   63624  9600
16        1254 Toyota  Corolla 2010 26  Green   34716 12500
17        1908 Toyota  Corolla 2011  8  White   31863 12800
18        2111   Ford    Focus 2010 19  Black   42945 11700
19        2111   Ford    Focus 2010 16  White   36216 12400
20        2200   Ford    Focus 2011 21  White   46494 11400
21        2310   Ford Explorer 2010 23  Black   53942 10600
22        2310   Ford Explorer 2010 22 Silver   57672 10200
23        2310   Ford Explorer 2010 28  White   37107 12300
24        2312   Ford Explorer 2011 11  Black   47647 11200
25        2312   Ford Explorer 2011 15    Red   42685 11700
26        2312   Ford Explorer 2011 25    Red   52674 10700
27        2312   Ford Explorer 2011 27    Red   30479 13000

--There are 27 observations. I expected this because one table lacks of data.

##2)
total <- merge(price_data, model_data, by="ModelNumber", all=TRUE)

##3)
subset(total, Year == 2010)

##4)
subset(total, Color == "Red" & Price >= 10000)

##5) data <- getSymbols(input$symb, src = "yahoo", 
inputcaracvect = function(vec) {
  total = inputcaracvet(vec)
  n = length(vec)
  return (total/n)
}
vec = c(1:20)

##6)
x <- c("asfef","qwerty","yuiop(","b","stuffs.blah.homework") 
nchar(x)

