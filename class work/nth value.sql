SELECT * FROM adv_sql.nth_value_first_value;


select * , first_value(sales) over(partition by city order by sales) from nth_value_first_value;

select * , last_value(sales)
over( order by sales  rows between unbounded preceding and unbounded following) last_value_ 
from nth_value_first_value;

select * , 
last_value(sales) over(partition by city order by sales rows between unbounded preceding and unbounded following) last_value__part
from nth_value_first_value;

select * , 
nth_value(sales,15) over(order by sales rows between unbounded preceding and unbounded following) nth_value_
from nth_value_first_value;

select * , 
nth_value(sales,2) over(partition by city order by sales rows between unbounded preceding and unbounded following) nth_value__part
from nth_value_first_value;
