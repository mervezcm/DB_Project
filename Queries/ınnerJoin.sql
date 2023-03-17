/*
 inner join:
 to get data from both tables we use the ınner join clause in the select statement
 syntax:

 select TableName  , Column Name, columns
 from address inner join customer
 on primary key = foreign key;


 RETURNS ONLY THE MATCHİNG RECORDS FROM THE TWO TABLES
 */


select  * from  inner join ADDRESS
on customer.address_id = address.address_id;

select  customer.address_id , customer.first_name ,customer.last_name,address.address, address.phone,
from customer inner join ADDRESS on customer.address_id = address.address_id;

select c.customer_id , c.first_name,c.last_name,a.address,a.phone
from customer C inner join address A
ON c.address_id=a.address_id;


--2.
select  * from LOCATIONS L inner join COUNTRIES C on l.country_id=c.country_id;

select c.country_name, l.city from LOCATIONS L inner join countries C
ON L.COUNTRY_ID =C.COUNTRY_ID;

