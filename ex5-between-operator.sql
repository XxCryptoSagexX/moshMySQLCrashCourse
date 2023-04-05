-- Return customers born
--          between 1-Jan-1990 and 1-Jan-2000

SELECT *
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01'