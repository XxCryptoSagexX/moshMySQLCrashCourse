/*
    DB: SQL Invoicing
    Objective: Query for Payment date, Client, Ammount, and Payment Type (Name)
*/
SELECT
	p.date,
    c.name AS client,
    p.amount,
    pm.name
FROM payments p
JOIN clients c
	USING (client_id)
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
--------------------------------------------------------------------------------------------------

/* Using Clause */
-- Without USING clause.
SELECT
    o.order_id,
    c.first_name
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id

-- With USING clause.
SELECT
    o.order_id,
    c.first_name
FROM orders o
JOIN customers c
    USING (customer_id)


-- USING clause - Additional Tables & Left JOIN.
SELECT
    o.order_id,
    c.first_name
    sh.name AS shipper
FROM orders o
JOIN customers c
    USING (customer_id)
LEFT JOIN shippers sh
    USING (shipper_id)


-- USING clause - Composit Primary KEY
    -- Composite Primary Key: Key of multiple coloums (ORDER_ITEMS)
        -- Both keys uniquely identify each record as oppose to one. 
SELECT *
FROM order_items oi 
JOIN order_item_notes oin
    ON oi.ord_id = oin.order_id
    AND oi.product_id = oin.product_id
-- Fixed Version
SELECT *
FROM order_items oi 
JOIN order_item_notes oin
    USING (order_id, product_id)
/* 
    Notes:

    • USING clause only applys when the two tables have the same name for the colum. 
*/

