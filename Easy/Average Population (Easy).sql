/* Query the average population for all cities in CITY, rounded down to the nearest integer.*/

select floor(avg(population)) from city

/* New Math Function used here to solve the problem , after counting the population I floored the result (converting decimal number to the greater integer less than it) */