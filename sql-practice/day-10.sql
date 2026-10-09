-- Day 10: SQL Integration Practice

-- Exercise 1:
-- Find users with at least 2 confirmed registrations.

SELECT registrations.user_id, users.name, COUNT(registrations.status)
FROM registrations
JOIN users
ON users.id = registrations.user_id
WHERE registrations.status = 'confirmed'
GROUP BY registrations.user_id, users.name
HAVING COUNT(registrations.status) >= 2;


-- Exercise 2:
-- Find users with no confirmed registrations.

SELECT users.id, users.name, COUNT(registrations.status)
FROM users
LEFT JOIN registrations
ON users.id = registrations.user_id
AND registrations.status = 'confirmed'
GROUP BY users.id, users.name
HAVING COUNT(registrations.status) = 0;