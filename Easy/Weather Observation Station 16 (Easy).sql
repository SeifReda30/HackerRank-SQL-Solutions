/* Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780 . Round your answer to 4 decimal places. */

select top 1 cast(round(LAT_N,4) as decimal(6,4)) from station where LAT_N>38.7780 order by LAT_N;

/* Similar to previous problem but I converted the LAT_N value to decimal(6,4) which takes only 4 decimal places after the decimal point and ignoring all zeros after the decimal point */