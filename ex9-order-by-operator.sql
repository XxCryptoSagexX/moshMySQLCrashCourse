-- Provide orders for id 2 and sort based on total price (DESC).

SELECT *
FROM order_items
WHERE order_id = 2
ORDER BY quantity * unit_price DESC
-- • Note: Notice that this does NOT show the result of "total price" as a colum. 

SELECT *, quantity * unit_price AS total_price
FROM order_items
WHERE order_id = 2
ORDER BY total_price DESC
-- slightly cleaner method as you would be duplicating code. With SELECT clause and ORDER BY clause. 