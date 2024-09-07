#-----------------------------------------------------------------------------------------------------------------------#
# Name :- Pralay K Kalaskar
# Mail :- (pkkdkalaskar71@gmail.com)
# Phone :- +91-7066216365
# Linkedin :- www.linkedin.com/in/pralay-kalaskar-1010
#-----------------------------------------------------------------------------------------------------------------------#
#### Assignment_Part2 - SET 2
#-----------------------------------------------------------------------------------------------------------------------#
# Starts Here
#-----------------------------------------------------------------------------------------------------------------------#
/*1. select all employees in department 10 whose salary is greater than 3000. [table: employee]
Answer :-*/
# Select all employees in department 10 whose salary is greater than 3000
USE assignment;

select * from employee;

SELECT *
FROM employee
WHERE deptno = 10 AND salary > 3000;

/*2. The grading of students based on the marks they have obtained is done as follows:
40 to 50 -> Second Class
50 to 60 -> First Class
60 to 80 -> First Class
80 to 100 -> Distinctions
a. How many students have graduated with first class?
b. How many students have obtained distinction? [table: students]
Answer :-*/
# a. How many students have graduated with first class?
select * from students;

SELECT COUNT(*)
FROM students
WHERE marks >= 50 AND marks < 80;

# b. How many students have obtained distinction?
select * from students;

SELECT COUNT(*)
FROM students
WHERE marks >= 80 AND marks <= 100;

/*3. Get a list of city names from station with even ID numbers only. Exclude duplicates from your answer.[table: station]
Answer :-*/
select * from station;

SELECT DISTINCT city
FROM station
WHERE MOD(id, 2) = 0;

/*4. Find the difference between the total number of city entries in the table and the number of distinct city entries in the table. In other words, if N is the number of city entries in station, and N1 is the number of distinct city names in station, write a query to find the value of N-N1 from station.
[table: station]
Answer :-*/
select * from station;

SELECT (COUNT(*) - COUNT(DISTINCT city)) AS difference
FROM station;

/*5. Answer the following
a. Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates. [Hint: Use RIGHT() / LEFT() methods ]
b. Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
c. Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
d. Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates. [table: station]
Answer :-*/
# a. CITY names starting with vowels. Exclude duplicates.
SELECT DISTINCT city
FROM station
WHERE LEFT(city, 1) IN ('A', 'E', 'I', 'O', 'U');

# b. CITY names with vowels as both first and last characters. Exclude duplicates.
SELECT DISTINCT city
FROM station
WHERE LEFT(city, 1) IN ('A', 'E', 'I', 'O', 'U')
  AND RIGHT(city, 1) IN ('A', 'E', 'I', 'O', 'U');

# c. CITY names that do not start with vowels. Exclude duplicates.
SELECT DISTINCT city
FROM station
WHERE LEFT(city, 1) NOT IN ('A', 'E', 'I', 'O', 'U');

# d. CITY names that either do not start with vowels or do not end with vowels. Exclude duplicates.
SELECT DISTINCT city
FROM station
WHERE LEFT(city, 1) NOT IN ('A', 'E', 'I', 'O', 'U')
   OR RIGHT(city, 1) NOT IN ('A', 'E', 'I', 'O', 'U');

/*6. Write a query that prints a list of employee names having a salary greater than $2000 per month who have been employed for less than 36 months.
Sort your result by descending order of salary. [table: emp]
Answer :-*/
select * from emp;

select concat(first_name, ' ', last_name) AS emp_full_name, salary
FROM emp
WHERE salary > 2000 AND TIMESTAMPDIFF(MONTH, hire_date, CURDATE()) < 36
ORDER BY salary DESC;

/*7. How much money does the company spend every month on salaries for each department? [table: employee]
Expected Result
----------------------
+--------+--------------+
| deptno | total_salary |
+--------+--------------+
|     10 |     20700.00 |
|     20 |     12300.00 |
|     30 |      1675.00 |
+--------+--------------+
3 rows in set (0.002 sec)
Answer :-*/
select * from employee;

SELECT deptno, SUM(salary) AS total_salary
FROM employee
GROUP BY deptno;

/*8. How many cities in the CITY table have a Population larger than 100000. [table: city]
Answer :-*/
select * from city;

SELECT COUNT(*)
FROM city
WHERE population > 100000;

/*9. What is the total population of California? [table: city]
Answer :-*/
select * from city;

SELECT SUM(population) AS total_population
FROM city
WHERE district = 'California';

/*10. What is the average population of the districts in each country? [table: city]
Answer :-*/
select * from city;

SELECT countrycode, AVG(population) AS average_population
FROM city
GROUP BY countrycode;

/*11. Find the ordernumber, status, customernumber, customername and comments for all orders that are ‘Disputed=  [table: orders, customers]
Answer :-*/
select * from orders;
select * from customers;

SELECT o.ordernumber, o.status, o.customernumber, c.customername, o.comments
FROM orders o
JOIN customers c ON o.customernumber = c.customernumber
WHERE o.status = 'Disputed';

#-----------------------------------------------------------------------------------------------------------------------#
## END ##
#-----------------------------------------------------------------------------------------------------------------------#