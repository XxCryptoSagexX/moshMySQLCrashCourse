-- Get orders that are not shipped
SELECT *
FROM orders
WHERE shipped_date IS NULL
-- WHERE shipper_id IS NULL <-- Acceptable answer

-- WHERE comments IS NULL -->  give you incorrect data. (MISSING)
-- WHERE status = 1 --> gives you same result
