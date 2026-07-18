-- Section B: Filtering & Optimization

-- Q7: Delivered orders
SELECT * FROM orders WHERE status = 'Delivered';

-- Q8: Electronics above ₹2000
SELECT * FROM products WHERE category = 'Electronics' AND unit_price > 2000;

-- Q9: Customers joined in 2024 from Maharashtra
SELECT * FROM customers 
WHERE YEAR(join_date) = 2024 AND state = 'Maharashtra';

-- Q10: Orders between dates, not cancelled
SELECT * FROM orders 
WHERE order_date BETWEEN '2024-08-10' AND '2024-08-25'
  AND status <> 'Cancelled';

-- Q11: Index explanation
-- idx_orders_date speeds up filtering/sorting by order_date.
SELECT * FROM orders WHERE order_date = '2024-08-20';

-- Q12: SARGable query
-- YEAR(join_date) disables index.
-- Rewrite:
SELECT * FROM customers 
WHERE join_date BETWEEN '2024-01-01' AND '2024-12-31';
