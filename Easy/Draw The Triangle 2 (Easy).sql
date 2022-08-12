/* P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* 
* * 
* * * 
* * * * 
* * * * *

*/

declare @i int
set @i=1
while @i<=20
begin
    select replicate('* ',@i)
    set @i=@i+1  
end


/* Similar to previous problem but here it is reversed, so i variable should starts with 1 and increment it in every iteration until i reach 20 so the stars printed from 1 to 20 */