 /*
  CREATE TABLE:
  SYNTAX:
  create table NAME(
  ColumnName1 DataType Constraint,
  ColumnName2 DataType Constraint);

  constraint is not mandatory


  INSERT:
INSERT INTO tableName(column1 , column2 ...)
 VALUE (value1, value2 .. );

  UPDATE:
  update TableName Set ColumnName=Value where conditions;

  Delete:
  Delete From TableName Where Condition;

  COMMİT:
  commit; or commit work ;

  ALTER:
  add column:
  alter TABLE tablename add columnname Datatype;
  rename column:
  alter table tablename rename column columnname to newcolumn;

  Dropcolumn:
  alter table tablename drop column columnName;

  Rename table:
  Alter table tablename renaem to newtablename;


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
    address_id INTEGER REFERENCES address(address_id)
);
 insert into customer (customer_id, firstName, address_id) values (1,'Merve',5);
 insert into customer (customer_id, firstName, address_id) values (2,'Elif',7) ;

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
