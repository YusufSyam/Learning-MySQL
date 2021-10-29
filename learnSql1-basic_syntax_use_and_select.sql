-- Syntax use untuk mendeklarasikan database apa yang ingin dipakai
USE sql_store;

-- Query
SELECT 
-- Untuk menspesifikasikan kolom apa yang ingin diquery, kalau * berarti mengambil semua kolom
customer_id, first_name, last_name
-- From untuk menyatakan tabel mana yang ingin dipakai, kalau database tidak dideklarasikan (USE database) sebelumnya, maka kita bisa: database.table
FROM customers
-- Where, untuk memfilter kolom, misal untuk customer_id yang lebih kecil dari 9
WHERE customer_id < 9
-- Order by untuk sorting
ORDER BY first_name;