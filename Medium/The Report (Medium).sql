/* Ketty gives Eve a task to generate a report containing three columns: Name, Grade and Mark. Ketty doesn't want the NAMES of those students who received a grade lower than 8. The report must be in descending order by grade -- i.e. higher grades are entered first. If there is more than one student with the same grade (8-10) assigned to them, order those particular students by their name alphabetically. Finally, if the grade is lower than 8, use "NULL" as their name and list them by their grades in descending order. If there is more than one student with the same grade (1-7) assigned to them, order those particular students by their marks in ascending order.

Write a query to help Eve. */

select * from (select name,grade,marks from students join grades on students.marks>=grades.min_mark and students.marks<=grades.max_mark) as a 
where a.grade>=8 and a.grade<=10
union all
select NULL,grade,marks from 
(select grade,marks from students join grades on students.marks>=grades.min_mark and students.marks<=grades.max_mark) as a 
where a.grade>=1 and a.grade<=7 order by grade desc,name asc,marks asc;

/* In this solution I had to write two queries , first one is to get the students grades by joining students and grades tables and matching the rows which the grade satisfy the condition of the student mark is between min_mark and max_marks , then retrieving the name,grade and marks then  filtering the results with the grades greater than 8 and smaller than 10
Second Query is similar to first one but differs in the filtering results condition which is grades greater than 1 and smaller than 7 and replacing name with null in columns
Then I used union all to merge the two results rows with each other

*/