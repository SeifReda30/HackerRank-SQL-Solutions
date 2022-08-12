/* Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates. */

select distinct city from station where city like '%[^aeiou]';

/* The Solution is similar to previous problem but % wildcard will be in different position as the city required to not end with vowels */