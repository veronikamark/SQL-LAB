USE company;

SELECT
    product.product_id,
    product.product_name,
    SUM(orders.amount * product.price) AS total_revenue
FROM
    orders
JOIN
    product ON orders.product_id = product.product_id
GROUP BY
    product.product_id, product.product_name
HAVING
    total_revenue > 50000
ORDER BY
    total_revenue DESC;
