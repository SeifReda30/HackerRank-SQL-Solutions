/* Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates. */

select distinct city from station where city like '[^aeiou]%[^aeiou]';

/* The Solution is similar to previous problems but % wildcard is in the half of the like operator as the city do not start and do not end with vowels */