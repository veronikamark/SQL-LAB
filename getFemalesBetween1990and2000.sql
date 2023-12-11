USE company;

SELECT first_name, last_name, genger, birth_date, phone_number
FROM customer
WHERE genger = 'F' AND YEAR(birth_date) BETWEEN 1990 AND 2000
ORDER BY last_name;