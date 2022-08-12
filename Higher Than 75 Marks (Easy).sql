/* Query the Name of any student in STUDENTS who scored higher than 75  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID. */

select name from students where marks>75 order by substring(name,len(name)-2,len(name)),id

/* The Solution was about using substring function to specify last 3 characters in the word and order the table by these characters and id  */

/* Another Solution : select name from students where marks>75 order by right(name,3),id -- right function specify last 3 characters directly */