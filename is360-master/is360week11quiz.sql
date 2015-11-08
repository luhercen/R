/*
IS360
LUIS HERNANDEZ CENTTI
WEEK 11 QUIZ
*/

--Question 1:

select * 
from weather
limit 5;

--Question 2:

select avg(wind_speed)
from weather;

--Question 3:
--The query returned my 12 rows, every one from each month.

select year, month, round(avg(wind_speed)) as average_wingspeed
from weather
where month between 1 and 12
group by year,month
order by month;

--Question 4:
--the 5 windest day were the 2013/2/12, 2013/1/31,2013/1/31,2013/6/25,2013/1/31


select year, month, day, wind_speed
from weather
where wind_speed > 0 and wind_speed <5000
order by wind_speed desc
limit 5;

--Question 5:
--what was the hotest day of the last year?
--there were two hot days on the year 2013, the 2013/7/18 and the 2013/7/19.

select year, month, day, temp
from weather
where temp = (select max(temp) from weather)



--Challenge exercise:
--The coldest day was the 2013/1/23

select year, month, day, temp
from weather
where temp = (select min(temp) from weather)
