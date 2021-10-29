-- All possible WHERE condition: >, >=, <, <=, = (equality), != (not equality), <> (also not equality)

SELECT * FROM sql_store.customers WHERE state='VA'; -- Kalau string harus pake petik

-- Kita juga bisa mengaplikasikan operasi aritmatika pada kolom berbentuk date
SELECT * FROM sql_store.customers WHERE birth_date > '1990-01-01';

-- Operasi AND, OR, NOT
-- Misal kondisi javanya begini: if(points>2500 || (state=='VA' && city=='Waltham'))
-- Maka mysql nya seperti ini
SELECT * FROM sql_store.customers WHERE points>2500 OR (state='VA' AND city='Waltham');

-- Misal memfilter suatu kolom dengan 3 kondisi or
SELECT * FROM sql_store.customers WHERE state='VA' OR state='CO' OR state='TX';

-- Shorthand masalah di atas: IN
SELECT * FROM sql_store.customers WHERE state IN ('VA', 'FL', 'GA');
-- Kompliment dari kondisi di atas
SELECT * FROM sql_store.customers WHERE state NOT IN ('VA', 'FL', 'GA')
