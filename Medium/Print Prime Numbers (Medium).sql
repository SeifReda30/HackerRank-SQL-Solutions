/* Write a query to print all prime numbers less than or equal to 1000 . Print your result on a single line, and use the ampersand (&) character as your separator (instead of a space). */

declare @i int;
declare @j int;
declare @flag int;
declare @result varchar(1000);
set @result ='';
set @i = 2;
set @j=2;
set @flag=1;
while @i<=1000
begin
    set @flag=1;
    set @j=2;
    while @j<@i
    begin
        IF @i%@j=0
        begin
            set @flag=0;
            BREAK;
        end
        set @j=@j+1;
    end 
    IF @flag=1
        set @result=@result+convert(varchar(20),@i)+'&';   
    set @i=@i+1;
    
end 
select substring(@result,1,len(@result)-1);


/* Prime numbers are numbers that are divisible by 1 and by it self only , so in this solution make nested loop, 
outer loop are looping on i variable which starts with 2 to 1000, 
inner loop are iterating from 2 to the previous number to i in order to check if i variable is divisible by any number in this range or not , 
if yes so i value in this iteration is not prime number because it is divisible by an number or more beside 1 and it self, if no , 
so it its a prime number , the result is a string which should have all the numbers satisfied the condition with '&' character between them 
so I append every prime number to empty string called result and then append '&' character to it, 
in this case we will get all prime numbers with '&' between them and '&' at the end of the string 
so finally i excluded this character at the end of the string to has a corrected format  */