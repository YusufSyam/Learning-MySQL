USE sql_store;

-- Misal kita ingin SELECT * FROM customers WHERE points >= 1000 AND points<= 3000
-- Maka cara lebih 'bersih' nya adalah pake between
SELECT * FROM customers WHERE points BETWEEN 1000 AND 3000; -- Between itu >= start, <= end