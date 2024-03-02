# Write your MySQL query statement below
select product_name,year,price from Sales S left join Product P 
on S.product_id = P.product_id;
