#-----------------------------------------------------------------------------------------------------------------------#
# Name :- Pralay K Kalaskar
# Mail :- (pkkdkalaskar71@gmail.com)
# Phone :- +91-7066216365
# Linkedin :- www.linkedin.com/in/pralay-kalaskar-1010
#-----------------------------------------------------------------------------------------------------------------------#
#### Assignment_Part3 - SET 3
#-----------------------------------------------------------------------------------------------------------------------#
# Starts Here
#-----------------------------------------------------------------------------------------------------------------------#
/*1. Write a stored procedure that accepts the month and year as inputs and prints the ordernumber, orderdate and status of the orders placed in that month. 
Example:  call order_status(2005, 11);
Answer :-*/
# Create the stored procedure order_status
USE assignment;
DELIMITER //
CREATE PROCEDURE order_status(IN p_year INT, IN p_month INT)
BEGIN
    SELECT ordernumber, orderdate, status
    FROM orders
    WHERE YEAR(orderdate) = p_year AND MONTH(orderdate) = p_month;
END //
DELIMITER ;

# Call the procedure with example values
CALL order_status(2005, 11);

# Drop the existing procedure
DROP PROCEDURE IF EXISTS order_status;

/*2. a. Write function that takes the customernumber as input and returns the purchase_status based on the following criteria . [table:Payments]
if the total purchase amount for the customer is < 25000 status = Silver, amount between 25000 and 50000, status = Gold
if amount > 50000 Platinum
b. Write a query that displays customerNumber, customername and purchase_status from customers table.
Answer :-*/
# a. Create the function purchase_status
select * from customers;
select * from payments;

DELIMITER //
CREATE FUNCTION purchase_status(p_customer_number INT)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE total_amount DECIMAL(10, 2);
    -- Calculate the total purchase amount
    SELECT SUM(amount) INTO total_amount
    FROM Payments
    WHERE customernumber = p_customer_number;
    -- Determine the status based on the total amount
    IF total_amount < 25000 THEN
        RETURN 'Silver';
    ELSEIF total_amount BETWEEN 25000 AND 50000 THEN
        RETURN 'Gold';
    ELSE
        RETURN 'Platinum';
    END IF;
END //
DELIMITER ;

# b. Write a query that displays customerNumber, customername and purchase_status from customers table.
SELECT c.customernumber, c.customername, purchase_status(c.customernumber) AS purchase_status
FROM customers c;

# Drop the existing procedure
DROP FUNCTION IF EXISTS purchase_status;

/*3. Replicate the functionality of 'on delete cascade' and 'on update cascade' using triggers on movies and rentals tables.
Note: Both tables - movies and rentals - don't have primary or foreign keys. Use only triggers to implement the above.
Answer :-*/
# Trigger for ON DELETE CASCADE
DELIMITER //
CREATE TRIGGER after_movie_delete
AFTER DELETE ON movies
FOR EACH ROW
BEGIN
    DELETE FROM rentals WHERE movieid = OLD.id;
END //
DELIMITER ;

# Drop the trigger
DROP TRIGGER IF EXISTS after_movie_delete;

# Trigger for ON UPDATE CASCADE
DELIMITER //
CREATE TRIGGER after_movie_update
AFTER UPDATE ON movies
FOR EACH ROW
BEGIN
    UPDATE rentals
    SET movie_id = NEW.id
    WHERE movie_id = OLD.id;
END //
DELIMITER ;

# Drop the trigger
DROP TRIGGER IF EXISTS after_movie_update;

/*4. Select the first name of the employee who gets the third highest salary. [table: employee]
Answer :-*/
select * from employee;

SELECT fname
FROM (
    SELECT fname, salary
    FROM employee
    ORDER BY salary DESC
    LIMIT 2, 1
) AS subquery;

/*5. Assign a rank to each employee  based on their salary. The person having the highest salary has rank 1. [table: employee]
Answer :-*/
select * from employee;

SET @rank = 0;
SELECT fname, salary,
       @rank := @rank + 1 AS rank_
FROM employee
ORDER BY salary DESC;

#-----------------------------------------------------------------------------------------------------------------------#
## END ##
#-----------------------------------------------------------------------------------------------------------------------#

select * from employee;
select * from movies;     # id, title, category
select * from rentals; # memid, first_name, last_name, movieid
