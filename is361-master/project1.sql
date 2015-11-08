﻿/*is 360
Project 1
Data base MUSIC SCHOOL
Luis Hernandez
*/

CREATE TABLE tblCourses
(
  course_id int PRIMARY KEY,
  course_title varchar NOT NULL,
  course_length int NOT NULL,
  course_instructor varchar NOT NULL,
  course_credits int NOT NULL
);

select * from tblCourses

CREATE TABLE tblStudents
(
  student_id int PRIMARY KEY,
  student_name varchar NOT NULL,
  student_lastname varchar NOT NULL,
  student_major varchar NOT NULL,
  student_phone varchar NOT NULL,
  course_id int references tblCourses(course_id)
);


INSERT INTO tblCourses ( course_id, course_title, course_length, course_instructor, course_credits) VALUES ( 100, 
'Introduction to Music Theory and Musicianship I',45 , 'Terry Illous', 4);

INSERT INTO tblCourses ( course_id, course_title, course_length, course_instructor, course_credits) VALUES ( 101, 
'Music Literature',40 , 'Doug Kohn', 3);

INSERT INTO tblCourses ( course_id, course_title, course_length, course_instructor, course_credits) VALUES ( 102, 
'Piano I',50 , 'Vitalij Kuprij', 4);

INSERT INTO tblCourses ( course_id, course_title, course_length, course_instructor, course_credits) VALUES ( 103, 
'Jazz Ensemble I',45 , 'Pappou Ghanu', 3);

INSERT INTO tblCourses ( course_id, course_title, course_length, course_instructor, course_credits) VALUES ( 104, 
'Instrument I ',50 , 'Laslo Kucks', 5);



INSERT INTO tblStudents ( student_id, student_name, student_lastname, student_major, student_phone, course_id) VALUES ( 1, 
'Luis', 'Hernandez' , 'Piano Performance', '646-333-2212', 100);

INSERT INTO tblStudents ( student_id, student_name, student_lastname, student_major, student_phone, course_id) VALUES ( 2, 
'Xiou', 'Ling' , 'Piano Performance', '126-342-4782', 100);

INSERT INTO tblStudents ( student_id, student_name, student_lastname, student_major, student_phone, course_id) VALUES ( 3, 
'Stephen', 'Lomb' , 'Voice Performance', '126-233-6712', 101);

INSERT INTO tblStudents ( student_id, student_name, student_lastname, student_major, student_phone, course_id) VALUES ( 4, 
'Rachel', 'Banks' , 'Voice Performance', '246-554-1462', 101);

INSERT INTO tblStudents ( student_id, student_name, student_lastname, student_major, student_phone, course_id) VALUES ( 5, 
'Dave', 'Young' , 'Composition', '896-243- 452', 102);

INSERT INTO tblStudents ( student_id, student_name, student_lastname, student_major, student_phone, course_id) VALUES ( 6, 
'Ernest', 'Gugiver' , 'Composition', '667-162-8246', 102);

INSERT INTO tblStudents ( student_id, student_name, student_lastname, student_major, student_phone, course_id) VALUES ( 7, 
'Adrian', 'Hemmings' , 'Film Scoring', '628-124- 5375', 103);

INSERT INTO tblStudents ( student_id, student_name, student_lastname, student_major, student_phone, course_id) VALUES ( 8, 
'Nate', 'Abraham' , 'Film Scoring', '988-764- 7745', 103);

INSERT INTO tblStudents ( student_id, student_name, student_lastname, student_major, student_phone, course_id) VALUES ( 9, 
'Nicko', 'Pilliagri' , 'Arts', '989-020- 224', 104);

INSERT INTO tblStudents ( student_id, student_name, student_lastname, student_major, student_phone, course_id) VALUES ( 10, 
'Yuve', 'Gorbuck' , 'Arts', '784-128-8260', 104);


select * from tblStudents

--query

select course_title, course_instructor, course_credits, stu.student_name 
from tblCourses cour
inner join tblStudents stu on cour.course_id = stu.course_id
order by cour.course_id

--query

select course_title, course_instructor, course_credits, stu.student_name 
from tblCourses cour
inner join tblStudents stu on cour.course_id = stu.course_id
where cour.course_id = 101 --this can vary from 101, 102, 103, 104
order by cour.course_id
  

