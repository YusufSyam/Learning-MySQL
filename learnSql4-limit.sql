-- LIMIT n, untuk membatasi hanya sampai n baris
-- Jika n lebih besar dari jumlah data, tidak akan terjadi apa2
-- Limit m, n untuk membatasi n baris mulai dari baris m
-- LIMIT biasanya ditempatkan pada akhir setelah query2 yang lebih penting

USE sql_store;

-- Membatasi 3 data
SELECT * FROM customers LIMIT 3;

-- Membatasi 4 data tapi mulai dari baris ke 2
SELECT * FROM customers LIMIT 2, 4