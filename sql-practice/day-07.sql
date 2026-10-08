-- Day 7: Database Validation

-- Exercise 1:
-- Find registrations whose user does not exist.

SELECT *
FROM registrations
LEFT JOIN users
ON users.id = registrations.user_id
WHERE users.id IS NULL;


-- Exercise 2:
-- Find confirmed registrations belonging to existing users.

SELECT *
FROM registrations
LEFT JOIN users
ON users.id = registrations.user_id
WHERE users.id IS NOT NULL
  AND registrations.status = 'confirmed';


-- Exercise 3:
-- Find users who have no registration.

SELECT *
FROM users
LEFT JOIN registrations
ON registrations.user_id = users.id
WHERE registrations.user_id IS NULL;