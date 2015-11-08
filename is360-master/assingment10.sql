/*
is360
assingment 10
Luis Hernandez
1- What country is the city of Abu Dhabi in? Show the SQL that answers this question.
*/

select city, country
from city, country
where city.country_id = country.country_id and city = 'Abu Dhabi';

/*
2- Write a SQL query that shows all of the films with the word “Astronaut” in their description.
*/

select title, description
from film
where description like '%Astronaut%';

/*
3-Write a SQL query that lists all film titles with replacement costs between $20.00 and $24.99 (inclusive) that start with the letter E, in alphabetical order by film title.
*/

SELECT title, replacement_cost
FROM film
WHERE replacement_cost >= 20.00 AND
      replacement_cost <= 24.99 AND
      title LIKE 'E%'
ORDER BY title;


