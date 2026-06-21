-- Section A: SQL Basics

-- Q1: Show all customers
SELECT * FROM customers;

-- Q2: First name, last name, city
SELECT first_name, last_name, city FROM customers;

-- Q3: Unique product categories
SELECT DISTINCT category FROM products;

-- Q4: Primary Keys explanation
-- customers → customer_id
-- products → product_id
-- orders → order_id
-- order_items → item_id
-- PK must be UNIQUE and NOT NULL to identify each row.

-- Q5: Constraints on email
-- email column is UNIQUE + NOT NULL.
-- Duplicate insert will fail with "duplicate key error".

-- Q6: Invalid product insert
INSERT INTO products VALUES (999, 'Test Product', 'Electronics', 'TestBrand', -50, 10);
-- Error: CHECK constraint prevents negative unit_price.
