-- Section E: Advanced Concepts

-- Q24: Price tiers with CASE
SELECT product_name, unit_price,
  CASE
    WHEN unit_price < 1000 THEN 'Budget'
    WHEN unit_price BETWEEN 1000 AND 3000 THEN 'Mid-Range'
    ELSE 'Premium'
  END AS price_tier
FROM products;

-- Q25: Delivered vs Not Delivered
SELECT 
  SUM(CASE WHEN status = 'Delivered' THEN 1 ELSE 0 END) AS delivered_count,
  SUM(CASE WHEN status <> 'Delivered' THEN 1 ELSE 0 END) AS not_delivered_count
FROM orders;

-- Q26: ACID explanation
-- Atomicity: all or nothing (bank transfer).
-- Consistency: rules enforced (no negative balance).
-- Isolation: transactions don’t interfere.
-- Durability: once committed, it staycustomerss.

-- Q27: Transaction block
START TRANSACTION;

INSERT INTO orders VALUES (1011, 102, CURDATE(), 'Pending', 1598.00);

INSERT INTO order_items VALUES (5016, 1011, 201, 1, 1499.00, 0);
INSERT INTO order_items VALUES (5017, 1011, 208, 1, 599.00, 0);

UPDATE products SET stock_qty = stock_qty - 1 WHERE product_id = 201;
UPDATE products SET stock_qty = stock_qty - 1 WHERE product_id = 208;

COMMIT;
-- If any error occurs: ROLLBACK;
