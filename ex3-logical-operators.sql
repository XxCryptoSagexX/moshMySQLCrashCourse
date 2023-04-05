-- From the order_items table , the the items 
--      for order #6
--      where the total prices is greater than 30

SELECT *
FROM order_items
WHERE order_id = 6 AND unit_price * quantity > 30

-- • Note that the total prices expression did not need to go in the SELECT clause exclusively 