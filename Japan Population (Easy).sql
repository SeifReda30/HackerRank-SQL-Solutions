/* Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN. */

select sum(population) from city where countrycode='JPN'

/* Easy problem, The solution is similar to previous problems */