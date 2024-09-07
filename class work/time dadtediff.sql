create table riyaz.timee (t1 time , t2 time);
insert into riyaz.timee (t1,t2)  values( '10:50:00','12:30:00'),('12:30:00','13:52:00'),('05:45:00','09:00:00');
select * , timediff(t2,t1) as sec_df	 from riyaz.timee;   -- hour minut second


select *, concat(hour(timediff(t2,t1)),' hr '
				,minute(timediff(t2,t1)) ,' minut '
				,second(timediff(t2,t1)) ,' sec') as hr_min_sec
				
                from riyaz.timee;
select concat(1,2,3);
select *, hour(timediff(t2,t1)) as hr	,minute(timediff(t2,t1)) as minut,
second(timediff(t2,t1)) as sec_df	 from riyaz.timee;

select * , timestampdiff(second, t1,t2) as sec_df	 from riyaz.timee; -- in second

select * , timestampdiff(second, t1,t2)/3600 as hr_df	 from riyaz.timee;

select * , timediff(t1,t2) as sec_df	 from riyaz.timee;
select * , DATEDIFF(t2, t1)  from riyaz.timee;
select * from riyaz.timee;







select  DATEDIFF('2022-01-03', '2022-01-01');
SELECT DATEDIFF('2007-12-31 23:59:59','2007-12-30');

SELECT DATEDIFF('2022-02-01', '2022-01-01');

select TIMEDIFF('00:01:20', '00:59:59');



