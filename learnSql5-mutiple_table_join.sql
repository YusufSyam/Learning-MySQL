-- Join multiple tables
-- Misal menggabungkan 5 table sql_store, yaitu 
-- customers untuk nama pemesan, orders untuk tanggal pemesanan, 
-- order_items lalu products untuk nama barang yang dipesan, dan order_statuses untuk status pemesanan
USE sql_store;

SELECT
	CONCAT(c.first_name, ' ', c.last_name) AS shipper,
    o.order_date,
    p.name AS product_name,
    os.name AS delivery_status
FROM orders o
JOIN customers c
	ON c.customer_id = o.customer_id
JOIN order_items oi
	ON o.order_id = oi.order_id
JOIN products p
	ON oi.product_id = p.product_id
JOIN order_statuses os
	ON o.status = os.order_status_id
