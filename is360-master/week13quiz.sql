/*
IS360
week 13 quiz
Luis Hernandez
*/

---A. Creating and populating tables:---

--Creating table course levels
create table courselevels(
	name character varying,
	lvl integer);

--Inserting values to courselevels:


insert into courselevels values
	('Intermediate', 2),
	('Beginning', 1),
	('Advanced', 3);


--Creating table languages 

create table languages(
	name character varying,
	lvl integer);
	

--Inserting values to languages:

insert into languages values
	('Hindi', 4),
	('English', 3),
	('Mandarin', 1),
	('Spanish', 2);
	

--B. ordering the the language courses on levels:

select concat_ws(' ', cls.name, lan.name) as lang_course_list
	from languages as lan, courselevels as cls
	order by lan.lvl, cls.lvl;

	
