SELECT * FROM adv_sql.running_sum_partition;

select * ,
sum(sales) over(partition by class order by date desc rows between unbounded preceding and current row) running_sum_part
from adv_sql.running_sum_partition;



