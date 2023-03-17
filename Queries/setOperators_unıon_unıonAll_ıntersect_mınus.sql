/*

 */


SELECT *
FROM DEVELOPERS
UNION
SELECT *
FROM TESTERS;


select NAMES from DEVELOPERS
union
select NAMES from TESTERS;
--removes the duplicated rows,asceding


select * from DEVELOPERS
union all
select * from TESTERS;
 -- Does not remove duplicated rows, and doesnt sort


select NAMES from DEVELOPERS
minus
select names from TESTERS;
--returns the 1st query's rows that are not matching 2nd query's rows

select NAMES from DEVELOPERS
intersect
select names from TESTERS;
--returns the matching rows from two queries



