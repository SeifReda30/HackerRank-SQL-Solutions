/* Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer. */


select distinct city from station where id%2=0

/* The Solution was about filtering the table by ids which is divisible by 2 (Even) and re-filtering it by including the distinct rows only and excluding every duplicated row by using distinct keyword before writing the select list */ 