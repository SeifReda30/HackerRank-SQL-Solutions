/* 

Generate the following two result sets:
Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:
There are a total of [occupation_count] [occupation]s.

*/

select concat(name,'(',substring(occupation,1,1),')') from occupations order by name
select 'There are a total of ' , count(occupation) , concat(lower(occupation),'s.') from occupations group by (occupation) order by count(occupation) , occupation



/* The solution consists of two queries , first query is about getting all occupations followed by first letter of proffession , 
I used concat as the result string consists of two parts , first part is the occupation name , second part is the first letter of proffession 
and it is done by substring function after specifieng the word and the start and end position of the substring  */

/* Second Query is about getting the total number of each occupation and it is done by using aggregate function count and the result grouped by
the occupation and the final result formatted by the concat function */