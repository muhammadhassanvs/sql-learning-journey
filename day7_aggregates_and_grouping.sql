-- Handling Dates Part 2
SELECT id
FROM events
WHERE JULIANDAY(end) - JULIANDAY(start) < 3;

-- Handling Dates Part 3
SELECT id,
       STRFTIME('%d-%m-%Y', start) AS formatted_start,
       STRFTIME('%d-%m-%Y', end) AS formatted_end,
       ROUND(JULIANDAY(end) - JULIANDAY(start)) AS duration_days
FROM events
WHERE STRFTIME('%Y', start) = '2009'
ORDER BY duration_days DESC;

-- Built-in Aggregate Functions Part 1
SELECT COUNT(product_id) AS total_transactions,
       AVG(quantity) AS avg_quantity,
       MAX(price_per_unit) AS max_unit_price,
       SUM(quantity * price_per_unit) AS total_revenue
FROM sales;

-- Built-in Aggregate Functions Part 2
SELECT id,
       price,
       price - (SELECT AVG(price) FROM items) AS diff_from_avg
FROM items
ORDER BY diff_from_avg DESC;

-- GROUP BY Part 1
SELECT type,
       ROUND(AVG(pH), 2) AS ph_average
FROM foods
GROUP BY type;