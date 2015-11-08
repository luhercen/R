/*
Is 360 part 2
Assignment 1
Luis Hernandez Centti

1. Which destination in the flights database is the furthest distance away, based on information in the flights table.
Show the SQL query(s) that support your conclusion.

select dest, max(distance) as MaxDistance from flights
group by flights.dest, distance
order by MaxDistance desc

-According to the query The further destination is HNL that is 4983 miles away.

2. What are the different numbers of engines in the planes table? For each number of engines, which aircraft have
the most number of seats? Show the SQL statement(s) that support your result.
	
select engines, max(seats) as seats from planes
group by planes.engines
order by engines

-According to the query results:
For engines with 1 max seats 16
For engines with 2 max seats 400
For engines with 3 max seats 379
For engines with 4 max seats 450

*/

Question 2 - answer:

select distinct p.manufacturer, p.model as aircraft, p.engines, p.seats

from planes as p

join 

(

select p.engines, max(seats) as Mostseats

from planes as p 

group by p.engines

order by p.engines

) as p1 on p1.engines = p.engines and p1.MostSeats = p.Seats

order by p.engines
