USE company;

SELECT
    LPAD(CAST(product.product_id AS CHAR(4)), 4, '0') AS "Product ID",
    CONCAT(product.manufacture, ' :: ', SUBSTRING_INDEX(product.product_name, '/', 1)) AS "Product name",
    UPPER(CONCAT(product.product_type, ' - ', product.category)) AS "Category"
FROM
    product
ORDER BY
    product.manufacture;
