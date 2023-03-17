/**
  Dropping table:
  drop table TableName;

  TRUNCATE table:
  truncate table TableName;


 */

create table address(
                        address_id INTEGER primary key ,
                        address varchar(50) not null ,
                        phone INTEGER
);
insert into address (address_id,address,phone) values (5,'LEE HİGH WAY', 123456);
insert into  address (address_id,address,phone ) values (6,'ROSSA WAY', 789101);
insert into  address (address_id,address,phone ) values (7,'BALLTOWN WAY', 1213);

--foreign key
create table customer(
                         customer_id INTEGER PRIMARY KEY ,
                         firstName varchar(30 ) null ,
                         address_id INTEGER REFERENCES address (address_id)
);
insert into customer (customer_id, firstName, address_id) values (1,'Merve',15);
insert into customer (customer_id, firstName, address_id) values (2,'Elif',20);

select * from address;
select * from customer;

update customer set customer_id =3 where address_id=12;

delete from customer where customer_id =3 and address_id=12;

commit work ;
--add columns
alter table customer add LastName varchar(20);

--rename column:
alter table  customer rename column LastName to City ;

update customer set CITY ='Miami' where firstName ='Merve';

--drop column
alter table  customer drop column City;


-- rename table

alter table customer rename to Shoppers;
select  * from customer;
select * from  SHOPPERS;

commit;

select  * from Shoppers;

drop table Shoppers;


select * from address;

truncate table  address;

drop table address;

commit;





create table Coworkers(
                          Employee_id integer primary key ,
                          "First Name" varchar(30),
                          "Last Name" varchar(30),
                          personnel_id  integer references ClassMates(Student_id)
-- foreign key,data needs to be matched with the referanced primary key
);

---insert into Coworkers values (1,'John', 'ERİC',2);
---insert into Coworkers values (1,'John', 'ERİC',null);
select  * from Coworkers;
