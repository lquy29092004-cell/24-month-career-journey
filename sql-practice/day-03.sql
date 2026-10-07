-- ==========================================
-- DAY 03 — SQL FOUNDATION PRACTICE
-- ==========================================

-- Bài 1
-- Tính tổng amount của tất cả các đơn hàng.
SELECT SUM(amount)
FROM orders;


-- Bài 2
-- Tính tổng amount của từng category.
SELECT category, SUM(amount)
FROM sales
GROUP BY category;


-- Bài 3
-- Lấy tên khách hàng và amount
-- của những đơn hàng có amount lớn hơn 500.
SELECT customers.name, orders.amount
FROM customers
JOIN orders
ON customers.id = orders.customer_id
WHERE orders.amount > 500;


-- Bài 4
-- Lấy tên từng khách hàng và tổng số tiền
-- mà khách hàng đó đã đặt hàng.
SELECT customers.name, SUM(orders.amount)
FROM customers
JOIN orders
ON customers.id = orders.customer_id
GROUP BY customers.name;