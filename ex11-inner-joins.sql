-- Join order_items with products showing product ID and its name. quantity and unit price. 
SELECT products.product_id, name, quantity, products.unit_price 
FROM order_items
JOIN products 
	ON order_items.product_id = products.product_id

-- Simplified variables 
SELECT order_id, p.product_id, name, quantity, oi.unit_price
FROM order_items oi
JOIN products p
	ON oi.product_id = p.product_id

-- Used oi.unit_price because this shows the price at the time of purchase vs the current price. 


 

 
