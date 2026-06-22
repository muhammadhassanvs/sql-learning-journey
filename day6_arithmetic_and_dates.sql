-- Mathematical Columns
SELECT
    (price * quantity) + 15 AS total_value,
    (price * quantity) * 0.8 + 10 AS discounted_value
FROM products;

-- Modulo Operator
SELECT id,
       id % 3 AS quality_control
FROM products
WHERE quantity % 2 = 1;

-- ROUND Function
SELECT
    ROUND(price, 2) AS rounded_price
FROM products;

-- Parliamentary Election Challenge
SELECT *
FROM election_results
WHERE seat % 2 = 0
  AND votes > 1000;

-- Police Report Challenge
SELECT *
FROM criminals
WHERE crime IN ('Robbery', 'Fraud')
ORDER BY arrest_date DESC
LIMIT 5;

-- Beverage Container Challenge
SELECT *
FROM beverages
WHERE container LIKE '%bottle%'
ORDER BY volume DESC;

-- Quartic Function Challenge
SELECT
    x,
    3 * x * x * x * x +
    5 * x * x * x +
    0.9 * x * x +
    2.2 * x +
    1 AS result
FROM values_table;

-- Date Filtering
SELECT *
FROM events
WHERE date NOT BETWEEN
'2022-12-21'
AND
'2023-03-20';