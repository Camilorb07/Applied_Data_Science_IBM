use master
/*
The general syntax of SELECT statments is:

select COLUMN1, COLUMN2, ... from TABLE1 ;

To retrieve a list of all country names and their IDs from the COUNTRY table we would issue:
*/

select ID, NAME from COUNTRY;

/*
To retrieve all columns from the COUNTRY table we could use "*" 
instead of specifying individual column names:
*/

select * from COUNTRY1 ;

/*
The WHERE clause can be added to your query to filter results 
or get specific rows of data. To retrieve data for all rows 
in the COUNTRY table where the ID is less than 5:
*/

select * from COUNTRY where ID < 5 ;

/*
In case of character based columns the values of the predicates
in the where clause need to be enclosed in single quotes. To retrieve 
the data for the country with country code "CA" we would issue:
*/

select * from COUNTRY where CCODE = 'CA'; 