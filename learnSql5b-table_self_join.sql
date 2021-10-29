-- Self join
-- Inner join pada kasus tertentu
-- Misal pada db sql_hr tabel employees, terdapat pegawai dan manager nya (tabel reports_to, yang mana merupakan id dari manager)alter
-- Di tabel ini, employee / pegawai yang tidak memiliki manager (reports_to nya null) adalah seorang manager
-- Jadi pada kasus ini kita bisa menggunakan self join

USE sql_hr;

SELECT 
    -- Pada self join saat menyeleksi kolom, kita harus menspesifikasikan nama tabel
    e.employee_id,
	CONCAT(e.first_name, ' ', e.last_name) AS employee, 
    CONCAT(m.first_name, ' ', m.last_name) AS manager
FROM employees e -- Pada kasus self join, kita harus memberikan aliases, di sini kita kasi alias e untuk merepresentasikan employee
JOIN employees m -- Kita kasi alias m untuk merepresentasikan manager
ON e.reports_to = m.employee_id