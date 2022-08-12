/* You are given three tables: Students, Friends and Packages. Students contains two columns: ID and Name. Friends contains two columns: ID and Friend_ID (ID of the ONLY best friend). Packages contains two columns: ID and Salary (offered salary in $ thousands per month). */



select students.name from (select friends.id,friends.friend_id,packages.salary from friends join packages on friends.id=packages.id) as person 
join 
(select friends.id,friends.friend_id,packages.salary from friends join packages on friends.friend_id=packages.id) as friend 
on person.id=friend.id and person.friend_id=friend.friend_id join students on person.id=students.id where friend.salary>person.salary order by friend.salary asc

/* In this solution I selected two tables and then joined them , first table is the data of the Person which contains his ID, his Friend ID and his Salary by joining friends table with package to get the salary of the person beside his own data , second table contains the data of The Friends, their ID and their friends id and their salary by joining the friends id in friends table with packages to get friends salary , and then I joined the two tables to get the person salary beside the friends salary and the filtered the result table by which the friends salary is greater than person salary and finally I joined the filtered result table with students table to get the name of each person id in the filtered result table */