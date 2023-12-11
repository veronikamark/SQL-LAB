USE company;

SELECT * FROM product
WHERE category = 'NOTEBOOK' AND product_description LIKE '%512GB%';