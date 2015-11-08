/*
IS360
week 13 assignment
Luis Hernandez
*/

---1. Show every possible combination of airline and airport in the flights database.

select al.name, ap.name
	from airlines al, airports ap
	order by al.name, ap.name;

--2. For every airport north of Fairbanks, show the name of the airport, and all airports north of that airport. The 
--resultset below sorted first by the name of the airport, then by the most northerly “more northerly” airports 
--first.

with northern_airports as (
	select name, lat
	from airports
	where lat > (
		select lat
		from airports
		where name = 'Fairbanks Intl'
		)
)
select t1.name, t1.lat, t2.name, t2.lat
	from northern_airports t1, northern_airports t2
	where t2.lat > t1.lat
	order by t1.name, t2.lat desc;

