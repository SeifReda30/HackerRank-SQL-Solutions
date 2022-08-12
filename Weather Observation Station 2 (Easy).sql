/* 
Query the following two values from the STATION table:

The sum of all values in LAT_N rounded to a scale of 2 decimal places.
The sum of all values in LONG_W rounded to a scale of 2 decimal places. 
*/

select format(sum(LAT_N),'##.##'),format(sum(LONG_W),'##.##') FROM STATION

/* in This Soltuion I used format function to round the result of the sum function to 2 decimal places so I used '##.##' to specify the number of decimal values to be rounded after the decimal place */