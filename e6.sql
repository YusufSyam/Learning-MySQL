-- Get customers whose addressess contain TRAIL or AVENUE 
-- Get customers whose phone numbers end with 9

USE sql_store;

SELECT * 
FROM customers
WHERE
	address LIKE '%trail%' OR address LIKE '%avenue%'
;

SELECT * 
FROM customers
WHERE
	phone LIKE '%9'
;