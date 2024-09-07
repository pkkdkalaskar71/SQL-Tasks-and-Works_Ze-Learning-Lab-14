SELECT * FROM adv_sql.row_between;


SELECT *,
sum(sales) over(order by date rows between 1 preceding and 1 following) prc_1_cur_1_fol,
sum(sales) over(order by date rows between 2 preceding and 3 following) prc_2_cur_3_fol
FROM adv_sql.row_between;