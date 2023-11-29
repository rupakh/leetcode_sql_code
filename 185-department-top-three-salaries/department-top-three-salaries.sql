# Write your MySQL query statement below
WITH CTE AS
(
select d.name as Department, e.name as Employee, e.salary as Salary, 
dense_rank() OVER(PARTITION BY d.name ORDER BY e.salary DESC) AS Rank_1
from employee as e
inner join department as d 
on e.departmentId  = d.id
)
SELECT distinct Department, Employee, Salary
FROM CTE
WHERE RANK_1<=3
order by Department
