-- Kita memakai ORDER BY untuk menyortir data
-- Secara default data tersortir berdasarkan primary key

USE sql_store;

-- Misal sortir customer berdasarkan first_name
SELECT * FROM customers ORDER BY first_name;

-- Disortir secara default ASC (a-z), kita bisa mengubah urutan sortirnya menjadi terbalik (DESC)
SELECT * FROM customers ORDER BY first_name DESC;

-- Kita bisa menyortir berdasarkan 2 kolom
SELECT * FROM customers ORDER BY first_name DESC, last_name ASC;

-- Pada mysql, kita bisa menyortir berdasarkan kolom yang tidak ditampilkan
SELECT last_name FROM customers ORDER BY birth_date;

-- Kita juga bisa menyortir berdasarkan aliases (AS)
SELECT *, (points % 5) AS points_mod_five FROM customers ORDER BY points_mod_five;
