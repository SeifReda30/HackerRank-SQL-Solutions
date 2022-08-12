/* Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates. */

select distinct city from station where city like '[aeiouAEIOU]%';

/* The Solution was about filtering the table by the cities which start with vowels I solved it by using like keyword to find a specific pattern in the word which is displayed by the wildcard which contain all the capital and small vowels letters */