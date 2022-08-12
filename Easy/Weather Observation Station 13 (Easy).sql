/* Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880  and less than 137.2345 . Truncate your answer to 4 decimal places. */

SELECT FORMAT(SUM(LAT_N),'##.####') FROM (select LAT_N FROM STATION WHERE LAT_N>38.7880 AND LAT_N<137.2345) AS A

/* Similar to previous problem but I should filter the table with LAT_N values on this specific condition and calculate the sum of LAT_N of the filtered table and then used format function to round the result to 4 decimal places */