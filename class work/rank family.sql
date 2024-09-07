create database adv_sql;
select * from adv_sql.ranks where Salary is not null;

insert into adv_sql.ranks values(8,'sales', 1700), (9,'it',1500);
select *,
rank() over (order by salary desc) rank_,
dense_rank() over (order by salary desc) d_rank,
row_number() over (order by salary desc) r_num
 from adv_sql.ranks where Salary is not null;

select * from adv_sql.ranks;




