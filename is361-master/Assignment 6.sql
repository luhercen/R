/*is360
Assgnment 6
Luis Hernandez
*/

CREATE TABLE Organization (
  id int PRIMARY KEY,
  fullname varchar NOT NULL,
  jobtitle varchar NOT NULL,
  supervisor varchar NOT NULL
);

INSERT INTO Organization ( id, fullname, jobtitle, supervisor ) VALUES ( 1, 'Matheus Kleber', 'President',  'NONE');
INSERT INTO Organization ( id, fullname, jobtitle, supervisor ) VALUES ( 2, 'Classius Kleber', 'CFO',  'President');
INSERT INTO Organization ( id, fullname, jobtitle, supervisor ) VALUES ( 3, 'Anabel Kosov', 'SVP COMMUNICATIONS',  'CFO');
INSERT INTO Organization ( id, fullname, jobtitle, supervisor ) VALUES ( 4, 'Angel Centti', 'SVP OPERATIONS',  'SVP COMMUNICATIONS');
INSERT INTO Organization ( id, fullname, jobtitle, supervisor ) VALUES ( 5, 'Juls Oband', 'SVP MARKETING',  'OPERATIONS');



select * from organization

select fullname, jobtitle, supervisor as reportsto
from organization
