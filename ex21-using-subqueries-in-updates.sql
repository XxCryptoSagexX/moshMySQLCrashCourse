/* 
    Excercise 21: Using Subqueries in Updates
    DB: SQL_STORE
    Objective:  Find orders with customers that are considered GOLD [points>3000]
        update their comments with GOLD. 
*/
UPDATE orders
SET comments = 'GOLD customer'
WHERE customer_id IN
		( SELECT customer_id
		FROM customers
        WHERE points > 3000)
/* 
    Notes:

    •Remember that you are stating "update on orders table,set comments to Gold Customers WHERE the CUSTOMER iD Matches (customer ids taht have points over 3000)"
*/

------------------------------------------------------------------------
-- Single Update
UPDATE invoices
SET 
	payment_total = invoice_total * 0.5,
	payment_date = due_date
WHERE client_id = 
			(SELECT client_id
			FROM clients
			WHERE name ='Myworks')

-- Multiple Update
UPDATE invoices
SET 
	payment_total = invoice_total * 0.5,
	payment_date = due_date
WHERE client_id IN 
			(SELECT client_id
			FROM clients
			WHERE state IN  ('CA','NY') )


