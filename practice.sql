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

-- ==============================================================









-- ==============================================================

-- ==============================================================