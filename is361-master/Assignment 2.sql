IS360
week 3 Assignment
Luis Hernandez Centti

1. Show the total number of flights.

select * from flights
select count(flight) as numberofflights from flights


2. Show the total number of flights by airline (carrier).

select count(flight) as totalflights, carrier from flights
group by carrier
order by totalflights asc


3. Show all of the airlines, ordered by number of flights in descending order.

select carrier, count(flights) from flights
group by carrier
order by count desc



4. Show only the top 5 airlines, by number of flights, ordered by number of flights in descending order.

select carrier, count(flights) from flights
group by carrier
order by count desc
limit 5


5. Show only the top 5 airlines, by number of flights of distance 1,000 miles or greater, ordered by number of
flights in descending order.


select distinct carrier, count(flights) as numofflights, distance from flights
where distance>=1000
group by carrier, distance
order by numofflights desc
limit 5


6. Create a question that (a) uses data from the flights database, and (b) requires aggregation to answer it, and
write down both the question, and the query that answers the question.

-Which airplanes made the most flights out of New York City airports(LGA and JFK) in 2013? 

select tailnum, year, max(flight) as numberofflights, origin
from flights
where year=2013 and origin in ('JFK', 'LGA')
group by tailnum, year, origin, flight
order by numberofflights desc
limit 1


