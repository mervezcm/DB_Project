/*SELECT STATEMENT SYNTAX
    • Select * From TableName;
• Select ColumnName From TableName;
• Select ColumName1, ColumName2 ... From TableName;
• Select Column(s) From TbaleName1, TableName2 ;*/
 select * from DEPARTMENTS;
select  DEPARTMENT_NAME from DEPARTMENTS;
select DEPARTMENT_NAME,DEPARTMENT_ID from DEPARTMENTS;


select  * from EMPLOYEES;
select * from DEPARTMENTS;
select * from EMPLOYEES,DEPARTMENTS;

select EMPLOYEES.EMPLOYEE_ID, DEPARTMENTS.DEPARTMENT_ID from EMPLOYEES,DEPARTMENTS;

/* DİSTİNCT KEYWORD: Remove duplicates values
*/

select  distinct DEPARTMENT_ID from DEPARTMENTS;
select distinct SALARY from EMPLOYEES;
select distinct MAX_SALARY from JOBS;










---get me all information who is making more than 7000 salary
select * from employees
where salary>7000;

---get me email of who is making less than 4000
select EMAIL from EMPLOYEES
where SALARY<4000;

---get me all info who is working as IT_PROG  or  SA_REP

select * from EMPLOYEES
where JOB_ID = 'IT_PROG' OR JOB_ID = 'SA_REP';

---How many employee working as IT_PROG  or  SA_REP
select count (* )from EMPLOYEES
where JOB_ID = 'IT_PROG' OR JOB_ID = 'SA_REP';
---How many employee making more than 8000

select count (* )from EMPLOYEES
where salary>8000;

---how many unique first names we have?
select count(distinct FIRST_NAME )from EMPLOYEES;

----get me all employees information based on who is making more salary to low salary
select * from EMPLOYEES
    order by salary desc;
----desc 9-0 Z-A
----ASC 0-9 A-Z

----get me all employees information ORDER BY ALPHABETİCAL based on FİRST NAME
SELECT*
FROM EMPLOYEES
ORDER BY  FIRST_NAME;

----get me all employees information WHOSE FİRST NAME START WİTH C
SELECT*
FROM EMPLOYEES
WHERE  FIRST_NAME like 'C%';---curtis charles clara

--- get me 5 letter first names where the middle char is 'z'

select *
from EMPLOYEES
    where FIRST_NAME like '__z__';---mozhe hazel

--- get me  first names where the second char is u

select *
from EMPLOYEES
    where FIRST_NAME like '_u%';---luis julia sundita

select *
from EMPLOYEES;
---find me minimum salary
select min(salary)
from EMPLOYEES;
---find me maximum salary
select max(salary)
from EMPLOYEES;
---find me average salary
select avg(salary)
from EMPLOYEES;
---round
select  round(avg(salary),2) from EMPLOYEES;

select sum(salary) from EMPLOYEES;

---get me FİRST NAME ,last name salary who is making more than 5000 and less than 10000
select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES
where SALARY>=5000 and salary <=10000; ---where salary between 5000 and 10000;

---get me all info where emp_id 130-170
select *from EMPLOYEES
where EMPLOYEE_ID between 130 and 170;

---get me all info where emp_id 135 176 154 129
select * from EMPLOYEES
where EMPLOYEE_ID=135 or EMPLOYEE_ID=176 or EMPLOYEE_ID=154 or EMPLOYEE_ID=129;


select * from EMPLOYEES
where EMPLOYEE_ID in (135,176,154,129);

---get me city of where country_id  IT,US,UK

select city
from LOCATIONS
where COUNTRY_ID in ('IT','US','UK');

--get me average salary for IT_PROG
select avg(salary)
    from EMPLOYEES
where JOB_ID='IT_PROG';

-- get me unique job_ıds
select distinct  job_id from EMPLOYEES;

select JOB_ID,avg(salary),count(*),sum(salary)
from EMPLOYEES
group by job_id;

--- get me job_ids where their avg salary is more than 5k
select JOB_ID,avg(salary),count(*),sum(salary)
from EMPLOYEES
where salary >5000
group by job_id;


select JOB_ID,avg(salary),count(*),sum(salary)
from EMPLOYEES
group by job_id
having avg (salary)>5000;




