/* Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA. */

Select name from city where countrycode='USA' and population>120000;

/* as the previous problem, it was easy and it was about using select and where statements to filter the results */