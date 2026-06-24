-- Subqueries Part 1
SELECT *
FROM shop
WHERE price > (
    SELECT AVG(price)
    FROM shop
);

-- Subqueries Part 2
SELECT category,
       SUM(quantity) AS total_quantity
FROM shop
GROUP BY category
HAVING SUM(quantity) > (
    SELECT AVG(quantity)
    FROM shop
);

-- Recap - Total Gain Shop
SELECT category,
       SUM(
           (price + (
               SELECT AVG(price)
               FROM shop
               WHERE list_date BETWEEN '2015-01-01' AND '2015-03-18'
           )) * quantity
       ) AS total_revenue
FROM shop
WHERE list_date BETWEEN '2015-01-01' AND '2015-03-18'
GROUP BY category
ORDER BY total_revenue DESC;

-- Grouping Part 2
SELECT location,
       ROUND(
           AVG(
               ((amplitude / period) * (amplitude / period)) / period
           ),
           2
       ) AS avg_magnitude
FROM earthquakes
WHERE amplitude >= 1
  AND period >= 1
GROUP BY location
HAVING avg_magnitude > 1;