USE sql_store;

-- Like digunakan untuk mencari sebuah pola string / string pattern, (ignore case)
-- % Untuk merepresentasikan berapapun angka atau char
-- _ Untuk merepresentasikan satu angka atau char

-- Misal mencari last_name yang awalnya b
SELECT * FROM customers WHERE last_name LIKE 'b%';

-- Mencari last_name yang terdapat b di manapun posisinya, dan terdapat y di akhir
SELECT * FROM customers WHERE last_name LIKE '%b%' AND last_name LIKE '%y';

-- Mencari last_name yang diakhiri dengan y, dan sebelumnya terdapat tepat 5 char
SELECT * FROM customers WHERE last_name LIKE '_____y'; -- Bisa juga '_B_J_Y', dll

