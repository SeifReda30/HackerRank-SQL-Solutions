/* Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns. 
*/

select sum(city.population) from city join country on  CITY.CountryCode=COUNTRY.Code where country.continent='Asia'

/* Basic join solution, as I calculated the sum of city population after joining city and country tables by the equality of foreign key country.code and primary key city.countrycode then filtered the result table by country continent = 'Asia' */