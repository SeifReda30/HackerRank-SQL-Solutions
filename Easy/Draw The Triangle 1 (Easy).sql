/* P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5): 

* * * * * 
* * * * 
* * * 
* * 
*

*/

declare @i int
set @i=20
while @i>0
begin
    select replicate('* ',@i)
    set @i=@i-1  
end

/* Famous Programming problem to apply loop statement, In this solution I used while loop to loop on the star character i times in each row , I used i variable which starts with 20 and then every iteration I check for i if it is greater than 0 or not to maintain that the loop will do 20 iterations , for every iteration i use replicate funtion to replicate the star character i times and then print it , for example in the first iteration i is equal to 20 so i print star character 20 times by using replicate function in the first row , and then decrement i variable to make the loop reach its end at i=1   */