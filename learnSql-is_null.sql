USE sql_store;

-- IS NULL untuk mengecek jika terdapat null, dan akan mengembalikan baris yang terdapat null

-- Mencari NULL
SELECT * FROM customers WHERE phone IS NULL;

-- Mencari row yang tidak punya NULL
SELECT * FROM customers WHERE phone IS NOT NULL