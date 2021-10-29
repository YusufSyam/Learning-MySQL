-- Inner join 
-- Menggabungkan dua tabel
-- JOIN secara default adalah INNER JOIN

USE sql_store;

-- Misal mengambil semua elemen dari tabel customers dan orders
SELECT * 
FROM customers 
INNER JOIN orders
	-- Kita harus mendefinisikan relasi berdasarkan apa, misal berdasarkan id
    ON orders.customer_id= customers.customer_id;
    
-- Kita bisa memilih kolom dari tabel mana yang ingin ditampilkan, Jika terdapat kolom dengan nama yang sama,
-- Maka kita bisa meng-spesifikasikan tabelnya. tabel.kolom
SELECT customers.first_name, customers.last_name, order_id
FROM customers
JOIN orders
    ON orders.customer_id= customers.customer_id;
    
-- Penggunaan alias (AS) juga bisa digunakan untuk kasus ini
SELECT c.first_name, c.last_name, order_id
FROM customers c
JOIN orders o
    ON o.customer_id= c.customer_id;

