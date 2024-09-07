#-----------------------------------------------------------------------------------------------------------------------#
# Name :- Pralay K Kalaskar
# Mail :- (pkkdkalaskar71@gmail.com)
# Phone :- +91-7066216365
# Linkedin :- www.linkedin.com/in/pralay-kalaskar-1010
#-----------------------------------------------------------------------------------------------------------------------#
#### MOCK - 1 - (24-aug-2024)
#-----------------------------------------------------------------------------------------------------------------------#
# Starts Here
#-----------------------------------------------------------------------------------------------------------------------#

create database mock;
use mock;

/*1. Perform calculation on sales from 1 previous , current and 2 next value
Answer :-*/
-- right click on "tables" under highlited "mock schema" from left pane.
-- select "Table Data Import Wizard" option.
-- select "Browse..." option.
-- select csv file and click on "open" option.
-- click on "Next>" button.
-- click on "create new table:" option.
-- select "mock" schema from dropdown list.
-- click on "Next>" button. (X 4 - times)
-- click on "Finish" button.
select *, sum(sales) over(order by ID rows between 1 preceding and 2 following) as preceding_1_current_following_2 from running_sum_partition;

/*2. Perform calculation on sales from 3 previous , current and 2 next value
Answer :-*/
select *, sum(sales) over(order by ID rows between 3 preceding and 2 following) as preceding_3_current_following_2 from running_sum_partition;

/*3. For the following relation schema:
Table 1 : employee(employee-name, street, city)
Table 2 : works(employee-name, company-name, salary)
Table 3 : company(company-name, city)
Table 4 : manages(employee-name, manager-name)

Give an expression in SQL for each of the following queries:
a) Find the names, street address, and cities of residence for all employees who work for 'First Bank Corporation' and earn more than $10,000.
b) Find the names of all employees in the database who live in the same cities as the companies for which they work
c) Find the names of all employees in the database who live in the same cities and on the same streets as do their managers.
Answer :-*/
-- a) Find the names, street address, and cities of residence for all employees who work for 'First Bank Corporation' and earn more than $10,000.
SELECT e.name, e.street_address, e.city
FROM employees e
JOIN employers emp ON e.employer_id = emp.employer_id
WHERE emp.name = 'First Bank Corporation'
AND e.salary > 10000;

-- b) Find the names of all employees in the database who live in the same cities as the companies for which they work.
SELECT e.employee-name
FROM employee e
JOIN works w ON e.employee-name = w.employee-name
JOIN company c ON w.company-name = c.company-name
WHERE e.city = c.city;

-- c) Find the names of all employees in the database who live in the same cities and on the same streets as do their managers.
SELECT e.employee-name
FROM employee e
JOIN manages m ON e.employee-name = m.employee-name
JOIN employee mngr ON m.manager-name = mngr.employee-name
WHERE e.street = mngr.street
AND e.city = mngr.city;

/*4. Create foreign key on
Answer :-*/
CREATE TABLE Department (
    DepNo INT PRIMARY KEY,
    Dname VARCHAR(100),
    Location VARCHAR(100)
);
CREATE TABLE Employee (
    EmpNo INT PRIMARY KEY,
    EmpName VARCHAR(100),
    DepNo INT,
    FOREIGN KEY (DepNo) REFERENCES Department(DepNo)
);

DESC department;

DESC employee;

/*5. Create foreign key on student id in Library 
Answer :-*/
CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_Name VARCHAR(100),
    student_branch VARCHAR(100),
    student_emailid VARCHAR(100)
);
CREATE TABLE Library (
    book_id INT PRIMARY KEY,
    student_id INT,
    number_of_books_borrowed INT,
    FOREIGN KEY (Student_id) REFERENCES Student(Student_id)
);

DESC student;

DESC library;

/*6. Get the output using table partition_by_ground_yr_ind_orde
Answer :-*/
-- right click on "tables" under highlited "mock schema" from left pane.
-- select "Table Data Import Wizard" option.
-- select "Browse..." option.
-- select csv file and click on "open" option.
-- click on "Next>" button.
-- click on "create new table:" option.
-- select "mock" schema from dropdown list.
-- click on "Next>" button. (X 4 - times)
-- click on "Finish" button.
WITH RankedRuns AS (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY year ORDER BY runs desc) AS rnk
    FROM partition_by_ground_yr_ind_orde
    WHERE country = 'India' AND year IN (2018, 2019)
)
SELECT *
FROM RankedRuns
WHERE rnk = 1
ORDER BY year desc;

/*7. Get the output using table  partition by ground wise rank
Answer :-*/
SELECT 
    PlayerName, 
    StadiumName, 
    Year, 
    Runs, 
    Country, 
    RANK() OVER (PARTITION BY StadiumName, Year ORDER BY Runs DESC) AS rnk
FROM
    partition_by_ground_yr_ind_orde where Country = "India";

#-----------------------------------------------------------------------------------------------------------------------#
## END ##
#-----------------------------------------------------------------------------------------------------------------------#




# SET SQL_SAFE_UPDATES =0 ;

-- que1 and que2
# select * from running_sum_partition;
/*WITH SalesData AS (
    SELECT
		ID, Class, Date, Sales,
        LAG(sales, 1) OVER (ORDER BY ID) AS previous_sales,
        sales as current_sales,
        LEAD(sales, 2) OVER (ORDER BY ID) AS next_2_sales
    FROM
        running_sum_partition
)
SELECT
	ID, Class, Date, Sales,
	previous_sales,
    current_sales,
    next_2_sales
FROM
    SalesData;*/


