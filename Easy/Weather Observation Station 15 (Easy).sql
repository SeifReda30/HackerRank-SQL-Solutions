/* Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345 . Round your answer to 4 decimal places. */

select top 1 cast(ROUND(LONG_W,4) as float) from STATION where LAT_N<137.2345 order by LAT_N desc ;

/* In this solution I used round function to round the result of LONG_W to 4 decimal places , and then I put that value inside cast function to convert the result into float in order to remove all zeroes after the decimal places */