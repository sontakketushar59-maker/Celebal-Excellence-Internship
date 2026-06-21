-- Section D: Joins & Relationships

-- Q19: Orders + customer names
SELECT o.order_id, o.order_date, c.first_name, c.last_name, o.total_amount
FROM orders o INNER JOIN customers c ON o.customer_id = c.customer_id;

-- Q20: Left join customers + orders
SELECT c.customer_id, c.first_name, c.last_name, o.order_id, o.order_date
FROM customers c LEFT JOIN orders o ON c.customer_id = o.customer_id;

-- Q21: Orders → items → products
SELECT o.order_id, p.product_name, oi.quantity, oi.unit_price, oi.discount_pct
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;

-- Q22: LEFT vs RIGHT JOIN explanation
-- LEFT JOIN → all customers, even without orders.
-- RIGHT JOIN → all orders, even if customer missing.
-- FULL OUTER JOIN → both sides, useful for mismatched data.

-- Q23: Foreign Keys explanation
-- orders.customer_id → customers.customer_id
-- order_items.order_id → orders.order_id
-- order_items.product_id → products.product_id
-- Insert with customer_id=999 fails: foreign key constraint error.
