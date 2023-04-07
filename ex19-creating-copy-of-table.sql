/* 
    Excercise #: Creating a Copy of a Table
    DB: SQL_INVOICING
    Objective: Create table INVOICES_ARCHIVED
        NO CLIENT ID --> instead client NAME (Join with Clients TABLE)
        ONLY INOVICES WITH PAYMENT DAY 
*/
CREATE TABLE invoices_archived AS
SELECT
	i.invoice_id,
    i.number,
    c.name AS client, 
    i.invoice_total,
    i.payment_total,
    i.invoice_date,
    i.due_date,
    i.payment_date
FROM invoices i
JOIN clients c
	USING (client_id)
WHERE payment_date IS NOT NULL


------------------------------------------------------------------------
-- Creating copy of table
CREATE TABLE orders_archived AS
SELECT * FROM orders
-- Note this does not prhave the primary KEYs for this table and will need to be added. 

--Inserting specific data
INSERT INTO orders_archive
SELECT *
FROM orders
WHERE order_date < '2019-01-01'
/* 
    Notes:

    • You do not need to supply colums in the insert clause due to supplying everything specifically in this case. 
*/