create table  ClassMates (
    Student_id integer primary key , -- must be unique , can not be null
    "First Name" varchar(30),
    "Last Name" varchar(30)
);

select  * from ClassMates;

create table Coworkers(
                          Employee_id integer primary key ,
                          "First Name" varchar(30),
                          "Last Name" varchar(30),
                          personnel_id  integer references ClassMates(Student_id)
-- foreign key,can be duplicated,can be null.
-- --data needs to be matched with the referanced primary key
);

--insert into Coworkers values (1,'John', 'ERİC',2);
insert into Coworkers values (1,'John', 'ERİC',null);
select  * from Coworkers;

insert into  ClassMates values (1,'Aaron','Daniel');
select * from  ClassMates;

insert into Coworkers values (2,'Jimmy', 'Rose',1);
select *from Coworkers;

-- foreign key data is not mactching with the referenced primary  key's data

select * from ClassMates;

update ClassMates set Student_id=4 where Student_id=1;
alter table ClassMates drop column  Student_id;
truncate table ClassMates;
drop table ClassMates;

alter table Coworkers drop column personnel_id ;
update ClassMates set Student_id=4 where Student_id=1;
alter table ClassMates drop column  Student_id;
truncate table ClassMates;
drop table ClassMates;