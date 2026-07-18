-- Section C: Aggregation

-- Q13: Count total orders
SELECT COUNT(*) AS total_orders FROM orders;

-- Q14: Revenue from delivered orders
SELECT SUM(total_amount) AS delivered_revenue 
FROM orders WHERE status = 'Delivered';

-- Q15: Average unit_price per category
SELECT category, AVG(unit_price) AS avg_price 
FROM products GROUP BY category;

-- Q16: Orders by status + revenue
SELECT status, COUNT(*) AS order_count, SUM(total_amount) AS total_revenue
FROM orders GROUP BY status
ORDER BY total_revenue DESC;

-- Q17: Min/Max product per category
SELECT category, MIN(unit_price) AS cheapest, MAX(unit_price) AS expensive
FROM products GROUP BY category;

-- Q18: Categories with avg > 2000
SELECT category, AVG(unit_price) AS avg_price
FROM products GROUP BY category
HAVING AVG(unit_price) > 2000;
