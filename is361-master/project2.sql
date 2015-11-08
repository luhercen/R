/*
IS361
Project 2
Luis Hernandez
*/


CREATE TABLE tblEmployees
(
  employee_id int PRIMARY KEY,
  user_name varchar
);

INSERT INTO tblemployees ( employee_id, user_name ) VALUES ( 001, 'Modesto');
INSERT INTO tblemployees ( employee_id, user_name ) VALUES ( 002, 'Ayine') ;
INSERT INTO tblemployees ( employee_id, user_name ) VALUES ( 003, 'Christopher'); 
INSERT INTO tblemployees ( employee_id, user_name ) VALUES ( 004, 'Cheong Woo');
INSERT INTO tblemployees ( employee_id, user_name ) VALUES ( 005, 'Saulat');
INSERT INTO tblemployees ( employee_id, user_name ) VALUES ( 006, 'Heidy');
insert into tblemployees ( employee_id, user_name) values (007, null);
insert into tblemployees ( employee_id, user_name) values (008, null)

select * from tblemployees


create table tblgroups
(
  group_id int primary key,
  group_name varchar,
  employee_id int references tblEmployees(employee_id)
);


INSERT INTO tblgroups ( group_id, group_name, employee_id ) VALUES ( 001, 'I.T', 001);
INSERT INTO tblgroups ( group_id, group_name, employee_id ) VALUES ( 002, 'I.T', 002);
INSERT INTO tblgroups ( group_id, group_name, employee_id ) VALUES ( 003, 'Sales', 003);
INSERT INTO tblgroups ( group_id, group_name, employee_id ) VALUES ( 004, 'Sales', 004);
INSERT INTO tblgroups ( group_id, group_name, employee_id ) VALUES ( 005, 'Administration', 005);
INSERT INTO tblgroups ( group_id, group_name, employee_id ) VALUES ( 006, 'Operations', 007);
INSERT INTO tblgroups ( group_id, group_name, employee_id ) VALUES ( 007, null, 008);
INSERT INTO tblgroups ( group_id, group_name, employee_id ) VALUES ( 008, 'Administration', 006);


select * from tblgroups


CREATE TABLE tblrooms
(
  room_id int primary key,
  room_name varchar NOT NULL,
  group_id int references tblgroups(group_id)
);

INSERT INTO tblrooms ( room_id, room_name, group_id ) VALUES ( 001, 'Room 101', 001);
INSERT INTO tblrooms ( room_id, room_name, group_id ) VALUES ( 002, 'Room 102', 002);
INSERT INTO tblrooms ( room_id, room_name, group_id ) VALUES ( 003, 'Room 101', 001);
INSERT INTO tblrooms ( room_id, room_name, group_id ) VALUES ( 004, 'Room 102', 002);
INSERT INTO tblrooms ( room_id, room_name, group_id ) VALUES ( 005, 'Room 102', 003);
INSERT INTO tblrooms ( room_id, room_name, group_id ) VALUES ( 006, 'Room 102', 004);
INSERT INTO tblrooms ( room_id, room_name, group_id ) VALUES ( 007, 'Auditorium A', 003);
INSERT INTO tblrooms ( room_id, room_name, group_id ) VALUES ( 008, 'Auditorium A', 004);
INSERT INTO tblrooms ( room_id, room_name, group_id ) VALUES ( 009, 'Auditorium B', 007 );


select * from tblrooms

--SHowing all groups and users in the group.even if no users have been assigned to them

select group_name, user_name from tblgroups grou inner join tblemployees emp on grou.employee_id = emp.employee_id where group_name is not null

--All rooms and the groups are assigned to each room, the rooms should appear even if no groups have been assigned to them

select distinct room_name, group_name from tblrooms rom join tblgroups gro on rom.group_id = gro.group_id

-A list of users, the groups that they belong to, and the rooms to which they are assigned. This should be sorted alphabetically by user, then by group, then by room.

--by user
select distinct user_name, group_name, room_name from tblemployees emp inner join tblgroups gro on emp.employee_id = gro.employee_id
left join tblrooms rom on gro.group_id = rom.group_id where user_name is not null
order by user_name

--by group name
select distinct user_name, group_name, room_name from tblemployees emp inner join tblgroups gro on emp.employee_id = gro.employee_id
left join tblrooms rom on gro.group_id = rom.group_id where group_name is not null
order by group_name

--by room name
select distinct user_name, group_name, room_name from tblemployees emp inner join tblgroups gro on emp.employee_id = gro.employee_id
right join tblrooms rom on gro.group_id = rom.group_id where room_name is not null
order by room_name
