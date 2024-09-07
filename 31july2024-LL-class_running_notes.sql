# -- = comment / description
# = single line comment
# /* */ = multi line comment
# run / execute :- (ctrl + enter)
#-------------------------------#

#-------------------------------#
# 03-july-2024 #

/*show databases;
create database pralay;
use pralay;
create table stud_detail (id integer, name varchar(20), age integer, course char(20));
show tables;
select * from stud_detail;
desc stud_detail;*/
#-------------------------------#

#-------------------------------#
# 04-july-2024 #

# default server provides :- 4 files in server (information, performance, mysql, sys)

# numeric datatype
# 1. tinyint = 01 bytes - 2^8 - 04 digit (-128 to 127) - (range 0 to 255)
# 2. smallint = 02 bytes - 2^16 - 05 digits (-32768 to 32767) - (range 0 to 65535)
# 3. mediumint = 03 bytes - 2^24 - 09 digits (-8388608 to 8388607) - (range 0 to 16777215)
# 4. int = 04 bytes - 2^32 - 11 digits (-2147483648 to 2147483647) - (range 0 to 4294967295)
# 5. bigint = 08 bytes - 2^64 - 20 digits (-9223372036854775808 to 9223372036854775807) - (range 0 to 18446744073709551615)
# 6. decimal = ? - fixed point - ? - ?
# 7. float = ? - floating point - (precision can go to 24 places) - ?
# 8. double = ? - floating point - (precison can go to 53 places) - ?

# ?. char = (max 255 characters) - fixed length - space will be wasted - mobile_number, vehicle_number_plate, addhaar_card_number, pan_card_number
# ?. varchar = (max 255 characters) - dynamic length - space will be used as of length in word - name of person
# ?. tinytext = (max 255 characters) - ? - ?
# ?. text = (max 65535 characters) - ? - ?
# ?. mediumtext = (max 16777215 characters) - ? - ?
# ?. longtext = (max 4gb or 4294967295 characters) - ? - ?

## commands in SQL :-
# DDL = data defination language - (create, drop, alter, truncate, comment, rename) - (shortform to remember = DR C CAT) - creating the strucutre of BD
# DQL = data query language -  (select) - (shortform to remember = S) - retrieve the data from BD
# DML = data manipulation language - (insert, update, delete, lock, call, explain plan) - (shortform to remember = IUD LCE) - editing the data in DB
# DCL = data control language - permissions (grant, revoke) - (shortform to remember = GR) - assigns new privileges to a user account, access to specific BD
# TCL = transaction control language - (begin transaction, commit, rollback, savepoint) - (shortform to remember = BT CRS) - saves, undone, create a point in transaction od BD


/*insert into stud_detail values (1, 'Joe', 23, 'Java');
select * from stud_detail;
insert into stud_detail values (2, 'aman', 21, 'python');
select * from stud_detail;*/
#-------------------------------#

#-------------------------------#
# 05-july-2024 #

# mysql = a product - ?
# sql = platform where you write queries - ?
# ?

# UTC = Coordinated Universal Time - ? - ?
# GMT = Greenwich Mean Time Zone - ? - ?

# ?. date = from "1000-01-01" to "9999-12-31" - yyyy-mm-dd
# ?. datetime = from "1000-01-01 00:00:00" to "9999-12-31 26:59:59" - yyyy-mm-dd hh:mm:ss
# ?. timestamp = from "1970-01-01 00:00:01" to "2038-01-19 03:14:07" - yyyy-mm-dd hh:mm:ss
# ?. time = from "-839:59:59 to 838:59:59" - hh:mm:ss
# ?. year = 2 or 4 digits - default is 04 digits

/*use pralay;     -- database name
select * from stud_detail;     -- table name
create table patient_detail (id integer, name varchar(20), doa datetime, dob date);
desc patient_detail;
insert into patient_detail values (1, 'raj', '2024-01-01 12:40:20', '1982-02-20');
insert into patient_detail values (2, 'rahul', '2022-02-27 09:30:20', '1995-04-19');
select * from patient_detail;*/

/*create database education;
use education;
create table edu (e_id integer, e_name varchar(20), e_salary integer, e_age integer, e_gender varchar(07), e_dept varchar(20));
desc edu;
insert into edu values (1, 'sam', 95000, 45, 'male', 'operations');
insert into edu values (2, 'bob', 80000, 21, 'male', 'support');
insert into edu values (3, 'anne', 125000, 25, 'female', 'analytics');
insert into edu values (4, 'julia', 73000, 30, 'female', 'analytics');
insert into edu values (5, 'matt', 159000, 33, 'male', 'sales');
insert into edu values (6, 'jeff', 112000, 27, 'male', 'operations');
select * from edu;*/

/*create database teacher;
use teacher;
create table tea (roll_no integer, name varchar(20), address varchar(50), phone char(10), age integer);
desc tea;
insert into tea values (1, 'harsh', 'delhi', '9999999999', 18);
insert into tea values (2, 'pratik', 'bihar', '888888888', 19);
insert into tea values (3, 'riyanka', 'siliguri', '7777777777', 20);
insert into tea values (4, 'deep', 'ramnagar', '6666666666', 18);
insert into tea values (5, 'saptarhi', 'kolkata', '5555555555', 19);
insert into tea values (6, 'dhanraj', 'barabajar', '4444444444', 20);
insert into tea values (7, 'rohit', 'balurghat', '3333333333', 18);
insert into tea values (8, 'niraj', 'alipur', '2222222222', 19);
select * from tea;*/
#-------------------------------#

#-------------------------------#
# 08-july-2024 #

/*# alter (clauses :- add, drop, change, modify, rename) is used to manipulate structure of table here
alter table tea add column experience integer;
alter table tea add column salary integer;
select * from tea;
alter table tea drop experience;
alter table tea drop salary;
select * from tea;
alter table tea change age t_age integer;
select * from tea;
alter table tea change t_age age integer;
select * from tea;
desc tea;
alter table tea modify address varchar(100);
desc tea;
alter table tea modify address varchar(50);
desc tea;
alter table tea rename to teac;
alter table teac rename to tea;
select * from tea;*/
#-------------------------------#

#-------------------------------#
# 09-july-2024 #

/*select * from tea;
set sql_safe_updates = 0;
update tea set age = 100 where address = 'delhi';
select * from tea;
update tea set age = 18 where address = 'delhi';
select * from tea;
update tea set age = 7 where address = 'bihar' and roll_no = 2;     -- updating values on multiple condition (type no. :- 01)
select * from tea;
update tea set age = 19 where address = 'bihar' and roll_no = 2;
select * from tea;
update tea set age = 100, address = 'dubai' where roll_no = 1;     -- ypdaing values on multiple condition (type no. :- 02)
select * from tea;
update tea set age = 18, address = 'delhi' where roll_no = 1;
select * from tea;
# update tea set name = 'superman';     -- all name will be changed to superman
insert into tea values (100,'pralay','bangalore','0000000000',20);
select * from tea;
update tea set name = 'PK' where roll_no = 100;
select * from tea;
delete from tea where roll_no = 100;
select * from tea;*/

# drop table = deletes a table from the database
# truncate table = removes all records from the table
#-------------------------------#

#-------------------------------#
# 10-july-2024 #

# for using "llb", it is mentioned in "(task - 02 - 10july2024) tables.sql" named file.alter
# @ "D:\pk\main files\my education\BA\Learning Lab\zzz - 02 - tasks\zzz - assignments & tasks\4. sql\(task - 02 - 10july2024) tables.sql" this location in lappy
/*use llb;
select * from myemp;
select count(*) as count from myemp;
select emp_id, first_name from myemp;
select * from myemp;
select emp_id, first_name, last_name, salary from myemp;
select emp_id, first_name, last_name, salary, salary * 0.5 from myemp;
select emp_id, first_name, last_name, salary, salary * 0.5 as PF from myemp;
select * from myemp;
# select emp_id, first_name, last_name, salary, salary * 0.5 as PF, salary + PF as Total Salary from myemp;     -- PF is not in permanent data, it is created with query and output is given
select emp_id, first_name, last_name, salary, salary * 0.5 as PF, salary + salary * 0.5 as Total_Salary from myemp;
select * from myemp;
select distinct dep_id from myemp;     -- select all unique values in emp_id from myemp table
select count(distinct dep_id) as count_of_unique_department from myemp;
select * from myemp;
select * from myemp where dep_id = 90;
select count(*) as count from myemp where dep_id = 90;
select * from myemp;
select * from myemp where dep_id = 90 or dep_id = 60;
select count(*) as count from myemp where dep_id = 90 or dep_id = 60;    -- multiple condition (type 01)
select * from myemp;
select * from myemp where dep_id in (90, 60);
select count(*) as count from myemp where dep_id in (90, 60);    -- multiple condition (type 02)
select * from myemp;
select * from myemp where dep_id >=90;    -- multiple condition (type 03)
select count(*) as count from myemp where dep_id >=90;
select * from myemp;
select * from myemp where dep_id between 10 and 50;     -- multiple condition (type 04)
select count(*) as count from myemp where dep_id between 10 and 50;
select * from myemp;
select * from myemp where dep_id <> 30 and dep_id = 60;     -- multiple condition (type 05)
select count(*) as count from myemp where dep_id <> 30 and dep_id = 60;
select * from myemp;
select * from myemp where dep_id not in (30, 60);     -- multiple condition (type 06)
select count(*) as count from myemp where dep_id not in (30, 60);
select * from myemp;
select * from myemp where salary >= 8000;
select count(*) as count from myemp where salary >= 8000;
select * from myemp;
select * from myemp where salary between 8000 and 20000;
select count(*) as count from myemp where salary between 8000 and 20000;
select * from myemp;*/
#-------------------------------#

#-------------------------------#
# 11-july-2024 #

/*select * from llb.myemp;
select count(*) as count from llb.myemp where salary >= 8000;
select * from llb.myemp where salary >= 8000 and salary <= 10000;
select count(*) as count from llb.myemp where salary >= 8000 and salary <= 10000;
select * from llb.myemp;
select * from llb.myemp where salary between 2000 and 6000;
select count(*) as count from llb.myemp where salary between 2000 and 6000;
select * from llb.myemp;
select * from llb.myemp where not (salary >= 2000 and salary <= 6000);
select count(*) as count from llb.myemp where not (salary >= 2000 and salary <= 6000);
select * from llb.myemp;
select * from llb.myemp where salary >= 8000 or dep_id = 90;     -- or condition
select count(*) as count from llb.myemp where salary >= 8000 or dep_id = 90;
select * from llb.myemp where salary >= 8000 and dep_id = 90;     -- and conditiom
select count(*) as count from llb.myemp where salary >= 8000 and dep_id = 90;
select * from llb.myemp;
# pattern matching concepts :- "%", "_"
select first_name from llb.myemp where first_name like 's%';     -- starting with s and other letters anything
select count(first_name) as count from llb.myemp where first_name like 's%';
select first_name from llb.myemp where first_name like '%s';     -- ends with s and other letters anything
select count(first_name) as count from llb.myemp where first_name like '%s';
select first_name from llb.myemp where first_name like 'j%l';     -- starting with j and ending with l, in between any other letter
select count(first_name) as count from llb.myemp where first_name like 'j%l';
select first_name from llb.myemp where first_name like '% %';     -- starting with any letter and end with any letter , and in between there should be space
select count(first_name) as count from llb.myemp where first_name like '% %';
select * from llb.myemp;
select first_name from llb.myemp where first_name like '%sh%';     -- names having sh anywhere in them
select count(first_name) as count from llb.myemp where first_name like '%sh%';
select first_name from llb.myemp where first_name like '%en%';     -- names having en anywhere in them
select count(first_name) as count from llb.myemp where first_name like '%en%';
select first_name from llb.myemp where first_name like '____';     -- names with fixed 4 character
select count(first_name) as count from llb.myemp where first_name like '____';
select first_name from llb.myemp where first_name like 'j____';     -- start with j letter and fixed 4 character next to it
select count(first_name) as count from llb.myemp where first_name like 'j____';
select * from llb.myemp;
# order by
select * from llb.myemp;
select * from llb.myemp order by first_name;     -- the data will sort by first_name column in ascending
select * from llb.myemp order by first_name desc;     -- the data will sort by first_name column in descending
select * from llb.myemp;
select * from llb.myemp order by salary;     -- the data will sort by salary column in ascending
select * from llb.myemp order by salary desc;     -- the data will sort by salary column in desceding
select * from llb.myemp;
select * from llb.myemp order by dep_id;     -- the data will sort by depid column in ascending
select * from llb.myemp order by dep_id desc;     -- the data will sort by depid column in descending
select * from llb.myemp;
select * from llb.myemp order by hire_date;     -- the data will sort by hiredate column in ascending
select * from llb.myemp order by hire_date desc;     -- the data will sort by hiredate column in descending
select * from llb.myemp;

# distinct only works with 1 column
select * from llb.myemp;
select distinct dep_id from llb.myemp order by dep_id;     -- the data will give unique values in depid column, sort by depid column in ascending
select distinct dep_id from llb.myemp order by dep_id desc;     -- the data will give unique values in depid column, sort by depid column in descending
select * from llb.myemp;

select * from llb.person;
select distinct fname from llb.person;     -- the data will give unique values in fname column
select * from llb.person;
select distinct lname from llb.person;     -- the data will give unique values in lname column
select * from llb.person;

select dep_id,salary from llb.myemp order by dep_id,salary;*/
#-------------------------------#

#-------------------------------#
# 12-july-2024 #

/*# day date function and string function
select adddate('2024-07-12',interval 5 month) as result;     -- what will be the exact date after 5 months of interval with respect to current date
SELECT ADDDATE(curdate(), 31) as result;     -- what will be date after 31 days with respect to curent date function
SELECT curdate() as current_datee, adddate(curdate(), 31) as result;

# insert into pralay.patient_detail values(1,'Rahul','2021-03-01 02:30:12','1995-08-12'),(2,'Raju','2022-06-01 05:30:00','1998-03-22');
# select * from pralay.patient_detail;

select dob, adddate(dob,5) as add_day from pralay.patient_detail;     -- added 5 days in existing dob of patients
select dob, year(dob) as year_number from pralay.patient_detail;     -- gets year as output for existing dob of patients
select dob, monthname(dob) as month_name from pralay.patient_detail;     -- gets monthname as output for existing dob of patients
select dob, year(dob) as year_number, month(dob) as month_number, monthname(dob) as month_name, day(dob) as day_number, dayname(dob) as day_name from pralay.patient_detail;
select * from pralay.patient_detail;

select * from llb.myemp;
select HIRE_DATE, year(HIRE_DATE) as year_number, month(HIRE_DATE) as month_number, monthname(HIRE_DATE) as month_name, day(HIRE_DATE) as day_number, dayname(HIRE_DATE) as day_name from llb.myemp;

# string, lower, upper, right, left, concat, limit
select 12+34 as addition;
select 12+34 as addition, concat(12,34) as concat;
select concat('My','SQL') as concat;
select * from llb.myemp;
select first_name, last_name, concat(FIRST_NAME,' ',LAST_NAME) as fullname from llb.myemp;
select first_name, lower(first_name) as lowercase, upper(first_name) as uppercase from llb.myemp;
select * from llb.myemp;
select first_name, lower(left(first_name,1)) as result from llb.myemp;     -- lowercase the first letter from left
select first_name, lower(right(first_name,1)) as result from llb.myemp;     -- lowercase the first letter from right
select * from llb.myemp;
select first_name, left(first_name,1) as result from llb.myemp where left(first_name,1) in ('s','a');     -- display 1st left letter from firstname column where 1st left letter is s and a
select * from llb.myemp;
select first_name, last_name, concat(first_name,' ',last_name) as fullname from llb.myemp;
select * from llb.myemp;
select * from llb.myemp limit 5;     -- limit entries to 5*/
#-------------------------------#

#-------------------------------#
# 15-july-2024 #

/*# aggregate functions
# sum, count, max, min, avg, sd, varience, ......
# The "GROUP BY" clause combines similar rows, producing a single result row for each group of rows that have the same values
# The "Having" clause is used to filter those groups based on a condition that holds true for the aggregated
use llb;
select * from llb.myemp;
select sum(salary) as salary_total from myemp; 
select * from myemp;
select count(*) as employee_count from myemp;
select max(salary) as max_salary, min(salary) as min_salary, sum(salary) as sum_salary, avg(salary) as average_salary from myemp;
select count(*) as count_salary, max(salary) as max_salary, min(salary) as min_salary, sum(salary) as sum_salary, avg(salary) as average_salary from myemp;

select dep_id, sum(salary) as sum_salary from myemp group by dep_id;
select dep_id, sum(salary) as sum_salary from myemp group by dep_id order by dep_id;
select dep_id, sum(salary) as sum_salary, min(salary) as min_salary, max(salary) as max_salary, avg(salary) as avg_salary from myemp group by dep_id;
select dep_id, sum(salary) as sum_salary, min(salary) as min_salary, max(salary) as max_salary, avg(salary) as avg_salary from myemp group by dep_id order by dep_id;

select dep_id, salary from myemp where dep_id = 60;
select dep_id, sum(salary) as sum_salary from myemp group by dep_id;
select dep_id, sum(salary) as sum_salary from myemp group by dep_id having dep_id = 90 or dep_id = 60;
select dep_id, sum(salary) as sum_salary from myemp group by dep_id having dep_id in (90, 60);
select * from myemp;

select count(emp_id) as count, dep_id, mgr_id from myemp group by dep_id, mgr_id having dep_id = 50 and mgr_id = 120;
select count(emp_id) as count, dep_id, mgr_id from myemp group by dep_id, mgr_id having dep_id = 50 and mgr_id in (100, 120);*/
#-------------------------------#

#-------------------------------#
# 16-july-2024 #

/*# joins :- inner, left, right, cross, self
# (INNER) JOIN: Returns records that have matching values in both tables
# LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
# RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
-- # FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table
# CROSS JION: Returns all records from both the tables. Every possible relation with table A with every possible relation with table B
# SELF JOIN: creating the same table from the existing tabel and then inner join for manipulating operations

use llb;
select * from llb.movies;
select * from llb.members;
select * from movies inner join members on id = movieid;
select * from movies left join members on id = movieid;
select * from members right join movies on id = movieid;

select * from llb.meals;
select * from llb.drinks;
select mealname, drinkname from meals cross join drinks;
select mealname, drinkname, meals.rate from meals cross join drinks;
select mealname, drinkname, meals.rate, drinks.rate from meals cross join drinks;
select m.mealname, d.drinkname, m.rate, d.rate from meals as m cross join drinks as d;
select m.mealname, d.drinkname, m.rate as mealrate, d.rate as drinkrate from meals as m cross join drinks as d;
select m.mealname, d.drinkname, m.rate as mealrate, d.rate as drinkrate, m.rate+d.rate as total from meals as m cross join drinks as d;

select * from myemp;
select emp.emp_id as employee_id, emp.first_name as employee_firstname, emp.last_name as employee_lastname, mgr.emp_id as manager_id, mgr.first_name as manager_firstname, mgr.last_name as manager_lastname from myemp as emp inner join myemp as mgr on emp.mgr_id = mgr.emp_id;
# it is returning 105 rows because there in one column there is 0, thats why its not taking that entire row
select * from myemp;
select emp.emp_id as employee_id, concat(emp.first_name, ' ', emp.last_name) as employee_name, mgr.emp_id as manager_id, concat(mgr.first_name, ' ', mgr.last_name) as manager_name from myemp as emp inner join myemp as mgr on emp.mgr_id = mgr.emp_id;
# it is returning 105 rows because there in one column there is 0, thats why its not taking that entire row*/
#-------------------------------#

#-------------------------------#
# 18-july-2024 #

/*# constraints :- (domain, key, referential integrity)
# 1. domain :- unique, no null, check, default
# 2. key :- primary key
# 3. referential integrity :- ?

use llb;
create table students (id integer unique not null, sname char(30) not null, course varchar(30), age integer check (age>25));
desc students;
# show create table students;     -- how you have created the table constraints
insert into students values(1, 'deepu', 'DA', 29);
select * from students;
# insert into students values(1, 'depak', 'BA', 26);     -- duplicate Id not allowed
select * from students;
# insert into students values(2, null, 'DS', 28);     -- null not allowed
select * from students;
insert into students values(null, 'jay', 'CS', 29);     -- null not allowed
select * from students;
# insert into students values(2, 'jay', 'C', 20);     -- check age constraint violated
select * from students;
# insert into students (id, course, age) values(3, 'java', 30);     -- not allowed because of null constraint
insert into students (id, sname, age) values(4, 'raj', 34);
select * from students;
desc students;
alter table students modify sname char(30) default 'rose';
desc students;
insert into students (id, course, age) values(3, 'java', 30);
select * from students;
# drop table students;*/
#-------------------------------#

#-------------------------------#
# 19-july-2024 #

# primany key and foreign key concept
#-------------------------------#

#-------------------------------#
# 22-july-2024 #

/*# tcl command
use llb;
create table cors(id integer , name_ varchar(30));
select * from cors;
insert into cors values (1,'Joe');
insert into cors values (2,'Jay');
select * from cors;
rollback;
select * from cors;
set autocommit = 0;     -- creating temp. memory
insert into cors values (3,'Raj');
insert into cors values (4,'Sam');
select * from cors;
rollback;
select * from cors;
select * from cors;
rollback;
select * from cors;
set autocommit = 1;     -- disabling temp. memory
insert into cors values (5,'Rahul');
insert into cors values (6,'Ram');
select * from cors;
rollback;
select * from cors;

create table tt(name_ char(3));
select * from tt;
insert into tt values('ABC');
insert into tt values('DEF');
select * from tt;
rollback;
start transaction;     -- creating temp. memory. (autocommit becomes 1 here)
insert into tt values('GHI');
insert into tt values('JKL');
select * from tt;
rollback;     -- autocommit = 1 because of start transaction
select * from tt;
insert into tt values('ttt');
insert into tt values('ppp');
select * from tt;
rollback;
select * from tt;

start transaction;
insert into tt values('cut');
select * from tt;
commit;     -- autocommit = 1 because of start transaction
select * from tt;
rollback;
select * from tt;*/
#-------------------------------#

#-------------------------------#
# 23-july-2024 #

/*# ACID - (Automicity, Consistency, Isolation, Durability)
# database object - (tables, views, index, sequence, stored procedures, functions, triggers)
use llb;
select * from myemp;
select first_name, last_name, salary from myemp;
create view aview as select first_name, last_name, salary from myemp;
select * from aview;

select * from authors;
create view x as select authorid, name from authors; -- through view we can insert data in main table
select * from x;
insert into x values (40, 'abcd');
select * from x;
select * from authors;
create view y as select * from authors where authorid<=15;
select * from y;
insert into y values (24,'sam'), (26,'rahul');
select * from authors;
select * from y;

select * from myemp;
select emp_id, first_name, last_name, salary, salary * 0.2 as bonus from myemp;
create view s as select emp_id, first_name, last_name, salary, salary * 0.2 as bonus from myemp;
select * from s;
select emp_id, bonus, bonus / 2 as half_bonus from s;

select * from members;
select * from movies;
select  id, title, memid, first_name from movies left join members on id = movieid;
select  id, title, ifnull(memid,'-'), ifnull(first_name,'-') from movies left join members on id = movieid;
create view ab as select  id, title, ifnull(memid,'-'), ifnull(first_name,'-') from movies left join members on id = movieid;
select * from ab;

create table abc (id integer primary key auto_increment, name_ char(20), price integer);
insert into abc(name_, price) values('alchemist', 250);
desc abc;
insert into abc(name_, price) values('free guy', 450), ('italian job', 2300);
select * from abc;*/
#-------------------------------#

#-------------------------------#
# 24-july-2024 #

/*# stored procedure
use llb;
# right click on left pane > "select "create new procedure" under stored procedure option" > new tab will be open > write query there > "apply" > apply > finish
# call the stored procedure by :-
call a();     -- calling method 01
call llb.a();     -- calling method 02
call `llb`.`a`();     -- calling method 03

call find_id(107);     -- dynamic number

call find_e(50, 120);     -- dynamic number but 2 condition

select * from books;
select concat("Title of the book is :- "," ", title) as Title from books where bookid = 6;*/
#-------------------------------#

#-------------------------------#
# 25-july-2024 #

/*use llb;
# if condition
# written new procedure
call if_cond(12);
# if else condition
# written new procedure
call if_else(32);
# if elseif else condition
# written new procedure
call if_elseif_else(3, 2, 5);
# day condition
# written new procedure
call day(5);*/
#-------------------------------#

#-------------------------------#
# 26-july-2024 #
# 29-july-2024 #

# reference purpose :-
# set global log_bin_trust_function_creators = 1;
# SET GLOBAL general_log = 1;
# set sql_safe_updates = 0;

# triggers
#-------------------------------#

#-------------------------------#
# 30-july-2024 #

/*#-- subquery
#-- query inside query
#-- single value subquery
#-- corelated query
#-- multi value subquery
select * from myemp limit 10;
select * from myemp where salary = ( select  min(salary) from myemp ); -- single subquer
select avg(salary ) from myemp limit 10;  -- normal query
select * from myemp where salary > ( select  avg(salary) from myemp ); 
select avg(salary) from myemp where dep_id = 60;
select * from myemp e where salary  > (select avg(salary) from myemp where DEP_ID = e.dep_id );  -- co-related subquery
select * from myemp;

#-- multi value sub query
#-- get data based on US id
select * from employees ;
select * from offices;
select officeCode from offices where country in ("usa",'japan');
select * from employees where officeCode in (select officeCode  from offices where country in ("usa", 'japan'));

# window function
#-- A window function performs a calculation across a set of table rows 
#-- that are somehow related to the current row. This is comparable to the 
#-- type of calculation that can be done with an aggregate function. 
#-- .
#-- But unlike regular aggregate functions, use of a window function 
#-- does not cause rows to become grouped into a single output row — 
#-- the rows retain their separate identities

use llb;
select * from myemp;
select avg(salary) from myemp;
select dep_id, avg(salary) as average from myemp where dep_id = 90;     -- using where
select dep_id from myemp where dep_id in (60, 90);     -- not work
select dep_id, avg(salary) as average from myemp where dep_id in (60, 90);     -- not getting proper optimize
select dep_id, avg(salary) as average from myemp group by dep_id having dep_id in (60, 90);

select emp_id, dep_id, first_name, salary, avg(salary) over (partition by dep_id) avg_sal from myemp order by emp_id;

select emp_id, dep_id, first_name, salary,
avg(salary) over (partition by dep_id) avg_sal,
max(salary) over (partition by dep_id) max_sal,
min(salary) over (partition by dep_id) min_sal,
sum(salary) over (partition by dep_id) sum_sal
from myemp order by emp_id;

select emp_id, dep_id, first_name, salary,
avg(salary) over (r) avg_sal,
max(salary) over (r) max_sal,
min(salary) over (r) min_sal,
sum(salary) over (r) sum_sal
from myemp
window r as (partition by dep_id) order by emp_id;

# rank and dense rank
select * from t;

# 1. rank :- it will skip the rank position if there is same multiple number.
select val, rank() over (order by val) rank_no from t;

# 2. dense rank :- it will not skip number. it will get continue number. no matter if the number is repeating.
select val, dense_rank() over (order by val) d_rank_no from t;

# select * from marks;
# select *,
# rank() over (order by mrk desc) rank_  ,
# dense_rank() over (order by mrk desc) d_rank_ 
# from marks ;*/
#-------------------------------#
#-------------------------------#
# 31-july-2024 #

/*create database adv_sql;
use adv_sql;

# use rank csv file from drive
select * from ranks;
insert into ranks values (8, 'sales', 1700), (9, 'it', 1500);
select *, rank() over (order by salary desc) as rank_no, dense_rank() over (order by salary desc) as dens_rank, row_number() over (order by salary desc) as r_num from ranks;

# use row between file from drive
select * from row_between;
select *, sum(sales) over(order by date rows between 1 preceding and 1 following) as preceding_1_current_following_1,
sum(sales) over(order by date rows between 2 preceding and 3 following) as preceding_2_current_following_3 from row_between;

# use running sum file from drive
select * from running_sum;
select *, sum(sales) over(order by date desc rows between unbounded preceding and current row) as runnig_sum from running_sum;

# use running sum partition file from drive
select * from running_sum_partition;
select *, sum(sales) over(partition by class order by date desc rows between unbounded preceding and current row) as runnig_sum from running_sum_partition;

# use nth value first value file from drive
select * from nth_value_first_value;
select *, first_value(sales) over(order by sales rows between unbounded preceding and unbounded following) as first_val from nth_value_first_value;
select *, last_value(sales) over(order by sales rows between unbounded preceding and unbounded following) as last_val from nth_value_first_value;
select *, first_value(sales) over(partition by city order by sales rows between unbounded preceding and unbounded following) as first_val_partition from nth_value_first_value;
select *, last_value(sales) over(partition by city order by sales rows between unbounded preceding and unbounded following) as last_val_partition from nth_value_first_value;
select *, nth_value(sales,3) over(order by sales rows between unbounded preceding and unbounded following) as nth_val from nth_value_first_value;
select *, nth_value(sales,2) over(partition by city order by sales rows between unbounded preceding and unbounded following) as nth_val_partition from nth_value_first_value;*/
#-------------------------------#

#-------------------------------#
# 01-august-2024 #


# ??????.?
#-------------------------------#






#-------------------------------#
# ??-august-2024 #


# ??????.?
#-------------------------------#

## $$ %% -- END -- %% $$ ##