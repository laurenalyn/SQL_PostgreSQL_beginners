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


-- ============================================================================================================================


-- ==============================================================
-- JOINS
-- ==============================================================
-- joins allow you to retreive data from multiple tables in a single SELECT statement
-- needs to be a related column between tables
-- inner join will retreive data from matching rows between table 1 and table 2
-- left join will retreive all data from the left table (tabe 1) and matching rows from the right table (table 2)
-- right join will retreive all data from the right table (2) and matchig rows from left table (1)
-- full join will retreive all data from table 1 and table 2

-- INNER JOIN PT 1

SELECT customers.first_name, customers.last_name, orders.quantity, orders.price FROM orders
INNER JOIN customers ON orders.customer_id = customers.id;

-- short hand
SELECT cu.id, cu.first_name, cu.last_name, o.quantity, o.price FROM orders o
JOIN customers cu ON o.customer_id = cu.id;
-- by default JOIN and INNER JOIN are the same

SELECT pr.name, o.quantity, o.price FROM orders o
Join products pr ON o.product_id = pr.id;

-- INNER JOIN PT 2

SELECT * FROM customers;
SELECT * FROM orders;

SELECT cu.id, cu.first_name, cu.last_name, o.quantity, o.price, o.order_date FROM orders o
JOIN customers cu ON o.customer_id = cu.id
-- WHERE cu.first_name = 'John';
WHERE cu.id IN (2, 4, 6, 8, 9)
AND o.quantity > 1
ORDER BY o.order_date DESC;


-- ==============================================================
-- EXERCISE 1: SELECTING FROM MULTIPLE TABLES
-- ==============================================================
--1.Select the name from the products table and the order_date from the orders table
SELECT pr.name, o.order_date FROM products pr
INNER JOIN orders o ON pr.id = o.product_id;

--2.Select the first_name and last_name from the customers table and the id from the
--orders table for orders placed in February 2017, ordered by customer last_name
--alphabetically z-a
SELECT * FROM customers;
SELECT * FROM orders;

SELECT cu.first_name, cu.last_name, o.order_date FROM customers cu
INNER JOIN orders o ON o.customer_id = cu.id
WHERE order_date BETWEEN '20170201' AND '20170228'
ORDER BY cu.last_name DESC;

--3.Select date_joined from the customers table and postcode from the address table
-- where city is Brighton, ordered by customers first_name alphabetically a-z
SELECT * FROM customers;
SELECT * FROM address;

SELECT cu.date_joined, ad.postcode  FROM customers cu
INNER JOIN address ad ON cu.id = ad.id
WHERE city = 'Brighton'
ORDER BY cu.first_name ASC;


-- LEFT JOIN
-- only need matching data in table one - address table - 
SELECT * FROM customers;
SELECT * FROM address;

SELECT a.id, a.city, c.first_name, c.last_name, c.address_id FROM address a
LEFT JOIN customers c ON a.id = c.address_id;

SELECT a.id, a.city, c.first_name, c.last_name, c.address_id FROM customers c
LEFT JOIN address a ON a.id = c.address_id;

-- RIGHT JOIN
-- will need a match in the 2nd table
SELECT * FROM customers;
SELECT * FROM address

SELECT a.id, a.city, c.first_name, c.last_name, c.address_id FROM address a
RIGHT JOIN customers c ON a.id = c.address_id;

SELECT a.id, a.city, c.first_name, c.last_name, c.address_id FROM customers c 
RIGHT JOIN address a ON a.id = c.address_id;



-- FULL JOIN (OUTTER JOIN)

SELECT * FROM customers;
SELECT * FROM address

SELECT a.id, a.city, c.first_name, c.last_name, c.address_id FROM customers c
FULL JOIN address a ON a.id = c.address_id
WHERE c.first_name = 'John'
ORDER BY a.city DESC;

-- selects all columns from both tables
SELECT * FROM address a
FULL JOIN customers c ON a.id = c.address_id
WHERE c.first_name = 'John'
ORDER BY a.city DESC;


-- ==============================================================
-- EXERCISE 2: SELECTING FROM MULTIPLE TABLES
-- ==============================================================
--1. how many rows are returned by a LEFT JOIN between the customer (table 1) and address (table 2)
SELECT a.id, a.city, c.first_name, c.last_name, c.address_id FROM customers c
LEFT JOIN address a ON a.id = c.address_id;
-- 25

--2. how many rows are returned by a RIGHT JOIN between customers (1) and address (2)
SELECT a.id, a.city, c.first_name, c.last_name, c.address_id FROM customers c
RIGHT JOIN address a ON a.id = c.address_id;
-- 28

--3. how many rows are returned by a FULL JOIN between customer (1) and address(2)
SELECT * FROM customers c
FULL JOIN address a ON a.id = c.address_id;
-- 29

-- JOINGING MORE THAN TWO TABLES

SELECT * FROM orders;
SELECT * FROM products;
SELECT * FROM address;
SELECT * FROM customers;
SELECT * FROM employees;

--retreives data from 3 tables
SELECT c.id AS customer_id, c.first_name, c.last_name, p.name, o.quantity, o.price, o.order_date FROM orders o
JOIN products p ON o.product_id = p.id
JOIN customers c ON o.customer_id = c.id;

--retreives data from 4 tables
SELECT c.id AS customer_id, c.first_name, c.last_name, a.street, a.postcode, p.name, o.quantity, o.price, o.order_date FROM orders o
JOIN products p ON o.product_id = p.id
JOIN customers c ON o.customer_id = c.id
LEFT JOIN address a ON c.address_id = a.id;

--retreives data from 4 tables with where clauses and ordered
SELECT c.id AS customer_id, c.first_name, c.last_name, a.street, a.postcode, p.name, o.quantity, o.price, o.order_date FROM orders o
JOIN products p ON o.product_id = p.id
JOIN customers c ON o.customer_id = c.id
LEFT JOIN address a ON c.address_id = a.id
WHERE a.city = 'Brighton'
AND p.name = 'Shoes'
ORDER BY c.first_name;


-- ==============================================================
-- UNIONS
-- ==============================================================
-- combines the results set of two SELECT statements
-- the SELECT statements must have the same number of columns
-- and the columns mst be of compatible data types

SELECT * FROM customers;
SELECT * FROM employees;

SELECT first_name, last_name FROM customers
UNION
SELECT first_name, last_name FROM employees;

--UNION will remove duplicate
--UNION ALL will not remove duplicates

SELECT first_name FROM customers
UNION ALL
SELECT first_name FROM employees;


SELECT first_name, last_name FROM customers
WHERE first_name = 'John'
UNION ALL
SELECT first_name, last_name FROM employees;
-- gives us the 3 johns from customers and all 4 employees


-- ==============================================================
-- EXERCISE 3: SELECTING FROM MULTIPLE TABLES
-- ==============================================================

--1. Select the first_name and last_name from the customers table, 
--name and season from the products table and quantity from the 
--orders table, where city is equal to Worthing
SELECT c.first_name, c.last_name, p.name, p.season, o.quantity FROM customers c
JOIN orders o ON o.customer_id = c.id
JOIN products p ON p.id = o.product_id
JOIN address a ON a.id = c.address_id
WHERE a.city = 'Worthing';

--2. Select the quantity, price and order_date from the orders table,
--name from the product, and street and postcode from the address table
SELECT o.quantity, o.price, o.order_date, p.name, a.street, a.postcode FROM orders o
JOIN products p ON p.id = o.product_id
JOIN customers c ON c.id = o.customer_id
JOIN address a ON a.id = c.address_id;


--3. Select the first_name and last_name from the employees and customers tables using UNION clause
SELECT first_name, last_name FROM employees
UNION
SELECT first_name, last_name FROM customers;
-- ============================================================================================================================

-- ==============================================================
-- AGGREGATE FUNCTIONS
-- ==============================================================


--How to use the COUNT function
--count retreives the number of rows with a value from the targeted column and returns the amount.
SELECT * FROM employees;

SELECT COUNT(*) FROM employees; --4
--using count with a where clause
SELECT COUNT(*) FROM products
WHERE season = 'Summer'; -- 2

SELECT COUNT(*) FROM orders
WHERE order_date BETWEEN '20170101' AND '20170131'; --15