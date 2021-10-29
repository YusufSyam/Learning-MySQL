-- Get the customers whose
-- first name elka or ambur
-- last name end with ey or on
-- last name start with my or contains se
-- last names contain b followed by r or u

USE sql_store;

-- 1
SELECT 	* FROM 	customers WHERE first_name REGEXP 'elka|ambur';

-- 2
SELECT * FROM customers WHERE last_name REGEXP 'EY$|ON$';

-- 3
SELECT * FROM customers WHERE last_name REGEXP '^MY|SE';

-- 4
SELECT * FROM customers WHERE last_name REGEXP 'B[RU]';