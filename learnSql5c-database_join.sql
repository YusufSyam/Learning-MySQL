-- Misalkan ingin join tabel order_items pada database sql_store, dengan table products pada database sql_inventory

USE sql_store;

SELECT *
FROM order_items oi
JOIN -- Di sini kita akan menspesfikasikan nama database dengan operator dot, database.table
	sql_inventory.products p
    ON oi.product_id = p.product_id