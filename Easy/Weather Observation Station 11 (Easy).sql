/* Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates. */

select distinct city from station where city like '[^aeiou]%' or city like '%[^aeiou]';

/* The Solution is mixing of previous problems as it stated the city column can not start or end with vowels */