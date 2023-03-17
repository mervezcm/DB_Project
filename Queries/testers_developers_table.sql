create table Developers
(

    Id_Number Integer primary key,

    Names     varchar(30),

    Salary    Integer

);

create table Testers
(

    Id_Number Integer primary key,

    Names     varchar(30),

    Salary    Integer

);



insert all
    into developers
values (1, 'Nurullah', 155000)

into developers
values (2, 'Safwan', 142000)

into developers
values (3, 'Erhan', 850000)

into developers
values (4, 'Seyfo', 120000)

into testers
values (1, 'Seyfo', 110000)

into testers
values (2, 'Hakan', 105000)

into testers
values (3, 'Ibrohim', 100000)

select *
from dual;

commit work;

