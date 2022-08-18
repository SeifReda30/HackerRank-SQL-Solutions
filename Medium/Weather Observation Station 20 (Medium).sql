/* A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal 4 places. */

select format(median,'##.####') from (SELECT
(
 (SELECT MAX(lat_N) FROM
   (SELECT TOP 50 PERCENT lat_N FROM station ORDER BY lat_N) AS BottomHalf)
 +
 (SELECT MIN(lat_N) FROM
   (SELECT TOP 50 PERCENT lat_N FROM station ORDER BY lat_N DESC) AS TopHalf)
) / 2 AS Median)  as a

