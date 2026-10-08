-- ==========================================
-- DAY 06 — DATA VALIDATION / DATABASE TESTING
-- ==========================================

-- Bài 1
-- Tìm tất cả registration có email bị thiếu.
SELECT *
FROM registrations
WHERE email IS NULL;


-- Bài 2
-- Tìm các registration thiếu name hoặc thiếu email.
SELECT *
FROM registrations
WHERE name IS NULL OR email IS NULL;


-- Bài 3
-- Tìm các order vi phạm business rule:
-- amount phải lớn hơn 0.
SELECT *
FROM orders
WHERE amount <= 0;