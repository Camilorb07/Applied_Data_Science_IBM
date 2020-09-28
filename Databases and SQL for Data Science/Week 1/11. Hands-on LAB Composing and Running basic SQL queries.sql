--task 0 : Drop the table INSTRUCTOR from the database in case it already exists, so that we start from a clean state.

--drop table INSTRUCTOR;
IF OBJECT_ID('dbo.INSTRUCTOR', 'u') IS NOT NULL 
  DROP TABLE dbo.INSTRUCTOR;

--Task 1: Create the INSTRUCTOR table as defined above. Have the ins_id be the primary key, and ensure the 
--lastname and firstname are not null.

CREATE TABLE INSTRUCTOR (
	ins_id integer PRIMARY KEY NOT NULL,
	lastname varchar(60) not null,
	firstname varchar(60) not null,
	city varchar(60),
	country varchar(60)
);

-- Task 2A: Insert one row into the INSTRUCTOR table for the the instructor Rav Ahuja.
-- Task 2B: Insert two rows at once in the INSTRUCTOR table for instructors Raul Chong and Hima Vasudevan.

insert into INSTRUCTOR (
	ins_id, lastname, firstname, city, country)
	values(
	1, 'Ahuja','Ray','Toronto','CA');
	
insert into INSTRUCTOR (
	ins_id, lastname, firstname, city, country)
	values
	(2,'Chong','Raul','Toronto','CA'),
	(3,'Vasudevan','Hima','Chicago','US');

--Task 3: Select all rows from the INSTRUCTOR table.
SELECT * FROM INSTRUCTOR;

--Task 3B: Select the firstname, lastname and country where the city is Toronto
SELECT * FROM INSTRUCTOR WHERE city = 'Toronto';

--Task 4: Update the row for Rav Ahuja and change his city to Markham.
update INSTRUCTOR 
set city = 'Markham'
WHERE ins_id =1;
SELECT * FROM INSTRUCTOR;

--Task 5: Delete the row for Raul Chong from the table.
DELETE FROM INSTRUCTOR
WHERE ins_id = 2;
SELECT * FROM INSTRUCTOR;