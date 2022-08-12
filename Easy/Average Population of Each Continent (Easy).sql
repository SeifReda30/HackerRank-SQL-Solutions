/* Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

select country.continent,floor(avg(city.population)) from country join city on city.countrycode=country.code group by continent

/* In this solution I aggregated the result of joining city and country tables to the continent values and then retrieved the continent name and the average population of each continent and then used floor function to round the result down to nearest integer */