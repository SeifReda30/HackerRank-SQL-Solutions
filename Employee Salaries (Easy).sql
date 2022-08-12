/* Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than  per month who have been employees for less than  months. Sort your result by ascending employee_id. */

select name from employee where salary>2000 and months<10 order by employee_id 

/* The solution is about ordering the table by employee id then filtering the table by salary and months */