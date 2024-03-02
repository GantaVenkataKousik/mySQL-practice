select distinct l1.num as ConsecutiveNums from 
Logs l1 join logs l2 join Logs l3 on 
l1.id+1 = l2.id and l2.id+1 = l3.id 
where l1.num=l2.num and l2.num=l3.num;
