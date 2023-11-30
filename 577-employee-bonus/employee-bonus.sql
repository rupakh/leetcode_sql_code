# Write your MySQL query statement below
select E.name,b.bonus
from 
Employee E left join Bonus B on
e.empId = b.EmpId
where b.bonus < 1000 or b.bonus is null 