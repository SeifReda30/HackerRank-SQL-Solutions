/* Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table. */

select count(city)-count(distinct city) from station;

/* The Solution was about using count function which counts all rows of the table, and distinct keyword to filter the table rows by getting the distinct rows from city column and count the filtered result and finally subtracting the total number of rows in table and total number of rows in filtered table */
