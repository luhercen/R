/*is361
project 3
luis hernandez
*/

drop table population

CREATE TABLE Population
(
  country character varying NOT NULL,
  year integer NOT NULL,
  population integer NOT NULL 
);

COPY Population FROM 'C:\Users\Public\Documents\population.csv' with CSV Header;



select t.country, t.year, t.sex, child, adult, elderly, population from tb t
join population p on t.country = p.country and t.year = p.year
where child is not null and adult is not null and elderly is not null
group by t.country, t.year, t.sex, t.child, t.adult, t.elderly, p.population 
order by country

--Sex group aggregation

select sex, count(sex) as male_number from tb
where sex = 'male'
group by sex
union all
select sex, count(sex) as female_number from tb
where sex = 'female'
group by sex

--Grouping age groups aggregation

select sum(child) as number_of_children, sum(adult) as number_of_adults, sum(elderly) as number_of_elderly from tb
where child is not null and adult is not null and elderly is not null

----------------------------
select * from population
order by country, year

select * from tb
select * from population


-------------------------------------
--query to be exported:
SELECT distinct t.country, t.year, sum(child) AS child, sum(adult) as adults, sum(elderly) as elderly, t.sex, p.population
INTO rates
FROM tb t
join population p on t.country = p.country
where child is not null and adult is not null and elderly is not null and p.population is not null and sex is not null 
GROUP BY t.country, t.year, p.population,t.sex
order by t.country, t.year
--------------------------------

select * from rates

--extracting the query to a csv file
copy (
select * from rates) to 'C:\Users\Public\Documents\project3.csv' with csv header;

drop table rates

