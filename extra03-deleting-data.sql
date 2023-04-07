/* Deleting Data */
-- Deleting Entire Records List
DELETE FROM invoices

-- Deleting specific Records
DELETE FROM invoices
WHERE order_id = 1

-- Deleting with Subqueries
DELETE FROM invoices
WHERE client_id = (
	SELECT *
	FROM clients
	WHERE name = 'Myworks'
)

/* 
    Notes:

    • Remember to check what you are deleting before deleting. AND TRY NOT TO DELETE ENTIRE RECORD
*/

