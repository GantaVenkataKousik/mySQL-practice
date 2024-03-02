# Write your MySQL query statement below
select name,bonus from
Employee e left join
Bonus b on
e.empId = B.empId
where bonus is null or
bonus<1000;
