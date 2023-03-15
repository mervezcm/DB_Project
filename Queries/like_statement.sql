/*
LiKE statement :partial search
start with: CHAR%
Ends with: %CHAR
contains: %CHAR%

syntax:
select Columns from Table where Value Like '';

• Percent ( %) for matching any sequence of characters.
• Underscore ( _ ) for matching any single character.
*/
---start with
select COUNTRY_NAME from  COUNTRIES;
select COUNTRY_NAME  from COUNTRIES where COUNTRY_NAME like 'Au%';
---ends with
select COUNTRY_NAME  from COUNTRIES where COUNTRY_NAME like '%a';
select count(COUNTRY_NAME)  from COUNTRIES where COUNTRY_NAME like '%a';

---start with and ends with
select COUNTRY_NAME  from  COUNTRIES where COUNTRY_NAME like 'A%' and COUNTRY_NAME like '%a';

--contains:
select COUNTRY_NAME  from  COUNTRIES where COUNTRY_NAME like '%b%';

