/*
 Aliases:used to give temporary name to tables and column
 column aliases: we use "AS" keyword to give temporary name to the column
 select Column as "name" from Table;
 table aliases: given with a space
 select column from TableName Name;

 */
--column aliases
 select FIRST_NAME as "Given Name" from EMPLOYEES;
select  FIRST_NAME || ' ' ||  last_name as "Full Name" from EMPLOYEES;
select concat (EMAIL,'@gmail.com') as "Email Address" from EMPLOYEES;

-- table aliases
select * from EMPLOYEES,JOB_HISTORY;
select EMPLOYEES.employee_id, JOB_HISTORY.job_id from EMPLOYEES,JOB_HISTORY;

select e.employee_id, j.job_id from EMPLOYEES e, JOB_HISTORY j ;



