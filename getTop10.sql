USE company;

SELECT
    customer.customer_id,
    customer.first_name,
    customer.last_name,
    SUM(orders.amount * product.price) AS total_revenue
FROM
    orders
JOIN
    customer ON orders.customer_id = customer.customer_id
JOIN
    product ON orders.product_id = product.product_id
GROUP BY
    customer.customer_id, customer.first_name, customer.last_name
ORDER BY
    total_revenue DESC
LIMIT 10;
