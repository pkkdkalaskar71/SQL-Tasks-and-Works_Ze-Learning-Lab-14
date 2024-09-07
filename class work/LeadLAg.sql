SELECT * FROM riyaz.leadlag;
      
      
 SELECT *, lead(time_) over(partition by trainnumber order by TrainNumber) t2 FROM riyaz.leadlag;  
 select * , timediff(t2,t1)  sec_df	 from riyaz.timee;
select * , DATEDIFF(t2, t1) r from riyaz.timee;
SELECT * FROM riyaz.leadlag;






-- time to next station
-- elapsed time 	till now

-- The LAG() function is used to get value from row that precedes / above the current row.

  -- The LEAD() function is used to get value from row that succeeds/ below  the current row.
   
  select *, concat(hour(timediff(t2,t1)),' hr '
				,minute(timediff(t2,t1)) ,' minut '
				,second(timediff(t2,t1)) ,' sec') as hr_min_sec
                from riyaz.timee;   
  

SELECT * FROM riyaz.leadlag;
SELECT *, lead(time_) over(partition by trainnumber ) ti FROM riyaz.leadlag;

SELECT *, lead(time_) over(partition by trainnumber order by TrainNumber) ti FROM riyaz.leadlag;
select *, concat(hour(timediff(lead(time_) over(partition by trainnumber ) ,time_)),' hr ' 
				,minute(timediff(lead(time_) over(partition by trainnumber ),time_)) ,' minut '
				,second(timediff(lead(time_) over(partition by trainnumber ),time_)) ,' sec') as time_to_next_station
		 FROM riyaz.leadlag;
         
         -- alternate way
         
select *, concat(hour(timediff(ti,time_)),' hr '
				,minute(timediff(ti,time_)) ,' minut '
				,second(timediff(ti,time_)) ,' sec') as time_to_next_station from
			(SELECT *, lead(time_) over(partition by trainnumber ) ti FROM riyaz.leadlag) a;         
            
         
     
select *, concat(hour(timediff(t1 ,time_)),' hr ' ,
minute(timediff(t1,time_)) ,' minut ',
second(timediff(t1,time_)) ,' sec') time_to_next_station  

from (select * ,  lead(time_) over(partition by trainnumber ) t1
		 FROM riyaz.leadlag) as a ;   
    
         

select *, concat(hour(timediff(ti,time_)),' hr '
				,minute(timediff(ti,time_)) ,' minut '
				,second(timediff(ti,time_)) ,' sec') as time_to_next_station from
			(SELECT *, lead(time_) over(partition by trainnumber ) ti FROM riyaz.leadlag) a;         
            

select TrainNumber,Station,Time_,tti, concat(hour(timediff(time_,tti)),' hr '
				,minute(timediff(time_,tti)) ,' minut '
				,second(timediff(time_,tti)) ,' sec') as time_to_next_station from
			(SELECT *, min(time_) over(partition by trainnumber order by time_ ) tti FROM riyaz.leadlag) a;    


SELECT *, timediff((min(time_) over(partition by trainnumber order by trainnumber )),time_) FROM riyaz.leadlag;



-- select MOD('01:02:30') AS seconds_part;


