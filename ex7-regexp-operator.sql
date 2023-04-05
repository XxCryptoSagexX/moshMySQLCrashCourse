-- REG - REGULAR Expressions

-- Get the customers whose
--      first names are ELKA or AMBUR
SELECT *
FROM customers
WHERE first_name REGEXP 'ELKA|AMBUR'

-- Get the customers whose
--      last names end with EY or ON
SELECT *
FROM customers
WHERE last_name	 REGEXP 'ey$|on$'

-- Get the customers whose
--      last names start with MY or contains SE
SELECT *
FROM customers
WHERE last_name	REGEXP '^my|se'

-- Get the customers whose
--      last names contain B followed by R or U
SELECT *
FROM customers
WHERE last_name	REGEXP 'b[ru]'



-- • Note: WHERE last_name REGEXP 'field' <-- Similar to like but does not need quotations and will search. 
-- • Note: WHERE last_name REGEXP '^field' <-- Returns any lastname that starts with 'field'
-- • Note: ^ represents the beginning of a string when using REGEXP 
-- • Note: $ represents the end of a string when using REGEXP 
-- • Note: WHERE last_name REGEXP 'field&' <-- Returns any lastname that ends 'field'
-- • Note: WHERE last_name REGEXP 'field|mac' <-- Allows for multi searching... In this case any instacne of MAC and FIELD
-- • Note: WHERE last_name REGEXP 'field|mac|rose' <-- Allows for multi searching... In this case any instacne of MAC or FIELD or ROSE
-- • Note: WHERE last_name REGEXP '^field|mac|rose' <-- Allows for multi searching... In this case any instacne of MAC or FIELD(starts with) or ROSE
-- • Note: WHERE last_name REGEXP 'field$|mac|rose' <-- Allows for multi searching... In this case any instacne of MAC or FIELD(ends with) or ROSE

-- • Note: WHERE last_name REGEXP 'e' <-- Searching for any last name with 'e'
-- • Note: WHERE last_name REGEXP '[gim]e' <-- Searching for any last name with G or I or M before any last name with 'e'
-- • Note: WHERE last_name REGEXP 'e[gim]' <-- Searching for any last name with G or I or M after any last name with 'e'

-- • Note: '[a-z]e' <-- allows for any range of characters before the search criteria of 'e' meaning you dont have to add each alphabet/character
