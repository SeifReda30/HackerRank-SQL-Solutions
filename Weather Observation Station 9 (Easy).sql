/* Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates. */

select distinct city from station where city like '[^aeiou]%'

/* The Solution was about the negation of previous problem by using ^ before the list of characters in order to negate the pattern which the like operator specify */