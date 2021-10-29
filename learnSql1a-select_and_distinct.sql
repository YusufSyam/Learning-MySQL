USE sql_store;

SELECT
	first_name,
    points,
    -- Kita bisa melakukan operasi aritmatika/string pada suatu kolom, misal pada kolom menambahkan 10 points lalu mengalikannya dengan 100
    (points + 10) * 100,
    -- Kita juga bisa mengganti nama kolum yang akan ditampilkan
    birth_date AS 'Happy Birthday' -- Kalau tidak ada spasi, bisa tidak dikasi dalam petik
FROM
	customers;

-- Misal ingin mendapatkan nilai unik pada suatu kolom, kita tinggal menambahkan DISTINCT sebelum nama kolomnya
SELECT DISTINCT state FROM customers;