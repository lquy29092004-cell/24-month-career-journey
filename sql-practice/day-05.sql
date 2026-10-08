-- ==========================================
-- DAY 05 — SQL FOUNDATION PRACTICE
-- ==========================================

-- Bài 1
-- Lấy tên khách hàng và số tiền của những đơn hàng
-- có số tiền từ 1000 trở lên.
SELECT customers.name, orders.amount
FROM customers
JOIN orders
ON customers.id = orders.customer_id
WHERE orders.amount >= 1000;


-- Bài 2
-- Tính tổng tiền đã đặt hàng của từng khách hàng,
-- chỉ tính những đơn hàng có amount >= 500.
SELECT customers.name, SUM(orders.amount)
FROM customers
JOIN orders
ON customers.id = orders.customer_id
WHERE orders.amount >= 500
GROUP BY customers.name;


-- Bài 3
-- Tính tổng tiền mỗi khách hàng đã chi cho sản phẩm Food
-- và chỉ lấy khách hàng có tổng tiền lớn hơn 1500.
SELECT customers.name, SUM(orders.amount)
FROM customers
JOIN orders
ON customers.id = orders.customer_id
JOIN products
ON orders.product_id = products.id
WHERE products.category = 'Food'
GROUP BY customers.name
HAVING SUM(orders.amount) > 1500;


-- Bài 4
-- Tìm 3 khách hàng có tổng tiền mua sản phẩm Food cao nhất,
-- chỉ tính các đơn hàng có amount >= 500.
SELECT customers.name, SUM(orders.amount)
FROM customers
JOIN orders
ON customers.id = orders.customer_id
JOIN products
ON orders.product_id = products.id
WHERE products.category = 'Food'
  AND orders.amount >= 500
GROUP BY customers.name
ORDER BY SUM(orders.amount) DESC
LIMIT 3;