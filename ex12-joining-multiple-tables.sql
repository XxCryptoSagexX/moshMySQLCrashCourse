-- Join three tables(PAYMENT, CLIENTS, PAYMENT_METHODS) to perform a more detailed report on payments made from SQL_INVOICE
USE sql_invoicing;
SELECT
	p.date,
    p.invoice_id,
    p.amount,
    c.name,
    pm.name AS payment_type
FROM payments p
JOIN clients c
	ON p.client_id = c.client_id
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
