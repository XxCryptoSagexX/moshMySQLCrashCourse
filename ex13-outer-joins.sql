




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

SELECT
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
RIGHT JOIN orders o
	ON c.customer_id = o.customer_id
ORDER By c.customer_id
/* 
    Notes: OUTER JOIN

    LEFT JOIN
    • Returns all records from left table (aka the FROM CLAUSE) regardless of ON clause is TRUE OR FALSE 


    RIGHT JOIN
    • Returns all records from RIGHT table (aka the JOIN CLAUSE) regardless of ON clause is TRUE OR FALSE 
    • Resulted in the same as the JOIN in seeing only customers with ORDERS.
*/
