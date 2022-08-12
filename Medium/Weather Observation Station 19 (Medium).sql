/* 
Consider P1(a,c) and P2(b,d) to be two points on a 2D plane where  are the respective minimum and maximum values of Northern Latitude (LAT_N) and  are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

Query the Euclidean Distance between points P1 and P2 and format your answer to display  decimal 4 digits. */

select cast(sqrt((power(min(LAT_N)-max(LAT_N),2))+( power(min(Long_w)-max(Long_w),2))) as decimal (18,4)) from station;

/* Similar to previous problem, I searched for Euclidean Distance and interpreted the formula to sql code, sqrt function is used to calculate 
square root and power to calculate the power of number to number */