/* Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780 . Round your answer to 4 decimal places. */

select top 1 cast(round (LONG_W,4) as DECIMAL(18,4)) FROM STATION WHERE LAT_N>38.7780 ORDER BY LAT_N

/* Similar to previous problem but It should order the filtered table by LAT_N Values and then retrieve the LONG_W value which has lowest LAT_N value greater than 38.7780  */