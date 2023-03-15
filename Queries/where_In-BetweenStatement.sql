/*
 WHERE CLUASE SYNTAX: used as the filter option
SELECT column_1, column_2.. column_n
FROM table_name
WHERE conditions;
--Applies filter to result

 Operators: > , < , >= , <= , = , != ,or ,and
 */

 select * from EMPLOYEES where salary < 5000;
 select * from EMPLOYEES where salary < 5000 and MANAGER_ID=114;

/*
 BETWEEN statement : to match a value against a range of values.

Value BETWEEN lowest AND highest
 */

 select  * from  DEPARTMENTS where LOCATION_ID between 1800 and 2400;
select * from EMPLOYEES where SALARY between 3500 and 5000;

/*
in statement :used for specifying the range of the condition
*/
select  * from  EMPLOYEES where DEPARTMENT_ID in (60,30,110);
select  * from COUNTRIES where REGION_ID in (1,4);






