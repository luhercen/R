
/* 
IS360 - Final Project
Luis Hernandez Centti

Quinmester weather data report, from New york City
From May to September weather data

*/

--Seeing the whole data:

select * from data
select * from dataincelsius
select * from manhattan

--Analyzing on which day the Ozone data got higher from table data:


SELECT "Day", "Month", "Ozone"
FROM data
where "Ozone" = (select max("Ozone") from data)
order by "Ozone" asc;

--Analyzing on which day the Solar Radiation data got higher from data:

SELECT "Day", "Month", "Solar Radiation"
FROM data
where "Solar Radiation" = (select max("Solar Radiation") from data);

--Analyzing on which day the Wind data got higher from data:

SELECT "Day", "Month", "Wind"
FROM data
where "Wind" = (select max("Wind") from data);

--Analyzing on which day the Temp data got higher:

SELECT "Day", "Month", "Temp"
FROM data
where "Temp" = (select max("Temp") from data);

--Analyzing on which day the Real Feel Temperature data got higher:

SELECT "Day", "Month", "Real Feel Temperature"
FROM data
where "Real Feel Temperature" = (select max("Real Feel Temperature") from data);

--Analyzing on which day the Wind Chill Temperrature data got higher:

SELECT "Day", "Month", "Wind Chill Temperature"
FROM data
where "Wind Chill Temperature" = (select max("Wind Chill Temperature") from data);

--various more queries:

select * from manhattan
select * from dataincelsius

select dc."Real Feel Temperature", m."mean temperature"
    from dataincelsius dc
    cross join manhattan m
    order by dc."Real Feel Temperature", m."mean temperature"




