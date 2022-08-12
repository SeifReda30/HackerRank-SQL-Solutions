/*
Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.

Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer 
*/


select ceil(avg(salary) - avg (replace(salary,0,''))) from employees

/* The solution is about using replace function to replace all zeros in salary column with empty character in order to remove all zeros in the salary column and then get the average of salary based on that conversion and got subtracted from salary column original values and then I Took the ceil of the result which is the least integer greater than the decimal value */