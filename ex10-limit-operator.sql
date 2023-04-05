-- Get the top three points
SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3

-- • Note: LIMIT clause should always be last