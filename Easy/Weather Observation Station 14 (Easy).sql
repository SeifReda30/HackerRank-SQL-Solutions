/* Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345 . Truncate your answer to 4 decimal places. */

select CAST(MAX(LAT_N) AS DECIMAL(8,4)) FROM STATION where LAT_N<137.2345

/* In this solution I used CAST function to convert the result of maximum LAT_N value to be a decimal value with 4 decimal places only as stated in the problem description */