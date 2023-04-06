/* 
    Excercise 17: Unions 
    DB: sql_store
    Objective: Create a query that shows the customer_id,firstname,points,and category of points called type
        • BRONZE: points < 2000
        • SILVER: points BETWEEN 2000 AND 3000
        • GOLD: points > 3000
*/
SELECT
	customer_id,
    first_name,
    points,
	'Bronze' AS type
FROM customers
WHERE points < 2000
/* 
    Notes:

    • Started by creating a coloum that looked for the bronze users then changed the name to be type.. THIS STILL COUNTS AS BRONZE
*/

UNION

SELECT
	customer_id,
    first_name,
    points,
	'Silver'
FROM customers
WHERE points BETWEEN 2000 AND 3000
-- This is naming specifically the coloums SILVER for those who meet the requirement. 

UNION

SELECT
	customer_id,
    first_name,
    points,
	'Gold'
FROM customers
WHERE points > 3000
order by first_name
-- This is naming specifically the coloums GOLD for those who meet the requirement. 



/* 
    BONUS Excercise 17: Unions 
    DB: sql_store
    Objective: Create a query that shows the customer_id,first_name, last_name, birth_date, and a new coloum for retierment status elegibility
        • NOT ELIGIBLE: birth_date > 1990-01-01
        • ELIGIBLE: birth_date < 1990-01-01
*/
SELECT
	customer_id,
    first_name,
    last_name,
    birth_date,
    'Not Eligible' AS retirement_status
FROM customers
WHERE birth_date > '1990-01-01'
UNION
SELECT
	customer_id,
    first_name,
    last_name,
    birth_date,
    'Eligible'
FROM customers
WHERE birth_date <= '1990-01-01'






------------------------------------------------------------------------
-- Unions: Bombining Rows instead of Coloums 
-- Separated Query Within the same table
SELECT
	order_id,
    order_date,
    'Active' AS status
FROM orders
WHERE order_date >= '2019-01-01';

SELECT
	order_id,
    order_date,
    'Archive' AS status
FROM orders
WHERE order_date < '2019-01-01';

-- Union of the Query
SELECT
	order_id,
    order_date,
    'Active' AS status
FROM orders
WHERE order_date >= '2019-01-01'

UNION

SELECT
	order_id,
    order_date,
    'Archive' AS status
FROM orders
WHERE order_date < '2019-01-01'


------------------------------------------------------------------------
-- Union Query with different tables with combined result




/* 
    Notes:

    •
*/