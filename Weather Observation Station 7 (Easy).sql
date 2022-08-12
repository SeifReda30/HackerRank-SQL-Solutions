/* Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates. */

select distinct city from station where city like '%[aeiouAEIOU]';

/* The Solution was about retrieving all cities which end with vowels, it was similar to previous problem but changed the % wildcard position */