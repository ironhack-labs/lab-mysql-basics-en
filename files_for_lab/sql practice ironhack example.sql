/*USE ironhack_dapt;
CREATE TABLE Customer (
    CustomerID VARCHAR(50),
    CustomerName VARCHAR(100),
    Segment VARCHAR(50),
    Age INT,
    Country VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    PostalCode INT,
    Region VARCHAR(50)
);
DROP TABLE Customer;
CREATE TABLE Customer (
    CustomerID VARCHAR(50),
    CustomerName VARCHAR(100),
    Segment VARCHAR(50),
    Age INT,
    Country VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    PostalCode INT,
    Region VARCHAR(50)
);
CREATE TABLE ironhack_class.Customer (
    CustomerID VARCHAR(50),
    CustomerName VARCHAR(100),
    Segment VARCHAR(50),
    Age INT,
    Country VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    PostalCode INT,
    Region VARCHAR(50)
);
DROP DATABASE ironhack_dapt;
*/
/*
CREATE DATABASE ironhack_dapt;

USE DATABASE ironhack_dapt;
CREATE SCHEMA ironhack_class;

USE SCHEMA ironhack_dapt.ironhack_class;

CREATE TABLE Customer (
    CustomerID VARCHAR(50),
    CustomerName VARCHAR(100),
    Segment VARCHAR(50),
    Age INT,
    Country VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    PostalCode INT,
    Region VARCHAR(50)
);
*/
/*
CREATE TABLE Product (
    ProductID VARCHAR(50),
	Category VARCHAR(50),
	SubCategory VARCHAR(50),
	ProductName VARCHAR(200)
);

CREATE TABLE Sales (
    OrderLine INT,
    OrderID VARCHAR(50),
    OrderDate DATE,
    ShipDate DATE,
    ShipMode VARCHAR(50),
    CustomerID VARCHAR(50),
    ProductID VARCHAR(50),
    Sales DECIMAL,
    Quantity INT,
    Discount DECIMAL,
    Profit DECIMAL
);

CREATE TABLE Student (
    EnrollmentNO INT,
    Name VARCHAR(100),
    ScienceMarks INT
);

SELECT first_name FROM customer_table;
SELECT first_name, last_name FROM customer_table; -- select multiple columns
SELECT * FROM customer_table; -- select all columns
SELECT DISTINCT customer_name FROM customer_table; -- Selecting distinct values from one column
SELECT DISTINCT customer_name, age FROM customer_table; -- Selecting distinct values from multiple columns
SELECT first_name FROM customer_table WHERE age = 25;
-- the WHERE clause is used to filter records from a table, a view, or a join, based on specified conditions. It helps in narrowing down the data that you want to retrieve or manipulate.
SELECT first_name, last_name FROM customer_table WHERE age > 20 AND age < 30;
SELECT first_name, last_name FROM customer_table WHERE age < 20 OR age > 30;
SELECT first_name, last_name FROM customer_table WHERE NOT age = 25;
INSERT INTO customer_table (cust_id, first_name, age, email_id) VALUES (2, 'Dee', 22, 'd@xyz.com'); -- Inserting a single row
insert INTO customer_table VALUES (1, 'Ee', 'Ef', 35, 'ef@xyz.com'), (1, 'Gee', 'Eh', 42, 'gh@xyz.com'); -- Inserting multiple rows
SELECT * FROM customer WHERE age BETWEEN 20 AND 30; -- Numeric Range
SELECT * FROM sales WHERE ship_date BETWEEN '2015-04-01' AND '2016-04-01'; -- data range
SELECT * FROM customer WHERE age NOT BETWEEN 20 AND 30;
SELECT * FROM customer WHERE age BETWEEN 20 AND 30;
SELECT * FROM customer_table WHERE first_name LIKE 'Jo%';
SELECT * FROM customer_table WHERE first_name LIKE '%od%';
SELECT first_name, last_name FROM customer_table WHERE first_name LIKE 'Jas_n';
SELECT first_name, last_name FROM customer_table WHERE last_name NOT LIKE 'J%';
SELECT * FROM customer_table WHERE last_name LIKE 'G\%';
SELECT * FROM customer WHERE state = 'California' ORDER BY Customer_name;
SELECT * FROM customer WHERE age > 25 ORDER BY City ASC, Customer_name DESC;
SELECT * FROM customer ORDER BY age DESC;
SELECT * FROM customer WHERE age >= 25 ORDER BY age DESC LIMIT 8;
SELECT * FROM customer WHERE age >= 25 ORDER BY age ASC LIMIT 10;
SELECT Cust_id AS 'Serial number', Customer_name AS name, Age AS Customer_age FROM Customer;
SELECT COUNT(*) FROM sales;
SELECT COUNT(order_line) AS 'Number of Products Ordered', COUNT(DISTINCT order_id) AS 'Number of Orders' FROM sales WHERE customer_id = 'CG-12520';
SELECT SUM(aggregate_expression) FROM tables [WHERE conditions];
SELECT SUM(Profit) AS 'Total Profit' FROM sales;
SELECT SUM(quantity) AS 'Total Quantity' FROM orders WHERE product_id = 'FUR-TA-10000577';
SELECT AVG(age) AS 'Average Customer Age' FROM customer;
SELECT AVG(sales * 0.10) AS 'Average Commission Value' FROM sales;
SELECT MIN(salary) AS MinSalary FROM employees;
SELECT MAX(salary) AS MaxSalary FROM employees;
SELECT MIN(salary) FROM employees WHERE department = 'Sales';
SELECT MAX(salary) FROM employees WHERE department = 'Sales';
SELECT region, COUNT(customer_id) AS customer_count
FROM customer
GROUP BY region;
SELECT product_id, SUM(quantity) AS quantity_sold
FROM sales
GROUP BY product_id
ORDER BY quantity_sold DESC;
SELECT customer_id,
       MIN(sales) AS min_sales,
       MAX(sales) AS max_sales,
       AVG(sales) AS average_sales,
       SUM(sales) AS total_sales
FROM sales
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT 5;
SELECT region, COUNT(customer_id) AS customer_count
FROM customer
GROUP BY region
HAVING COUNT(customer_id) > 200;
*/
