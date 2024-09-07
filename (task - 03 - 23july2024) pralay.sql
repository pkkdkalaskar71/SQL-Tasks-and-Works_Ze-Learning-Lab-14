# 23-july-2024 - (task 03)

use llb;
create table course (course_id integer primary key, c_name char(50));
select * from course;
create table abcd (id integer primary key, name_ varchar(30) not null, course varchar(30), DOB date, age integer not null check (age>21), c_id integer, foreign key (c_id) references course(course_id) on delete cascade on update cascade);
select * from abcd;