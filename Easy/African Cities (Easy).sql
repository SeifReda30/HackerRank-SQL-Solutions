/* Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

select city.name from city join country on city.countrycode = country.code where continent='Africa'

/* Another Basic Join Problem similar to previous problem but here we need only city names in Africa Contienet */