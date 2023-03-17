
/*
 --full outer join without where: displays the matching records from both tables
 along with the none matching records from the left table
 and the none matching records from the right table
 */

select * from EMPLOYEES FULL OUTER JOIN ADDRESS on EMPLOYEES.EMPLOYEE_ID=ADDRESS.ADDRESS_ID;

select * from EMPLOYEES E FULL OUTER JOIN ADDRESS  a on E.EMPLOYEE_ID=A.ADDRESS_ID;

select  E.EMPLOYEE_ID,E.first_name,E.last_name,a.ADDRESS ,a.PHONE from EMPLOYEES E
full outer join ADDRESS A on e.EMPLOYEE_ID=a.ADDRESS_ID;

--full outer join with where: displays the non matching records from
--the left table and the none matching records from the right table
select * from EMPLOYEES E FULL OUTER JOIN ADDRESS  a on E.EMPLOYEE_ID=A.ADDRESS_ID
where E.EMPLOYEE_ID is null or a.ADDRESS_ID is null;


