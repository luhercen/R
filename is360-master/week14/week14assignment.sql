/*
is 360
week 14 assignment
*/

--1. website chosen:

https://www.kickstarter.com/

--2. Local database design:

CHECK FOLDER FOR FILE IMAGE CALLED "DIAGRAM"

--3. Creating databases

CREATE TABLE project
(
 "ID" serial NOT NULL,
 "Title" character varying,
 "Author" character varying,
 "Content" character varying,
 CONSTRAINT project_pkey PRIMARY KEY ("ID")
)
WITH (
 OIDS=FALSE
);


CREATE TABLE Category
(
 "ID" integer NOT NULL,
 "Art" character varying,
 "Comics" character varying,
 "Crafts" character varying,
 "dance" character varying,
 "Design" character varying,
 "Fashion" character varying,
 "Film" character varying,
 "Food" character varying,
 "Games" character varying,
 "Journalims" character varying,
 "Music" character varying,
 "Photography" character varying,
 "Publishing" character varying,
 "Technology" character varying,
 "Theater" character varying,
  CONSTRAINT Category_pkey PRIMARY KEY ("ID")
 
)
WITH (
 OIDS=TRUE
);


CREATE TABLE Status
(
 "ID" integer,
 "Success" character varying,
 "Failed" character varying,
  CONSTRAINT Status_pkey PRIMARY KEY ("ID")
)
WITH (
 OIDS=TRUE
);

--table coments

CREATE TABLE comments
(
 "ID" integer,
 "Comment" character varying
)
WITH (
 OIDS=TRUE
);


--table tags

CREATE TABLE tags
(
 "ID" integer,
 "Tag" character varying
)
WITH (
 OIDS=TRUE
);

---4. populating tables

INSERT INTO project("ID", "Title", "Author", "Content") VALUES
 (1, 'Kickstarter 1', 'Author 1', 'content 1'),
 (2, 'Kickstarter 2', 'Author 2', 'content 2'),
 (3, 'Kickstarter 3', 'Author 3', 'content 3'),
 (4, 'Kickstarter 4', 'Author 4', 'content 4'),
 (5, 'Kickstarter 5', 'Author 5', 'content 5');

 select * from project


INSERT INTO Category("ID", 
 "Art" ,
 "Comics" ,
 "Crafts" ,
 "dance" ,
 "Design" ,
 "Fashion" ,
 "Film" ,
 "Food" ,
 "Games" ,
 "Journalims" ,
 "Music" ,
 "Photography" ,
 "Publishing",
 "Technology",
 "Theater") VALUES

 (1, 'art project', 'comic project', 'crafts project', 'dance project',
 'design project', 'fashion project', 'film project', 'food project', 'games project',
 'journalism project', 'music project', 'photography project', 'publishing project',
 'techonology project', 'theater project');


select * from Category


INSERT INTO tags("ID", "Tag") VALUES
 (1, 'Tag 1'),
 (1, 'Tag 2'),
 (2, 'Tag 1'),
 (2, 'Tag 3'),
 (3, 'Tag 4'),
 (3, 'Tag 5'),
 (4, 'Tag 2'),
 (4, 'Tag 4'),
 (5, 'Tag 2'),
 (5, 'Tag 5');
 
INSERT INTO comments("ID", "Comment") VALUES
 (1, 'Comment 1'),
 (1, 'Comment 1'),
 (2, 'Comment 2'),
 (2, 'Comment 2'),
 (3, 'Comment 3'),
 (4, 'Comment 4'),
 (5, 'Comment 5');


--5 . Queary data fro tables:

SELECT
 project."Title", project."Author", project."Content", comments."Comment", tags."Tag"
FROM
 project, comments, tags
WHERE
 project."ID" = comments."ID" AND
 project."ID" = tags."ID";

 
SELECT
 project."Title", project."Author", project."Content", tags."Tag"
FROM
 public.project, public.tags
WHERE
 project."ID" = tags."ID" and
 tags."Tag" = 'Tag 2';

 
