-- Multiple table join in sql_invoicing: payment, clients, payment methods

USE sql_invoicing;

SELECT 
    p.invoice_id,
	c.name,
    p.date AS payment_date,
    p.amount AS payment_amount,
    pm.name AS payment_method
FROM payments p
JOIN clients c
	ON p.client_id = c.client_id
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id