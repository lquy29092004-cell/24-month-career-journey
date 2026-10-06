-- ==========================================
-- DAY 02 — SQL FOUNDATION PRACTICE
-- ==========================================

-- Question 1
-- Lấy tên và tuổi của sinh viên từ 18 tuổi trở lên.
SELECT name, age
FROM students
WHERE age >= 18;


-- Question 2
-- Lấy tên và giá của sản phẩm có giá dưới 100.
SELECT name, price
FROM products
WHERE price < 100;


-- Question 3
-- Lấy tên và lương của nhân viên,
-- sắp xếp lương từ cao xuống thấp.
SELECT name, salary
FROM employees
ORDER BY salary DESC;


-- Question 4
-- Tính tổng amount của từng category.
SELECT category, SUM(amount) AS total_amount
FROM sales
GROUP BY category;


-- Question 5
-- Lấy tên sinh viên và điểm.
SELECT students.name, scores.score
FROM students
JOIN scores
ON students.id = scores.student_id;


-- Challenge
-- Lấy tên khách hàng và tổng số tiền họ đã đặt hàng.
SELECT customers.name, SUM(orders.amount) AS total_amount
FROM customers
JOIN orders
ON customers.id = orders.customer_id
GROUP BY customers.name;