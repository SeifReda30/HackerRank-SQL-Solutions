/* Query the total population of all cities in CITY where District is California. */

select sum(population) from city where district='california'

/* Easy Problem as I only used sum function to sum population after filtering the table by all rows which district = california */