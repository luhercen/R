﻿﻿/*is 360
assigment 5
Luis hernandez
ONE TO MANY RELATIONSHIP
*/


CREATE TABLE tblVideolist
(
  video_id int PRIMARY KEY,
  video_title varchar NOT NULL,
  video_length int NOT NULL,
  video_url varchar NOT NULL
);


CREATE TABLE tblReviewers
(
  reviewer_id int PRIMARY KEY,
  reviewer_name VARCHAR NOT NULL,
  reviewer_rating int CHECK (reviewer_rating between 0 and 5),
  reviewer_text VARCHAR,
  video_id int references tblVideolist(video_id)
);

INSERT INTO tblVideolist ( video_id, video_title, video_length, video_url) VALUES ( 1, 'Introduction to Tableau: How To Create A Dashboard',47 , 'https://www.youtube.com/watch?v=6BWPoccQatI');
INSERT INTO tblVideolist ( video_id, video_title, video_length, video_url) VALUES ( 2, 'Tips and Tricks from a Tableau Jedi',54 , 'https://www.youtube.com/watch?v=CAZ3IAJEuCI');
INSERT INTO tblVideolist ( video_id, video_title, video_length, video_url) VALUES ( 3, 'Open Happiness though Business Intelligence and Tableau at Coca-Cola',57 , 'https://www.youtube.com/watch?v=GnrFHIJk2Ok');


select * from tblVideolist


INSERT INTO tblReviewers ( reviewer_id, reviewer_name, reviewer_rating, reviewer_text, video_id ) VALUES ( 1, 'Luis', '5', 'super useful', 1);
INSERT INTO tblReviewers ( reviewer_id, reviewer_name, reviewer_rating, reviewer_text, video_id ) VALUES ( 2, 'Sonya', '4', 'not good', 1);
INSERT INTO tblReviewers ( reviewer_id, reviewer_name, reviewer_rating, reviewer_text, video_id ) VALUES ( 3, 'Mart', '2', 'no comments', 2);
INSERT INTO tblReviewers ( reviewer_id, reviewer_name, reviewer_rating, reviewer_text, video_id ) VALUES ( 4, 'Lyca', '3', 'quite good', 2);
INSERT INTO tblReviewers ( reviewer_id, reviewer_name, reviewer_rating, reviewer_text, video_id ) VALUES ( 5, 'Orgon', '5', 'Really good', 3 );
INSERT INTO tblReviewers ( reviewer_id, reviewer_name, reviewer_rating, reviewer_text, video_id ) VALUES ( 6, 'Robert', '3', 'Helpful', 3 );

select * from tblReviewers

--queries
--all relations:

select vl.video_id, video_title, video_url, reviewer_name, reviewer_rating, reviewer_text
from tblvideolist vl
INNER JOIN tblReviewers rv ON vl.video_id = rv.video_id
ORDER BY video_id


--filter by video id:
select vl.video_id, video_title, video_url, reviewer_name, reviewer_rating, reviewer_text
from tblvideolist vl
INNER JOIN tblReviewers rv ON vl.video_id = rv.video_id
where rv.video_id = 1
ORDER BY video_id

select vl.video_id, video_title, video_url, reviewer_name, reviewer_rating, reviewer_text
from tblvideolist vl
INNER JOIN tblReviewers rv ON vl.video_id = rv.video_id
where rv.video_id = 2
ORDER BY video_id


select vl.video_id, video_title, video_url, reviewer_name, reviewer_rating, reviewer_text
from tblvideolist vl
INNER JOIN tblReviewers rv ON vl.video_id = rv.video_id
where rv.video_id = 3
ORDER BY video_id

 