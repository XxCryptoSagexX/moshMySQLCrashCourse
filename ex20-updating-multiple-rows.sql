/* 
    Excercise #: Updating Multiple Rows
    DB: SQL_STORE
    Objective: Write a SQL statement to
        • give any customers born before 1990 50xtra points
*/
USE sql_store;

UPDATE customers
SET points = points + 50
WHERE birth_date < '1990-01-01'

------------------------------------------------------------------------
/* Updating Row */
UPDATE invoices
SET 
	payment_total = invoice_total * 0.5,
	payment_date = due_date
WHERE client_id = 3
WHERE client_id IN (3,4)
