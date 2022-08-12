/* Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates. */

select distinct city from station where city like '[aeiou]%[aeiou]';

/* The Solution was about getting all rows which have city contain vowels, it it similar to previous problem but as there were the position of the vowels should be in the word so % wildcard should be in the half of like operator */