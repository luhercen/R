/*
IS 360 Spring 2015
Week 4 Assignment - insert, updating, deleting rows on errors of database flights
Luis Hernandez Centti
*/

'adding rows on tablet planes'

select * from airlines

INSERT INTO airlines ( carrier, name ) VALUES ( 'XX', 'WORLD LINES');
INSERT INTO airlines ( carrier, name ) VALUES ( 'YY', 'SPACIAL LINES');

'where a planes seems to never have arrived'

select arr_time, carrier, tailnum, flight, origin, dest, hour, minute from flights
where arr_time is NULL
order by carrier

'insert word UNKNOWN where is null'

SELECT arr_time, carrier, tailnum, flight, origin, dest, hour, minute, COALESCE('NO ARRIVAL INFO')
from flights
where arr_time is NULL

rows at this time 8713

'deleting empty rows on flights'

DELETE FROM flights WHERE tailnum ='';

'now only 6201 rows are showned for flights,avoiding rows with no tailnumber'


SELECT arr_time, carrier, tailnum, flight, origin, dest, hour, minute, COALESCE('NO ARRIVAL INFO')
from flights
where arr_time is NULL

'now creating a table where planes without arrival time are'

CREATE TABLE Missingflights
(
  tailnumber varchar,
  origin varchar,
  destination VARCHAR
);

select * from Missingflights

'inserting values from table flights'

INSERT INTO Missingflights (tailnumber, origin, destination)
SELECT tailnum, origin , dest
FROM flights
WHERE arr_time is NULL
