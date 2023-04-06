/* 
    Excercise 16: Cross Joins
    DB: 
    Objective: Do a cross join between shippers and products
        • Use Implicit syntax
        • Use Explicit syntax 
*/
SELECT 
	sh.name AS shipper,
    p.name AS product
FROM shippers sh, products p
ORDER BY sh.name

SELECT 
	sh.name AS shipper,
    p.name AS product
FROM shippers sh
CROSS JOIN products p
ORDER BY sh.name

------------------------------------------------------------------------
-- (EXPLICIT) Cross Join Example
SELECT 
	c.first_name AS customer,
    p.name AS product
FROM customers c
CROSS JOIN products p 
ORDER BY c.first_name
-- See how this example provies each name with each product. 
-- Understand that this example isnt be best for why you would use CROSS JOIN.
    -- A better Example would be:
        -- Table 1: SIZES (S, M, L) CROSS JOINS TABLE 2: COLOR (Blue, Green, Purple)
            -- this would allow for any combination between color and size. 

-- (IMPLICIT) Cross Join Example
SELECT 
	c.first_name AS customer,
    p.name AS product
FROM customers c, order o
ORDER BY c.first_name
-- Recommended to use EXPLICIT vs IMPLICIT as it is clearer 

/* 
    Notes:

    • Cross Join: Joining every record from first table with every record in second table 

*/