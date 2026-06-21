-- Arithmetic Operations
SELECT price * 2 - 20 AS high_mix_op,
       quantity / 1.5 + 5 AS low_mix
FROM products;

-- AS Keyword
SELECT cutlery AS silverware, amount
FROM kitchen_items
WHERE amount < 3;

-- LIKE Keyword
SELECT *
FROM people
WHERE name LIKE 'K%a'
ORDER BY name DESC;

-- BETWEEN Keyword
SELECT *
FROM data
WHERE value BETWEEN 7 AND 13;

-- IN Keyword
SELECT *
FROM countries
WHERE country IN ('Oman', 'Nicaragua', 'Bhutan', 'Senegal', 'Belarus');