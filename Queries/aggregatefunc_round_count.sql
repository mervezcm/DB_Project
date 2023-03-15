/*
Aggregate Functions:
min(): selects the min valur from the column
--select min(column name) from TableName;
max(): selects the max valur from the column
--select max(column name) from TableName;
avg(): selects the avg valur from the column
--select avg(column name) from TableName;
sum(): selects the sum of all values
--select sum(column name) from TableName;
-------
count():
select count(column name) from TableName where conditions;

round(): used for decimal formatting
select  round(avg(column name), 2 ) from TableName;
*/


select min(LOCATION_ID )from DEPARTMENTS;--1400

select count(*) from EMPLOYEES where MANAGER_ID =100;
select count(*) from EMPLOYEES where salary <10000;


select * from DEPARTMENTS where LOCATION_ID= 1400 ;
select * from DEPARTMENTS where LOCATION_ID= (select min(LOCATION_ID )from DEPARTMENTS);

select max(LOCATION_ID )from DEPARTMENTS;
select * from DEPARTMENTS where LOCATION_ID= (select max(LOCATION_ID )from DEPARTMENTS);


select  max(SALARY) from EMPLOYEES;--24000
select * from EMPLOYEES where salary= (select max(salary )from EMPLOYEES);
select * from EMPLOYEES where salary= (select min(salary )from EMPLOYEES);

select  avg(SALARY) from EMPLOYEES; --6461,831775

select round(avg(SALARY) ,3) from EMPLOYEES; -- 6461,832

select sum(SALARY) from EMPLOYEES; --returns the sum of the values




