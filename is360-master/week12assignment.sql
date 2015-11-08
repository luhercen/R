/*
Is360 Week 12 assingment
Luis Hernandez
*/

--1. What are the names of the five airports that receive the most flights?

select a.name, count(*)
from flights f
inner join airports a
on f.dest = a.faa
group by a.name
order by count desc
limit 5;

--2. What are American Airlines’ destination cities from the New York airports?

select distinct a.name
from flights f
inner join airports a
on f.dest = a.faa
where f.carrier = 'AA'
	AND f.origin in ('JFK', 'LGA')
order by a.name;

