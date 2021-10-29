-- REGEXP mirip dengan like, tapi lebih 'powerful'

-- b untuk mencari string di manapun tempatnya
-- ^b untuk mencari string dengan awalan b
-- b$ untuk mencari string dengan akhiran b
-- b|a untuk mencari string b atau a (di manapun tempatnya)
-- [lmn]b untuk mencari lb atau mb atau nb
-- [a-e]n untuk mencari an atau bn atau cn atau dn
-- Dll, tapi sebagian besar yang akan kita pake itu yang di atas

USE sql_store;

-- Misal mencari first_name dengan huruf a
SELECT * FROM customers WHERE first_name REGEXP 'a';

-- Misal mencari first_name dengan akhiran a ATAU awalan b
SELECT * FROM customers WHERE first_name REGEXP 'a$|^b';

-- Perhatikan saat operasi 'atau', akan sensitif terhadap spasi, jadi queri di bawah akan mempunyai output berbeda dari queri di atas
SELECT * FROM customers WHERE first_name REGEXP 'a$ | ^b';

-- Mencari first_name dengan huruf ba, ha, atau ka
SELECT * FROM customers WHERE first_name REGEXP '[bhk]a'

