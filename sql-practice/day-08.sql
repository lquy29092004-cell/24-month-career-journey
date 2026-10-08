-- Day 8: Duplicate Data Validation

-- Exercise 1:
-- Find duplicate registrations for the same user and event.

SELECT user_id, event_name, COUNT(event_name)
FROM registrations
GROUP BY user_id, event_name
HAVING COUNT(event_name) > 1;


-- Exercise 2:
-- Find duplicate emails.

SELECT email, COUNT(email)
FROM users
GROUP BY email
HAVING COUNT(email) > 1;


-- Exercise 3:
-- Find duplicate non-NULL emails.

SELECT email, COUNT(email)
FROM users
WHERE email IS NOT NULL
GROUP BY email
HAVING COUNT(email) > 1;