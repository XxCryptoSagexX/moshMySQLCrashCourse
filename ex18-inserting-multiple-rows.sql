/* 
    Excercise #: Inserting Multiple Rows
    DB: SQL_Store
    Objective:  Insert 3 Rows in the Products Table
*/
INSERT INTO products (
	name,
    quantity_in_stock,
    unit_price)
VALUES ('chicken wingettes',7,5.99),
	('Mura-chan Ramen Noodles',10,0.50),
    ('New York Strip Steak',4,18.99)

------------------------------------------------------------------------

INSERT INTO shippers (name)
VALUES ('Shipper1'),
	('Shipper2'),
    ('Shipper3')
/* 
    Notes:

    • To add multiple rows all that was needed to do was add more to the values for each one. 
*/
