# Write your MySQL query statement below
WITH result(id, student) AS 
(
    SELECT id-1 as id , student FROM Seat WHERE id%2=0

    UNION 

    SELECT id+1 as id , student FROM Seat WHERE id%2!=0 and id!=(select count(id) from Seat)

    UNION 

    SELECT id as id , student FROM Seat WHERE id%2!=0 and id=(select count(id) from Seat)


)

select * FROM result order by id;
