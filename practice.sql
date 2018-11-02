-- ==============================================================
-- extracting data from a table using the SELECT command
-- ==============================================================
-- SELECT column_name FROM tabe_name; (selects one column from a table)
SELECT wholesale_price FROM products;


-- SELECT column_name1, column_name2, column_name3 FROM table_name; (extracts multiple(specific) columns from a table)
SELECT first_name, last_name, address_id FROM customers;

-- SELECT * FROM table_name; (extracts all data from a table)
SELECT * FROM employees;

-- using a WHERE clause in a SELECT statement

-- WHERE column_name = 'value';
SELECT * FROM employees
WHERE first_name = 'Emily';      
-- (for strings we use 'single quotes')
SELECT * FROM employees
WHERE id = 3;
-- (for integers we just use the number);

-- (shows info for id's greater than 2)
SELECT id, first_name, last_name FROM employees
WHERE id > 2;
-- (shows infor for id less than 2)
SELECT id, first_name, last_name FROM employees
WHERE id < 2;


-- using more than one WHERE clause in a SELECT statemnt

-- SELECT column_name FROM table_name
-- WHERE column_name1 = 'value'
-- AND column_name2 = 'value'
-- AND column_name3 = 'value';

SELECT * FROM orders
WHERE price > 30.00
AND quantity >= 2
AND customer_id <= 15;

SELECT id, first_name, last_name  FROM customers
WHERE gender = 'F'
AND first_name = 'Emily'
AND id > 5;

-- ==============================================================
--EXERCISE 1: SELECTING FROM A TABLE
-- ==============================================================
--1. Select the city and postcode fromt the address table
SELECT city, postcode FROM address;

--2. Select the products name from the products table where the season is winter

SELECT name FROM products
WHERE season = 'Winter';

--3. Select id, quantity and order_date from the orders table where price is more 
--than 25.00 and quantity is less than 4

SELECT id, quantity, order_date FROM orders
WHERE price > 25.00
AND quantity < 4;

--4. Select all rows of data from the products table where season is equal to 
--summer and wholsale_price is atleast 20.00
SELECT * FROM products
WHERE season = 'Summer'
AND wholesale_price >= 20.00;

-- ==============================================================
-- Using IN, NOT IN in a where clause
-- ==============================================================

-- When wanting to select a column with more than one value you use IN()
SELECT * FROM address;
-- shows address with following cities
SELECT * FROM address
WHERE city IN ('Brighton', 'Worthing', 'London', 'Hove');

SELECT * FROM address
WHERE id IN (2, 5, 7, 9, 10);

--When wanting to select a column that is not equal to a certain value
SELECT * FROM address
WHERE id NOT IN (2, 5, 7, 9, 10);

--shows address not in the following cities
SELECT * FROM address
WHERE city NOT IN ('Brighton', 'Worthing');


-- ==============================================================
-- the BETWEEN statement in a where clause
-- ==============================================================
SELECT * FROM customers;
-- gives us all customers where the id is between 5&10
SELECT * FROM customers
WHERE id BETWEEN 5 AND 10;

--dates in sql are written 'yyyymmdd'
SELECT first_name, last_name, date_joined FROM customers
WHERE date_joined BETWEEN '20160101' AND '20161231';


-- ==============================================================
-- the LIKE statement
-- ==============================================================
SELECT * FROM products;

-- % means it is lookng for any number of characters on either side of the string
SELECT * FROM products
WHERE name LIKE '%Shirt';

SELECT * FROM products
WHERE name LIKE '%Shi%';

--  _ is looking for only one character followed by ocks on either side of the string
SELECT * FROM products
WHERE name LIKE '_ocks';
-- returns Socks
SELECT * FROM products
WHERE name LIKE '_cks';
-- returns nothing becuase its only looking one character before string

-- ==============================================================
-- EXERCISE 2: SELECTING FROM A TABLE
-- ==============================================================
--1. Select first and last name from customers where first name is Emily or John
SELECT first_name, last_name FROM customers
WHERE first_name IN ('Emily', 'John'); 

--2. Select product id and name from the products table where the product name includes
-- the string pattern Shirt
SELECT id, name FROM products
WHERE name LIKE '%Shirt%';

--3. Select id from customers table for the customers who joined from June to September 2016
SELECT id FROM customers
WHERE date_joined BETWEEN '20160601' AND '20160930';

--4. Select id and order_date from the orders table for customer_ids 2, 4, 6, 8 in March 2017
SELECT id, order_date FROM orders
WHERE customer_id IN (2, 4, 6, 8)
AND order_date BETWEEN '20170301' AND '20170331';


-- ==============================================================
-- Ordering our results set
-- ==============================================================
SELECT * FROM orders
ORDER BY quantity;
-- puts the table in order by quantity from smallest to largest
SELECT * from ORDERS
ORDER BY quantity ASC;
-- returns in ascending order

SELECT * from ORDERS
ORDER BY quantity DESC;
--returns in descending order

SELECT * FROM employees
ORDER BY last_name ASC;
-- returns in alphabetical order

SELECT * FROM employees
ORDER BY last_name DESC;
-- returns in reverse alphabetical order (z-a)


-- ==============================================================
-- Limiting our result set
-- ==============================================================
-- limits to 3 highest priced 
SELECT * FROM products
ORDER BY wholesale_price DESC
LIMIT 3;

-- skips first 2 lines and returns the next 5 lines
SELECT * FROM products
ORDER BY wholesale_price DESC
LIMIT 5 OFFSET 2;


-- ==============================================================
-- Using the DISTINCT SQL statement
-- ==============================================================
SELECT * FROM address;
-- only shows how many different city values we have (no duplicates)
SELECT DISTINCT city FROM address; --this gives us 6 cities

SELECT DISTINCT city, street FROM address;


-- ==============================================================
-- Using a column name alias
-- ==============================================================
-- changes last_name to surname and pay to pay_per_hour
SELECT first_name, last_name AS surname, pay AS pay_per_hour FROM employees;


SELECT first_name, last_name AS surname, pay AS pay_per_hour FROM employees
WHERE pay_per_hour > 10.00;
-- get an error that pay_per_hour doesnt exist in the database - 
-- for a WHERE clause we have to use the name in the db, 
-- but we can use the alias name in an ORDER BY statement
SELECT first_name, last_name AS surname, pay AS pay_per_hour FROM employees
WHERE pay > 10.00;

SELECT first_name, last_name AS surname, pay AS pay_per_hour FROM employees
ORDER BY pay_per_hour;


-- ==============================================================
-- Exercise 3:
-- ==============================================================
--1. Order the orders table by quantity from highest to lowest
SELECT * FROM orders
ORDER BY quantity DESC;

--2. Select only distinct first_name in the customers table and order alphabetically from A - Z
SELECT DISTINCT first_name FROM customers
ORDER BY first_name;

--3. Select only the first 5 last_names from the customers table, ordered alphabetically A - Z
-- where last_name inclused at least 1 's'.
SELECT last_name FROM customers
WHERE last_name LIKE '%s%'
ORDER BY last_name
LIMIT 5;

--4. Select first_name, last_name, and pay from the employees table but rename the pay 
-- column to 'pay_per_hour'.
SELECT first_name, last_name, pay AS pay_per_hour FROM employees;
