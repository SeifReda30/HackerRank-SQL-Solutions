/* 
You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N. 
Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node.
*/

select N , 'Root'  from BST where P is null
union
select a.N , 'Leaf' from BST as a left join BST as b on a.N=b.P where b.P is null
union
select case when a.N=b.P then a.N when a.P=b.N then a.P end , 'Inner' from BST as a join BST as b on a.N=b.P or a.P=b.N where b.P is not null and a.P is not null

/* 
The Solution is consisting of 3 queries , first to get the root node as it is the node which its parent is null so it is an easy quey
Second query is to get leaf nodes by making self join by joining 2 table objects of the same table and getting the rows which the node doesn't exist in the parents so that done by getting the nodes which its parent is null as a result of left join
Third query similar to the second but I made the self join to get the nodes that has a parent or parents that exist has nodes so that it is not a leaf node and finally excluded the root node so that it is also not a root node

*/