/**
  ORDER BY STATEMENT
The ORDER BY clause allows you to sort the rows returned from the
SELECT statement in ascending or descending order based on criteria
specified.

  SELECT column 1, column 2
FROM table name
ORDER BY column_1 ASC / DESC;
The column
name we want
order by
Which order we want
ASC -- ascending order or DESC -- descending order
 */

select * from COUNTRIES order by REGION_ID; -- by default sorts in ascending order
select * from COUNTRIES where REGION_ID <5 order by REGION_ID asc;
select * from COUNTRIES order by REGION_ID desc;

