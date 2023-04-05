/* Joining Accros Databases */
USE sql_store;

SELECT *
FROM order_items oi
JOIN sql_inventory.products p
    ON oi.product_id = p.product_id
-- Allows for you to access data from another database.
-- In this example you are showcasing data from the SQL_INVENTORY database along with SQL_STORE database together. 
-- • Note: query is maded based on current "Opened" database. 

/* Self Join */
SELECT 
	e.employee_id,
	e.first_name,
    m.first_name AS manager
FROM employees e
JOIN employees m
	ON e.reports_to = m.employee_id
-- Similar to joining across different databases but must have different alias names.
-- In this example you are showcasing the employee IDs with their first name and the name of their Manager.

/* Joining Multiple Tables */
USE sql_store;
SELECT 
	o.order_id,
    o.order_date,
    c.first_name,
    c.last_name,
    os.name AS status
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id
JOIN order_statuses os
	ON o.status = os.order_status_id
-- Combines three tables (ORDERS, CUSTOMERS, ORDER_STATUSES)
/* 
    Notes:

    •
*/

/* Compound Join Conditions */
SELECT * 
FROM order_items oi
JOIN order_item_notes oin
	ON oi.order_id = oin.order_id
    AND oi.product_id = oin.product_id
/* 
    Notes:

    • This denotes that you are joining two tables at two coloums instead of specifically one in previous iterations. In a way its like two coloums make 1 record.
*/

/* Implicit Join Syntax */

-- The normal way of making an Inner Join
SELECT * 
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id

-- Implicit Join Syntax <-- Not reccommended due to potential/accidental CROSS JOIN creations. 
SELECT * 
FROM orders o, customers c
WHERE o.customer_id = c.customer_id