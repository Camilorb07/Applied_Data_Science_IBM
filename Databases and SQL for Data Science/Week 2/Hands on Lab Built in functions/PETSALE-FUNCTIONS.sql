USE IBM_4 -- ONLY IN MSSM

select SUM(SALEPRICE) from PETSALE;
select SUM(SALEPRICE) AS SUM_OF_SALEPRICE from PETSALE;
select MAX(QUANTITY) from PETSALE;
select AVG(SALEPRICE) from PETSALE;
select AVG( SALEPRICE / QUANTITY ) from PETSALE where ANIMAL = 'Dog';
select ROUND(SALEPRICE,0) from PETSALE;
select len(ANIMAL) from PETSALE;
select Upper(ANIMAL) from PETSALE;
select DISTINCT(upper(ANIMAL)) from PETSALE;
select * from PETSALE where lower(ANIMAL) = 'cat';
select DAY(SALEDATE) from PETSALE where ANIMAL = 'Cat';
select COUNT(*) from PETSALE where MONTH(SALEDATE)='05';
select dateadd(day,3,SALEDATE) from PETSALE;
