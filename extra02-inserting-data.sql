/*Inserting a single row to table. */
-- Method 1: Adding per coloum.
INSERT INTO customers
VALUES (
	DEFAULT,
    'John',
    'Smith',
    '1993-04-22',
    NULL,
    '69 Celestial Circle',
    'Celestia',
    'NY',
    DEFAULT )

-- Method 2: Adding explicitly per coloum
INSERT INTO customers (
    first_name,
    last_name,
    birth_date,
    address,
    city,
    state
)
VALUES (
    'John',
    'Smith',
    '1993-04-22',
    '69 Celestial Circle',
    'Celestia',
    'NY', )

-- Lesson Example.
INSERT INTO customers (
    last_name,
	first_name,
    birth_date,
    address,
    city,
    state
)
VALUES (
    'Smith',
    'John',
    '1993-04-22',
    'address',
    'city',
    'CA', )
/* 
    Notes:

    • Method2 allows for you to list the coloums you are going to add in any order as long as value matches. 
        Meaning IF CITY is entryNO# 5 valueNO# 5 should match to CITY 
*/

/* Inserting Multiple Rows */
-- See ex18-inserting-multiple-rows.sql

/* Inserting Hierarchical Rows */
-- AKA Inserting Into Multiple Tables
INSERT INTO orders (customer_id, order_date,status)
VALUES (1,'2019-01-02',1);

INSERT INTO order_items
VALUES 
	(LAST_INSERT_ID(),1,1,2.95),
    (LAST_INSERT_ID(),2,1,3.95)
/* 
    Notes:

    • Entry of these seem to be using valid data vs creating your own. EXAMPLE he used client_id:1 instead of adding one "12" this is probably because he would need to add it to the customers table first then use it. 
    • LAST_INSERT_ID: is an SQL function that calls to the last inserted ID which was 12
    
*/

