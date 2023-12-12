USE company;

SELECT
    DATE_FORMAT(orders.transaction_moment, '%m') AS "Month",
    SUM(orders.amount * product.price) AS "Total revenue",
    CONCAT('Quater ', QUARTER(orders.transaction_moment), ' - ', YEAR(orders.transaction_moment)) AS "Sales Period"
FROM
    orders
JOIN
    product ON orders.product_id = product.product_id
GROUP BY
    "Month", "Sales Period"
ORDER BY
    orders.transaction_moment;
