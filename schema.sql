-- Database: store

-- DROP DATABASE store;

-- CREATE DATABASE store
--     WITH 
--     OWNER = postgres
--     ENCODING = 'UTF8'
--     LC_COLLATE = 'C'
--     LC_CTYPE = 'C'
--     TABLESPACE = pg_default
--     CONNECTION LIMIT = -1;
	
	
-- — DROP DATABASE 
-- DROP TABLE products;
-- DROP TABLE address;
-- DROP TABLE employees;
-- DROP TABLE customers;
-- DROP TABLE orders;

/* 
CREATE THE PRODUCTS TABLE
*/

CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	season VARCHAR(20),
	wholesale_price NUMERIC(4,2),
	in_stock BOOLEAN
);

/*
CREATE THE ADDRESS TABLE
*/ 

CREATE TABLE address (
	id SERIAL PRIMARY KEY, 
	street VARCHAR(30),
	city VARCHAR(30),
	postcode VARCHAR(7)
);

/*
CREATE THE EMPLOYEES TABLE 
*/ 

CREATE TABLE employees (
	id SERIAL PRIMARY KEY, 
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	pay NUMERIC(4,2),
	hours INT,
	days_off INT,
	address_id INT REFERENCES address(id)
);

/*
CREATE THE CUSTOMERS TABLE
*/ 

CREATE TABLE customers (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	gender CHAR(1), 
	telephone VARCHAR(15),
	email VARCHAR(30),
	date_joined DATE,
	address_id INT REFERENCES address(id)
);

/*
CREATE THE ORDERS TABLE
*/

CREATE TABLE orders (
	id SERIAL PRIMARY KEY,
	customer_id INT REFERENCES customers(id),
	product_id INT REFERENCES products(id), 
	quantity INT,
	price NUMERIC(4,2),
	order_date DATE
);
