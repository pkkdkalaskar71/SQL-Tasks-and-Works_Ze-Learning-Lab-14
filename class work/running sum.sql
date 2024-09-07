SELECT * FROM adv_sql.running_sum;

select * ,
sum(sales) over(order by date desc rows between unbounded preceding and current row) running_sum
from adv_sql.running_sum;