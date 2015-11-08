/*
Is360 Week 12 quiz
Luis Hernandez
*/

--1. Which of these four airplanes made the most flights out of New York City airports in 2013? 
--Plane tailnums: 'N125UW','N848MQ','N328AA','N247JB'

select tailnum, COUNT(tailnum)
from flights
where tailnum in ('N328AA', 'N247JB', 'N848MQ', 'N125UW')
group by tailnum
order by count desc;

--2. For each of these four planes, show the corresponding meta-data (model, manufacturer, engines, etc.) 
--about each plane? What is surprising about the information returned? How do you think this could 
--happen?

select *
from planes
where tailnum in ('N328AA', 'N247JB', 'N848MQ', 'N125UW');

--we have realized that there is information for the tail number plane 'N848MQ'

--3. Write a SELECT statement that shows for all of the flights during the period February 14th to February 17th 
--for each of the four planes above: 'N125UW','N848MQ','N328AA','N247JB'. Your select statement should 
--return the following information: tailnum, flight date information, departure delay, arrival delay, 3 digit 
--destination code

select tailnum, year, month, day, dep_delay, arr_delay, dest
from flights
where tailnum in ('N328AA', 'N247JB', 'N848MQ', 'N125UW')
	AND month = 2
	AND day >= 14
	AND day <= 17
order by tailnum;

--4. Add a join clause, to also show destination airport name. How many rows were returned?

select f.tailnum, f.year, f.month, f.day, f.dep_delay,
	f.arr_delay, f.dest, a.name
from flights f
inner join airports a
on f.dest = a.faa
where f.tailnum in ('N328AA', 'N247JB', 'N848MQ', 'N125UW')
	AND f.month = 2
	AND f.day >= 14
	AND f.day <= 17
order by f.tailnum;

--the were 13 rows returned

--5. Rewrite the join as a left join, and compare your results.

select f.tailnum, f.year, f.month, f.day, f.dep_delay,
	f.arr_delay, f.dest, a.name
from flights f
left join airports a
on f.dest = a.faa
where f.tailnum in ('N328AA', 'N247JB', 'N848MQ', 'N125UW')
	AND f.month = 2
	AND f.day >= 14
	AND f.day <= 17
order by f.tailnum;

--now we have 14 rows returned

--6. Add a second left join clause to also show the number of seats in the planes

select f.tailnum, f.year, f.month, f.day, f.dep_delay,
	f.arr_delay, f.dest, a.name, p.seats
from flights f
left join airports a
on f.dest = a.faa
left join planes p
on f.tailnum = p.tailnum
where f.tailnum in ('N328AA', 'N247JB', 'N848MQ', 'N125UW')
	AND f.month = 2
	AND f.day >= 14
	AND f.day <= 17
order by f.tailnum;

--7. Rewrite your query, using table aliases. (Results unchanged from above). Do you find the code more 
--readable with or wthout table aliases?

Aliases are good to understand better and clearly
what really are the outcomes from a query.
