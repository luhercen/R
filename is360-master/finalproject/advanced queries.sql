/*
Is360 
final Project
Luis Hernandez
Advanced queries
*/

--Here I will do various advanced queries to show the knowledge obtain on the class:

*THE TABLE DATA IS THE TABLE FROM TAKEN FROM THE AIRQUALITY PACKAGE FROM R, I EXPORTED THAT DATA TO POSTGRESQL, THE DATA ON THE TABLE DATA WOULD REPRESENT
THE DATA FROM THE WHOLE NY STATE FROM MAY TO 2014-05 TO 2014-09, I added the columns date personally to match the date on the table MANHATTAN . ( the data on the airquality package on r its not really a ny data but i wanted to use it like it really was)

**THE TABLE DATAINCELSIUS IS EXACTLY THE SAME THAT THE TABLE DATA BUT ALL CONVERTED PREVIOUSLY ON R STUDIO TO CELIUS. 

***THE TABLE MANHATTAN IS THE TABLE I OBTAINED THROUGHT R STUDIO THROUGH FETCHING DATA ONLINE FROM WEATHER STATIONS, USING THE R PACKAGE "weatherDATA" 
http://ram-n.github.io/weatherData/
I first imported the fetched weather data from the months 2014-05 to 2014-10, but only from the station located on MANHATTAN, I used the following code thanks to the
library(weatherDATA)

Manhattandata = getWeatherForDate("MANHATTAN", "2014-05-05", "2014-10-05")

that imported the required data from the station MANHATTAN to my R studio file, then I again exported that data to a postgresql table called Manhattan.

***My idea was to compare how the (false) weather data from the whole NY state placed on the table "DATA" compares to the weather data obtain from only Manhattan.
I know I could have had it thought way better and more organized but time was limited.


--first to see our 3 tables data

select * from data

select * from dataincelsius

select * from manhattan

1)---Doing some aggregation with the table DATA where its temperature are in Farenheit

SELECT date, "Month", "Day", "Temp", "Real Feel Temperature",
	CASE
		WHEN "Real Feel Temperature" BETWEEN 120 AND 150 THEN 'Super Hot'
		WHEN "Real Feel Temperature" BETWEEN 100 AND 119 THEN 'Hot'
		WHEN "Real Feel Temperature" BETWEEN 70 AND 99 THEN 'Warm'
		ELSE 'Cold'
	END AS "Feeling"
	FROM data
	order by "Real Feel Temperature" asc
	
--checking "Real Feel Temperature" data
select "Real Feel Temperature" from data
order by "Real Feel Temperature" desc

--2) Doing some aggregation on table manhattan
select * from manhattan


SELECT date , "max temperature", "mean temperature", "min temperature",
	CASE
		WHEN date BETWEEN '2014-05-01' AND '2014-05-31' THEN 'May'
		WHEN date BETWEEN '2014-06-01' AND '2014-06-30' THEN 'June'
		WHEN date BETWEEN '2014-07-01' AND '2014-07-31' THEN 'July'
		WHEN date BETWEEN '2014-08-01' AND '2014-08-31' THEN 'August'
		WHEN date BETWEEN '2014-09-01' AND '2014-09-30' THEN 'September'
		WHEN date BETWEEN '2014-10-01' AND '2014-10-31' THEN 'October'
		ELSE 'none'
	END AS "Month"
	FROM manhattan
	order by date asc

--3) Basic Joins between table dataincelsius and table manhattan

select * from dataincelsius
select * from manhattan

--This will show the dates in which the temperature on the whole ny state were higher than the temperature on the manhattan area alone.

select dc."Temp" as "Temp on whole NY state", m."mean temperature" as "Temp on Manhattan", dc.date as "date on ny state", m.date as "date on manhattan area"
from dataincelsius dc
inner join manhattan m
on dc."Temp" > m."mean temperature"
group by dc."Temp", dc.date, m.date, m."mean temperature"

--This will show the dates in which temperature from the entire ny state were equal to the temperature of the Manhattan area
select dc.date as "date temperature on NY STATE", m.date as "date temperature on Manhattan", dc."Temp" as "Temperature on Ny State", m."mean temperature" as "Temperature on Manhattan"
from dataincelsius dc
inner join manhattan m
on dc."Temp" = m."mean temperature"
group by dc.date, dc."Temp", m."mean temperature", m.date
order by dc.date desc;


