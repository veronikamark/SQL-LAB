USE company;

SELECT
    c.customer_id AS 'Customer ID',
    c.last_name AS 'Last Name',
    c.first_name AS 'First Name',
    i.invoice_id AS 'Invoice ID',
    i.transaction_moment AS 'Transaction Moment'
FROM
    customer c
LEFT JOIN invoice i ON c.customer_id = i.customer_id
UNION
SELECT
    c.customer_id AS 'Customer ID',
    c.last_name AS 'Last Name',
    c.first_name AS 'First Name',
    i.invoice_id AS 'Invoice ID',
    i.transaction_moment AS 'Transaction Moment'
FROM
    invoice i
LEFT JOIN customer c ON c.customer_id = i.customer_id
WHERE
    c.customer_id IS NULL
ORDER BY 'Invoice ID';