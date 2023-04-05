-- Get the orders placed this year (2019)

SELECT * 
FROM orders
WHERE order_date >= '20119-01-01'
-- note that its stating the date is greater than or equal to that specifc date 01 Jan 2019