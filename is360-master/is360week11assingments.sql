/*
Is360
assignment 11
Luis Hernandez


Your task is to show the wind direction for the first 
hour of the first day of each month as “West”, “North”, “East”, or “South”. 
It is left to you to come up with a reasonable way to answer the question.
*/

SELECT year, month, day, hour, wind_dir,
CASE
	WHEN wind_dir BETWEEN 45 AND 135 THEN 'East'
	WHEN wind_dir BETWEEN 135 AND 225 THEN 'South'
	WHEN wind_dir BETWEEN 225 AND 315 THEN 'West'
	ELSE 'North'
END AS "wind_direction"
FROM weather
WHERE hour = 0 AND day = 1;
