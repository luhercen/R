/*
IS360 
project 5
Luis Hernandez
*/

--1. What weather conditions are associated with New York City departure delays?

select f.dep_delay,
	f.tailnum,
	w.temp,
	w.wind_speed,
	w.wind_gust,
	w.precip,
	w.visib
from flights f
join weather w
on f.year = w.year
	AND f.month = w.month
	AND f.day = w.day
	AND f.hour = w.hour
where f.dep_delay > 0
order by f.dep_delay desc;

--analyzing the data output we goty that when the dep_delay show the higher amount
--of delay find no reasonable association, it could be due to plane errors or mechanical failures to say

--2. Are older planes more likely to be delayed?

select
	case
		when p.year >= 2000 then 'New'
		else 'Old'
	end as "Aircraft classification",
	count(*) as "Num Delayed Flights",
	avg(f.dep_delay) as "Average Delay"
from flights f
join planes p
on f.tailnum = p.tailnum
where f.dep_delay > 0
group by "Aircraft classification";

--taking for new planes the ones from the year 2000 to this we can say that:
--in general new planes have dealyed a little more than the planes classified as old.

--3. Ask (and if possible answer) a third question that also requires joining information from two or more tables in 
--the flights database, and/or assumes that additional information can be collected in advance of answering 
--your question.

select 
	case
		when p.year <= 1990 then 'Planes to discard'
		else 'Good planes'
	end as "Aircraft fleet assessment",
	count(*) as "Number of Planes"
from flights f
join planes p
on f.tailnum = p.tailnum
group by "Aircraft fleet assessment";

--This code solve the question that asks: Whick planes are old enought to be discard, and the ones to be discard are the 
--ones that are from the year below 1990.
