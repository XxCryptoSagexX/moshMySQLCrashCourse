-- Get  customers whose
--      addresses contain TRAIL or AVENUE
SELECT *
FROM customers
WHERE address LIKE  '%trail%' OR address LIKE '%avenue%'

-- Get  customers whose
--      phone numbers end with 9
SELECT *
FROM customers
WHERE phone LIKE '%9'
-- WHERE phone LIKE '___________9' <--- Appropriate solution

-- • Note: last_name LIKE 'b%'<-- % respresents any character after whether it be none or 2. or 3.
-- • Note: Caseing of the 'b' in 'b%' does NOT matter as its just looking for what starts with 'b 
-- • Note: last_name LIKE '&b%'<-- looking for 'b' in last name period.
-- • Note: last_name LIKE 'b%'<-- Looking for lastname that starts with 'b'.
-- • Note: last_name LIKE '_y%'<-- Looking for lastnames that have a 'y' in character 2 slot.
-- • Note: last_name LIKE '_____y%'<-- Looking for lastnames that have a 'y' in character 6 slot.
-- • Note: last_name LIKE 'b____y%'<-- Looking for lastnames that start with 'b' and end with a 'y' in character 6 slot.
