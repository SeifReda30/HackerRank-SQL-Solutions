/*
Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Equilateral: It's a triangle with  sides of equal length.
Isosceles: It's a triangle with  sides of equal length.
Scalene: It's a triangle with  sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.
*/

select case when (A+B>C and A+C>B and B+C>A) and (A = B and B=C and A=C) then 'Equilateral' when (A+B>C and A+C>B and B+C>A) and (A=B or B=C or A=C) then 'Isosceles' when (A+B>C and A+C>B and B+C>A) and (A!=B and A!=C and B!=C) then 'Scalene' else 'Not A Triangle' end from triangles 

/* The Solution is about comparing the values of A and B and C as they are the triangle sides by using case when, but before checking for equilateral or isosceles or scalene it should check for the sides if they are forming a triangle or not so I but a constant condition for traingle checking before triangle type checking */