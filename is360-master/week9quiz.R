# week9quiz.R
#Luis Hernandez Centti
# [For your convenience], here is the provided code from Jared Lander's R for Everyone, 
# 6.7 Extract Data from Web Sites

install.packages("XML")
require(XML)
theURL <- "http://www.jaredlander.com/2012/02/another-kind-of-super-bowl-pool/"
bowlPool <- readHTMLTable(theURL, which = 1, header = FALSE, stringsAsFactors = FALSE)
bowlPool

# 1. What type of data structure is bowlpool? 

BolwPool is a data frame , and we can check that out by doing the fowlling

str(bowlPool)
'data.frame':    10 obs. of  3 variables:
$ V1: chr  "Participant 1" "Participant 2" "Participant 3" "Participant 4" ...
$ V2: chr  "Giant A" "Giant B" "Giant C" "Giant D" ...
$ V3: chr  "Patriot Q" "Patriot R" "Patriot S" "Patriot T" ...


# 2. Suppose instead you call readHTMLTable() with just the URL argument,
# against the provided URL, as shown below

theURL <- "http://www.w3schools.com/html/html_tables.asp"
hvalues <- readHTMLTable(theURL)

# What is the type of variable returned in hvalues?

there returns values are lits, a list of 7 objects:

str(hvalues)
List of 7
$ NULL       :'data.frame':  4 obs. of  4 variables:
  ..$ Number    : Factor w/ 4 levels "1","2","3","4": 1 2 3 4
..$ First Name: Factor w/ 4 levels "Adam","Eve","Jill",..: 2 4 1 3
..$ Last Name : Factor w/ 4 levels "Doe","Jackson",..: 2 1 3 4
..$ Points    : Factor w/ 4 levels "50","67","80",..: 4 3 2 1
$ NULL       : NULL
$ NULL       : NULL
$ NULL       : NULL
$ NULL       : NULL
$ NULL       :'data.frame':	10 obs. of  2 variables:
  ..$ Tag        : Factor w/ 10 levels "<caption>","<col>",..: 4 8 10 6 1 3 2 9 5 7
..$ Description: Factor w/ 10 levels "Defines a cell in a table",..: 4 2 3 1 5 9 10 8 6 7
$ bottomlinks: NULL


# 3. Write R code that shows how many HTML tables are represented in hvalues

we can show that by :
length(hvalues)
> length(hvalues)
[1] 7


# 4. Modify the readHTMLTable code so that just the table with Number, 
# FirstName, LastName, # and Points is returned into a dataframe

hvalues <- readHTMLTable(theURL, which=1)
hvalues

that shows:

Number First Name Last Name Points
1      1        Eve   Jackson     94
2      2       John       Doe     80
3      3       Adam   Johnson     67
4      4       Jill     Smith     50

# 5. Modify the returned data frame so only the Last Name and Points columns are shown.

hvalues[c(3:4)]

or by this method
> hvalues[c("Last Name", "Points")]
Last Name Points
1   Jackson     94
2       Doe     80
3   Johnson     67
4     Smith     50

# 6 Identify another interesting page on the web with HTML table values.  
# This may be somewhat tricky, because while
# HTML tables are great for web-page scrapers, many HTML designers now prefer 
# creating tables using other methods (such as <div> tags or .png files).  

new_url = "http://www.officialcharts.com/rock-and-metal-albums-chart/"

new_table_page = readHTMLTable(new_url)
summary(new_table_page)

> summary(new_table_page)
Length Class      Mode
top40 5      data.frame list

str(new_table_page)
> str(new_table_page)
List of 1
$ top40:'data.frame':  41 obs. of  5 variables:
  ..$ Pos                   : Factor w/ 41 levels "/* <![CDATA[ */ com.mtvi.ads.AdManager.setKeyValues(\"\");\r\n\t\t\t\t\t\ttry {\r\n\t\t\t\t\t\tcom.mtvi.ads.AdManager.placeAd({"| __truncated__,..: 2 13 24 35 37 38 39 40 41 3 ...
..$ LW                    : Factor w/ 29 levels "1","10","11",..: 29 1 12 25 18 3 29 2 5 29 ...
..$ WKs                   : Factor w/ 30 levels "1","10","109",..: 1 26 19 4 7 12 1 3 2 1 ...
..$ Title, Artist, (Label): Factor w/ 40 levels "5 - THE GRAY CHAPTER\r\n                       SLIPKNOT\r\n                       (ROADRUNNER)",..: 1 39 26 9 22 11 17 34 8 21 ...
..$ Links                 : Factor w/ 40 levels "Buy\r\n                      \r\n                        \r\n                          \r\n                            \r\n    "| __truncated__,..: 1 24 15 6 12 7 37 20 5 30 ...



# 7 How many HTML tables does that page contain?

str(new_table_page, max.level = 1)

containts 1 table

> str(new_table_page, max.level = 1)
List of 1
$ top40:'data.frame':  41 obs. of  5 variables:
  
# 8 Identify your web browser, and describe (in one or two sentences) 
# how you view HTML page source in your web browser.

 I use chrome, we can see that html source just by selecting "View Page Source" from the pop-up menu on the chrome.