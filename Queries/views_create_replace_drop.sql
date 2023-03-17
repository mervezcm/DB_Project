/*
 View
 CREATE view:
 create view Viewname as Statement;
 REPLACE view:
 create or replace view Viewname as Statement;
DROP view;
 drop view Viewname;

 */

 select *from EMPLOYEES;

select LAST_NAME || ' ' || FIRST_NAME as FULLNAME from EMPLOYEES;
create view  EmployeeInfo as select  LAST_NAME || ' ' || FIRST_NAME as FULLNAME from EMPLOYEES;

select *from EmployeeInfo;

select  LAST_NAME || ' ' || FIRST_NAME as FULLNAME ,
        lower(email || ' @cybertek.com'  )as Email
from EMPLOYEES;

create or replace view EmployeeInfo as
select  LAST_NAME || ' ' || FIRST_NAME as FULLNAME ,
        lower(email || ' @cybertek.com'  )as Email
from EMPLOYEES;


select * from EmployeeInfo;

drop view EmployeeInfo;