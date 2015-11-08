/*
IS360 quiz 14
Luis Hernandez
*/

--1. Creating new database:
CREATE DATABASE buildingenergy
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'English_United States.1252'
       LC_CTYPE = 'English_United States.1252'
       CONNECTION LIMIT = -1;

--2. Creating tables, categories:

CREATE TABLE categories
(
  id integer NOT NULL,
  energycategory character varying,
  CONSTRAINT "EnergyCategories_pkey" PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE categories
  OWNER TO postgres;


CREATE TABLE types
(
  id integer NOT NULL,
  energytype character varying,
  type integer,
  CONSTRAINT "EnergyTypes_pkey" PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE types
  OWNER TO postgres;

--3. join statments:


SELECT 
  energycategory, energytype
FROM 
  categories, 
  types
WHERE 
  categories.id = types.type
ORDER BY
  energycategory;
  
--4. adding table:

CREATE TABLE buildings
(
  id integer NOT NULL,
  building character varying,
  type integer,
  CONSTRAINT buildings_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE buildings
  OWNER TO postgres;


--5. Join statement

SELECT 
  building, energytype
FROM 
  buildings, 
  types
WHERE 
  buildings.type = types.id
ORDER BY
  building;

    
