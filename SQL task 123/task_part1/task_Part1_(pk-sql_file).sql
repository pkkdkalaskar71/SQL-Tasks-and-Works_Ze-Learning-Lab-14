#-----------------------------------------------------------------------------------------------------------------------#
# Name :- Pralay K Kalaskar
# Mail :- (pkkdkalaskar71@gmail.com)
# Phone :- +91-7066216365
# Linkedin :- www.linkedin.com/in/pralay-kalaskar-1010
#-----------------------------------------------------------------------------------------------------------------------#
#### Assignment_Part1 - SET 1
#-----------------------------------------------------------------------------------------------------------------------#
# Starts Here
#-----------------------------------------------------------------------------------------------------------------------#
/*1. create a database called 'assignment' (Note please do the assignment tasks in this database)
Answer :-*/
# Create a Database
CREATE DATABASE assignment;
USE assignment;

/*2. Create the tables from ConsolidatedTables.sql and enter the records as specified in it.
Answer :-*/
# Create Tables from ConsolidatedTables.sql
# steps to import data from the exixting sql file named "ConsolidatedTables.sql"
-- server > data import > import from self-contained file > ... > brouse file and select file > select assignment schema > dump structure and data > start import
# OR
# use assignemnt;
# \SOURCE C:\Users\DELL\Documents\ConsolidatedTables_(que).sql;     #?????????????????????????????????????????????????????????????????????????????? doubt

/*3. Create a table called countries with the following columns
name, population, capital    
- choose appropriate datatypes for the columns

a) Insert the following data into the table
China 			1382	 	Beijing
India			1326	 	Delhi
United States		324	 	Washington D.C.
Indonesia		260	 	Jakarta
Brazil			209	 	Brasilia
Pakistan		193	 	Islamabad
Nigeria			187	 	Abuja
Bangladesh		163	 	Dhaka
Russia			143	 	Moscow
Mexico			128	 	Mexico City
Japan			126	 	Tokyo
Philippines		102	 	Manila
Ethiopia		101	 	Addis Ababa
Vietnam 		94	 	Hanoi
Egypt			93	 	Cairo
Germany		81	 	Berlin
Iran			80	 	Tehran
Turkey			79	 	Ankara
Congo			79	 	Kinshasa
France			64	 	Paris
United Kingdom	65	 	London
Italy			60	 	Rome
South Africa		55	 	Pretoria
Myanmar		54	 	Naypyidaw

b) Add a couple of countries of your choice

c) Change ‘Delhi' to ‘New Delhi'
Answer :-*/
-- Create a table and inserting entries in it
CREATE TABLE countries (
    name VARCHAR(50),
    population INT,
    capital VARCHAR(50));

INSERT INTO countries (name, population, capital) VALUES
('China', 1382, 'Beijing'),
('India', 1326, 'Delhi'),
('United States', 324, 'Washington D.C.'),
('Indonesia', 260, 'Jakarta'),
('Brazil', 209, 'Brasilia'),
('Pakistan', 193, 'Islamabad'),
('Nigeria', 187, 'Abuja'),
('Bangladesh', 163, 'Dhaka'),
('Russia', 143, 'Moscow'),
('Mexico', 128, 'Mexico City'),
('Japan', 126, 'Tokyo'),
('Philippines', 102, 'Manila'),
('Ethiopia', 101, 'Addis Ababa'),
('Vietnam', 94, 'Hanoi'),
('Egypt', 93, 'Cairo'),
('Germany', 81, 'Berlin'),
('Iran', 80, 'Tehran'),
('Turkey', 79, 'Ankara'),
('Congo', 79, 'Kinshasa'),
('France', 64, 'Paris'),
('United Kingdom', 65, 'London'),
('Italy', 60, 'Rome'),
('South Africa', 55, 'Pretoria'),
('Myanmar', 54, 'Naypyidaw');

-- Adding a couple of countries of your choice
INSERT INTO countries (name, population, capital) VALUES
('Australia', 25, 'Canberra'),
('Canada', 38, 'Ottawa');

SET SQL_SAFE_UPDATES =0 ;
# SET GLOBAL log_bin_trust_function_creators = 1; 
-- Update Delhi to New Delhi
UPDATE countries
SET capital = 'New Delhi'
WHERE capital = 'Delhi';

/*4. Rename the table countries to big_countries .
Anuswer :-*/
RENAME TABLE countries TO big_countries;

/*5. Create the following tables. Use auto increment wherever applicable

a. Product
product_id - primary key
product_name - cannot be null and only unique values are allowed
description
supplier_id - foreign key of supplier table

b. Suppliers
supplier_id - primary key
supplier_name
location

c. Stock
id - primary key
product_id - foreign key of product table
balance_stock
Answer :-*/
-- Product Table																run this 2nd
CREATE TABLE Product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL UNIQUE,
    description TEXT,
    supplier_id INT,
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id));

SHOW FULL COLUMNS FROM product;

-- Suppliers Table																run this 1st
CREATE TABLE Suppliers (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,
    supplier_name VARCHAR(100) NOT NULL UNIQUE,
    location VARCHAR(100));
    
SHOW FULL COLUMNS FROM suppliers;

-- Stock Table																	run this 3rd
CREATE TABLE Stock (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    balance_stock INT,
    FOREIGN KEY (product_id) REFERENCES Product(product_id));

SHOW FULL COLUMNS FROM stock;

/*6. Enter some records into the three tables.
Answer :-*/
-- Enter Some Records
-- Example records for Suppliers
INSERT INTO Suppliers (supplier_name, location) VALUES
('Supplier A', 'Location A'),
('Supplier B', 'Location B');

select * from suppliers;

-- Example records for Product
INSERT INTO Product (product_name, description, supplier_id) VALUES
('Product 1', 'Description for Product 1', 1),
('Product 2', 'Description for Product 2', 2);

select * from product;

-- Example records for Stock
INSERT INTO Stock (product_id, balance_stock) VALUES
(1, 100),
(2, 200);

select * from stock;

/*7. Modify the supplier table to make supplier name unique and not null.
Answer :-*/
-- (Already enforced in the table creation in step 5-(b))

/*8. Modify the emp table as follows

a.	Add a column called deptno

b. Set the value of deptno in the following order
deptno = 20 where emp_id is divisible by 2
deptno = 30 where emp_id is divisible by 3
deptno = 40 where emp_id is divisible by 4
deptno = 50 where emp_id is divisible by 5
deptno = 10 for the remaining records.
Answer :-*/
-- Add deptno Column
SELECT * FROM emp;

ALTER TABLE emp ADD COLUMN deptno INT;

SELECT * FROM emp;

-- Set Values for deptno
UPDATE emp
SET deptno = CASE
    WHEN emp_no % 2 = 0 THEN 20
    WHEN emp_no % 3 = 0 THEN 30
    WHEN emp_no % 4 = 0 THEN 40
    WHEN emp_no % 5 = 0 THEN 50
    ELSE 10
END;

select * from emp;

/*9. Create a unique index on the emp_id column.
Answer :-*/
-- Create a Unique Index on emp_id
SHOW FULL COLUMNS FROM emp;

CREATE UNIQUE INDEX idx_emp_no ON emp(emp_no);

SHOW FULL COLUMNS FROM emp;

/*10. Create a view called emp_sal on the emp table by selecting the following fields in the order of highest salary to the lowest salary.
emp_no, first_name, last_name, salary
Answer :-*/
-- Create a View emp_sal
CREATE VIEW emp_sal AS
SELECT emp_no, first_name, last_name, salary
FROM emp
ORDER BY salary DESC;

SELECT * FROM emp_sal;

DROP VIEW emp_sal;

## right click on left pane on schema named "assignment" > select "drop schema" > select "drop now" ##

#-----------------------------------------------------------------------------------------------------------------------#
## END ##
#-----------------------------------------------------------------------------------------------------------------------#