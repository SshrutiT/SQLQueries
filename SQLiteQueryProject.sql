/* QUERY1
Query all columns for all American cities in the CITY table with populations larger than 100000. 
The CountryCode for America is USA.*/

SELECT * FROM CITY WHERE (POPULATION > 100000 AND COUNTRYCODE ='USA');

/*QUERY 2
Query the NAME field for all American cities in the CITY table with populations larger than 120000.
The CountryCode for America is USA.
*/
SELECT NAME FROM CITY WHERE  (POPULATION > 120000 AND COUNTRYCODE ='USA');

/*QUERY3
Query all columns (attributes) for every row in the CITY table.
*/
SELECT * FROM CITY;


/*QUERY 4
Query all columns for a city in CITY with the ID 1661.*/

SELECT * FROM CITY WHERE ID=1661;

/*QUERY 5
Query all attributes of every Japanese city in the CITY table. 
The COUNTRYCODE for Japan is JPN.
*/

SELECT * FROM CITY WHERE COUNTRYCODE ='JPN';


/*QUERY 6 Query the names of all the Japanese cities in the CITY table. 
The COUNTRYCODE for Japan is JPN.   */

SELECT NAME FROM CITY WHERE COUNTRYCODE ='JPN';

/*QUERY 7
Query a list of CITY and STATE from the STATION table.
*/

SELECT CITY ,STATE FROM STATION;


/*QUERY 8
Query a list of CITY names from STATION for cities that have an even ID number. 
Print the results in any order, but exclude duplicates from the answer.
*/
SELECT  DISTINCT(CITY)  FROM STATION WHERE (ID%2=0);



/*qUERY 9 Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.*/

SELECT DISTINCT(CITY) FROM STATION WHERE CITY REGEXP '^[AEIOU]'; 


/*QUERY 10 Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.*/

select distinct city
from station
where city like '%a'
or
city like '%e'
or
city like '%i'
or
city like '%o'
or
city like '%u';


/*qUERY 11 Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
*/
select distinct city
from station
WHERE CITY REGEXP '^[aeiou].*[aeiou]$'


/*query 12  Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.*/
SELECT DISTINCT city
FROM   station
WHERE  NOT city LIKE 'A%'
       AND NOT city LIKE 'E%'
       AND NOT city LIKE 'I%'
       AND NOT city LIKE 'O%'
       AND NOT city LIKE 'U%';



/*query 13 Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.*/

SELECT DISTINCT city
FROM   station
WHERE  NOT city LIKE '%A'
       AND NOT city LIKE '%E'
       AND NOT city LIKE '%I'
       AND NOT city LIKE '%O'
       AND NOT city LIKE '%U';  


/*query 13  Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.*/

SELECT DISTINCT CITY FROM STATION WHERE 
LOWER(SUBSTR(CITY,1,1)) NOT IN ('a','e','i','o','u') OR 
LOWER(SUBSTR(CITY, LENGTH(CITY),1)) NOT IN ('a','e','i','o','u');  


/*query 14  Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.*/ 

SELECT DISTINCT CITY FROM STATION WHERE 
LOWER(SUBSTR(CITY,1,1)) NOT IN ('a','e','i','o','u') AND 
LOWER(SUBSTR(CITY, LENGTH(CITY),1)) NOT IN ('a','e','i','o','u');  


/*query 15 Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.*/

select name from employee order by name asc;

/* query 16 Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee 
having a salary greater than  per month who have been employees for less than  months. Sort your result by ascending employee_id.*/

select  name from employee where salary > 2000 and  months < 10 order by employee_id asc;


/*query 17 Query the average population of all cities in CITY where District is California.*/

select avg(population) from city where district ='California'


/*Query18  the average population for all cities in CITY, rounded down to the nearest integer.*/

select round(avg(population)) from city 


/*Query 19 the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.*/

select sum(population) from city where countrycode ='JPN'



/*query 20  Query the difference between the maximum and minimum populations in CITY.*/
select max(population) - min(population) from city;





