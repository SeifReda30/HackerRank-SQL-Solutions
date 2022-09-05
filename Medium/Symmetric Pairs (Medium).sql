/* You are given a table, Functions, containing two columns: X and Y.
Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.

Write a query to output all such symmetric pairs in ascending order by the value of X. List the rows such that X1 ≤ Y1.

*/

select A.X,A.Y  from Functions as A join Functions as B on A.X=B.Y and A.Y=B.X and A.X<=A.Y where A.X!=A.Y
union all
select A.X,A.Y  from Functions as A join Functions as B on A.X=B.Y and A.Y=B.X and A.X<=A.Y group by A.X,A.Y having count(*)>1 
order by A.X,A.Y

/* In this solution I made self join of the table to get only the rows which pass the condition of the symmetric pair,
but the result contains the matched rows that can be once or more than once so if the matched rows exists once and X not equal Y then it pass the condition, 
if the matched row exitss more than once and X equal Y then it pass the condition so I used Union to get all the matched rows that passed the symmetry condition */ 