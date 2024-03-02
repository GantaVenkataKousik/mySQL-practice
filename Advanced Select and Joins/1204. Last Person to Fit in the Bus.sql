select Q1.person_name from
Queue Q1 join Queue Q2 on
Q1.turn>=Q2.turn
group by Q1.turn
having sum(Q2.weight)<=1000
order by sum(Q2.weight) desc
limit 1;
