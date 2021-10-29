USE sql_store;

SELECT * 
FROM order_items
Where order_id = 2
ORDER BY unit_price * quantity DESC
;