-- extracting data from a table using the SELECT command

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



