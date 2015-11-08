/*is361
assignment 8
luis hernandez
*/

copy (
select fli.origin, fli.dest, carrier, dep_delay, arr_delay, air_time, plan.seats, wea.temp from flights fli
inner join planes plan on fli.tailnum = plan.tailnum
inner join weather wea on fli.origin = wea.origin
where fli.year=2013 and fli.month between 2 and 3 and fli.origin in ('JFK', 'LGA') and dest = 'LAX'
group by wea.temp,plan.seats, fli.origin, fli.dest, carrier, dep_delay, arr_delay, air_time
) to 'C:\Users\Public\Documents\week8assignment.csv' with csv header;
