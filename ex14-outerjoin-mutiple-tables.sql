-- Create Query that sthows ORDER_DATE ORDER_ID FIRST_NAME SHIPPER STATUS
    -- Sort by status.
SELECT 
	o.order_date,
    o.order_id,
    c.first_name,
    sh.name AS shipper,
    os.name AS status
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
LEFT JOIN order_statuses os
	ON o.status = os.order_status_id
ORDER by o.status

/* 
    Best practices to try and not use RIGHT JOIN but to continue to use left joins. 
*/