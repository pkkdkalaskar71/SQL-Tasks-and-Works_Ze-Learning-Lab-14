
											-- filter indians and partition by ground and find rank
SELECT *,rank() over (partition by stadiumname order by runs desc) rnk FROM riyaz.partition_by_ground_yr_ind_orde where Country = 'India';
							
                            
					-- filter indians and partition by ground and ground wise find rank
select * from(
SELECT *,rank() over (partition by stadiumname order by runs desc) rnk 
FROM riyaz.partition_by_ground_yr_ind_orde
 where Country = 'India') a
where a.rnk = 1;


									-- partition by ground wise rank
 SELECT *,rank() over (partition by stadiumname,Year order by runs desc) rnk FROM riyaz.partition_by_ground_yr_ind_orde
 where Country = 'India';
 
								-- partition by ground,year and year wise rank
select * from
(SELECT *,rank() over (partition by stadiumname,Year order by runs desc) rnk FROM riyaz.partition_by_ground_yr_ind_orde
 where Country = 'India') a 
where a.rnk=1;

							-- using first value top run scorer in ground/year

select * , first_value(playername) over  (partition by stadiumname order by runs desc) highest_run from riyaz.partition_by_ground_yr_ind_orde
where country = 'India';
							-- using last value bottom run scorer in ground
select * , last_value(playername) over  (partition by stadiumname order by runs desc 
rows between unbounded preceding and unbounded following) lowest_run 
from riyaz.partition_by_ground_yr_ind_orde
where country = 'India';

							-- differnce from
                            
select * , first_value(runs) over  (partition by stadiumname order by runs desc) - runs diff_from 
from riyaz.partition_by_ground_yr_ind_orde
where country = 'India';


select * , first_value(runs) over  (partition by stadiumname , year order by runs desc) - runs diff_from 
from riyaz.partition_by_ground_yr_ind_orde
where country = 'India';

select * from riyaz.partition_by_ground_yr_ind_orde;


