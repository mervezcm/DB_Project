
----right outter joın without where :displays the matching rrecord and nonematching records right table
select  * from EMPLOYEES right outer join  ADDRESS on EMPLOYEES.EMPLOYEE_ID =ADDRESS.ADDRESS_ID;

select e.EMPLOYEE_ID,e.FIRST_NAME,e.LAST_NAME,A.ADDRESS,A.PHONE from EMPLOYEES E
    RİGHT OUTER JOİN ADDRESS A on e.EMPLOYEE_ID =a.ADDRESS_ID ;


----right outter joın with where :displays the none matching rrecord from right table

select e.EMPLOYEE_ID,e.FIRST_NAME,e.LAST_NAME,A.ADDRESS,A.PHONE from EMPLOYEES E
RİGHT OUTER JOİN ADDRESS A on e.EMPLOYEE_ID =a.ADDRESS_ID where e.EMPLOYEE_ID is null ;

select e.EMPLOYEE_ID,e.FIRST_NAME,e.LAST_NAME,A.ADDRESS,A.PHONE from EMPLOYEES E
 RİGHT OUTER JOİN ADDRESS A on e.EMPLOYEE_ID =a.ADDRESS_ID where e.EMPLOYEE_ID is null or a.ADDRESS_ID is null ;