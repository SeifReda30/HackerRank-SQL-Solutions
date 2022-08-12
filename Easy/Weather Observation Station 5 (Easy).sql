/* Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically. */

select top 1 city,len(city) from station order by len(city),city;
select top 1 city,len(city) from station order by len(city) desc , city asc;

/* The problem requires two queries, first query was about getting the lowest city in length and the sorted alphabetically so I used order by to order the table by the length of the city word and by the word alphabet and I used top 1 to retrieve the first row value in the ordered table*/
/* Second query similar to the first one but the table was ordered by length of city word descindingly and by word alphabet */