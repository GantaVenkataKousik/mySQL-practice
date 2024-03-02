select DATE_FORMAT(trans_date,'%Y-%m')
as month,country,
count(id) as trans_count,
sum(case when state='approved' then 1 else 0 end) as approved_count,
sum(amount) as trans_total_amount,
sum(if(state='approved',amount , 0)) as approved_total_amount
from Transactions
group by month,country;
