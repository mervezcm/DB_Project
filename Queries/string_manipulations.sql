/*
 Text Functions: string manipulations
 1 concatenation operator : ||
 2 Concat (value1,value2)
 3 Upper (Value)
 4 Lower (value)
 5 INITCAP (Value)
 6 Length (value)
 7 replace( column name, oldValue , newValue )
 8 substr(columnName , BegIndex , EndIndex )
 9Trim (Value)
** ONLY USED FOR THE DİSPLAY , DOESN'T MODİFY THE TABLE
 */

-- 1 concatenation operator : ||

select EMAIL || '@gmail.com' from EMPLOYEES;
select  FIRST_NAME || ' ' || LAST_NAME from EMPLOYEES;

---2 Concat (value1,value2)
select concat( EMAIL ,'@gmail.com') from EMPLOYEES;
select concat(concat( FIRST_NAME ,' ') , LAST_NAME) from EMPLOYEES;

-- 3 Upper (Value)
select upper(FIRST_NAME) from EMPLOYEES;


--- 4 Lower (value)
select  lower(FIRST_NAME ) from  EMPLOYEES;

---5 INITCAP (Value)

select initcap(EMAIL) from EMPLOYEES;
select initcap(EMAIL) from EMPLOYEES;

--- 6 Length (value)
select  length(FIRST_NAME) from EMPLOYEES;
select  FIRST_NAME , length(FIRST_NAME) from EMPLOYEES;

--7 replace( column name, oldValue , newValue )
 select replace(FIRST_NAME, 'e', 'E') from EMPLOYEES;
select FIRST_NAME from EMPLOYEES;

--8 substr(columnName , BegIndex , EndIndex )

 select  FIRST_NAME, substr(FIRST_NAME,0,1) from EMPLOYEES;--ellen -->e
 select  FIRST_NAME,LAST_NAME, substr(FIRST_NAME,0,1) || substr(LAST_NAME,0,1) from EMPLOYEES;-- ellen abel -->ea

 --9Trim (Value)
select FIRST_NAME from EMPLOYEES;
select concat('      ' ,FIRST_NAME )from EMPLOYEES;
select trim(concat('      ' ,FIRST_NAME ))from EMPLOYEES;