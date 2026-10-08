-- Day 9: Business Rule Validation with Aggregation


-- Exercise 1:
-- Find events whose confirmed registrations exceed capacity.

SELECT
    events.id,
    events.event_name,
    events.capacity,
    COUNT(registrations.status)
FROM events
JOIN registrations
ON registrations.event_id = events.id
WHERE registrations.status = 'confirmed'
GROUP BY events.id, events.event_name, events.capacity
HAVING COUNT(registrations.status) > events.capacity;


-- Exercise 2:
-- Find events with zero registrations.

SELECT
    events.id,
    events.event_name,
    COUNT(registrations.id)
FROM events
LEFT JOIN registrations
ON registrations.event_id = events.id
GROUP BY events.id, events.event_name
HAVING COUNT(registrations.id) = 0;


-- Exercise 3:
-- Find events that still have available capacity
-- based on confirmed registrations.

SELECT
    events.id,
    events.event_name,
    events.capacity,
    COUNT(registrations.id)
FROM events
LEFT JOIN registrations
ON registrations.event_id = events.id
AND registrations.status = 'confirmed'
GROUP BY events.id, events.event_name, events.capacity
HAVING COUNT(registrations.id) < events.capacity;