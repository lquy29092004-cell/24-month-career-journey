-- ==========================================
-- DAY 04 — SQL FOUNDATION PRACTICE
-- ==========================================

-- Bài 1
-- Lấy tên khách hàng và số tiền của những đơn hàng
-- có amount lớn hơn 1000.
SELECT customers.name, orders.amount
FROM customers
JOIN orders
ON customers.id = orders.customer_id
WHERE orders.amount > 1000;


-- Bài 2
-- Lấy tên từng khách hàng và tổng số tiền của các
-- đơn hàng có amount lớn hơn 500.
SELECT customers.name, SUM(orders.amount)
FROM customers
JOIN orders
ON customers.id = orders.customer_id
WHERE orders.amount > 500
GROUP BY customers.name;


-- Bài 3
-- Tính tổng số tiền khách hàng đã mua đối với sản phẩm
-- thuộc category Food và chỉ lấy khách hàng có tổng tiền > 1000.
SELECT customers.name, SUM(orders.amount)
FROM customers
JOIN orders
ON customers.id = orders.customer_id
JOIN products
ON orders.product_id = products.id
WHERE products.category = 'Food'
GROUP BY customers.name
HAVING SUM(orders.amount) > 1000;


-- Bài 4
-- Tính tổng tiền mỗi khách hàng đã chi cho sản phẩm Food,
-- chỉ lấy khách hàng có tổng tiền >= 2000,
-- sắp xếp từ tổng tiền cao xuống thấp.
SELECT customers.name, SUM(orders.amount)
FROM customers
JOIN orders
ON customers.id = orders.customer_id
JOIN products
ON orders.product_id = products.id
WHERE products.category = 'Food'
GROUP BY customers.name
HAVING SUM(orders.amount) >= 2000
ORDER BY SUM(orders.amount) DESC;