-- Produce a query that shows PRODUCT_ID,NAMEofproduct, and QUANTITY for each product that has been ordered. IF there is a product that has not been ordered. It should still be shown NULL
SELECT
	p.product_id,
    p.name,
	oi.quantity
FROM products p
LEFT JOIN order_items oi
	ON p.product_id = oi.product_id
-- 

/* Outer Joins */

-- Inner Join
SELECT
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
JOIN orders o
	ON c.customer_id = o.customer_id
ORDER By c.customer_id
/* 
    Notes:

    • This query only shows customers who have an order... This specifically means CUSTOMER_ID:1 or CUSTOMER_ID:3 Are not visible as they do not have an order. To rectify this... use OUTER JOIN
    • ON c.customer_id = o.customer_id
        TRANSLATION: IF CUSTOMER has any given ORDER - RETURN IT
*/

-- OUTER JOIN -> Fixed
SELECT
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id
ORDER By c.customer_id
/* 
    Notes: OUTER JOIN - LEFT JOIN
    • Returns all records from left table (aka the FROM CLAUSE) regardless of ON clause is TRUE OR FALSE 
*/

SELECT
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
RIGHT JOIN orders o
	ON c.customer_id = o.customer_id
ORDER By c.customer_id
/*
    Notes: OUTER JOIN - RIGHT JOIN
    • Returns all records from RIGHT table (aka the JOIN CLAUSE) regardless of ON clause is TRUE OR FALSE 
    • Resulted in the same as the JOIN in seeing only customers with ORDERS.
*/
-- Method to still see the customers while using a right join --> swap JOIN and FROM clauses

