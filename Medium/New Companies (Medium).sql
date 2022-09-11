/* 
Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy:
Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.
Note:
The tables may contain duplicate records.
The company_code is string, so the sorting should not be numeric. For example, if the company_codes are C_1, C_2, and C_10, then the ascending company_codes will be C_1, C_10, and C_2.
*/
select first.company_code,first.founder,first.count_lead,second.count_senior,third.count_manager,fourth.count_employee from
(select company.company_code,company.founder,count(*) as count_lead from company inner join (select distinct * from Lead_Manager) as a on company.company_code=a.company_code group by company.company_code,company.founder) as first
join
(select company.company_code,count(*) as count_senior from company inner join (select distinct * from Senior_Manager) as b on company.company_code=b.company_code group by company.company_code) as second
on first.company_code=second.company_code
join
(select company.company_code,count(*) as count_manager from company inner join (select distinct * from Manager) as c on company.company_code=c.company_code group by company.company_code) as third
on first.company_code=third.company_code
join
(select company.company_code,count(*) as count_employee from company inner join (select distinct * from Employee) as d on company.company_code=d.company_code group by company.company_code) as fourth
on first.company_code=fourth.company_code
order by first.company_code
/* 
The Challenge in this problem is to make multiple join to join all the tables with respect to each company code.
Note : you should join the tables after removing duplicate values from each table .
*/