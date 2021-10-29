-- Chalengge 1
-- Dari tabel sql_store.products, buat 3 kolom yang berisi nama (first+last), unit price dan new price (unit price * 1.1)

USE sql_store;

SELECT 
	name,
    unit_price,
    (unit_price*1.1) as 'new price'
FROM
	products;