/* Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN. */

select name from city where countrycode='JPN';

/* Similar to previous problem but the result observations is specified to name attribute not all attributes so I projected the result table */