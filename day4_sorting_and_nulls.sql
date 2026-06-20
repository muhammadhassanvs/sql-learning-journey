-- NULL Values
SELECT DISTINCT name
FROM people
WHERE name IS NOT NULL;

-- Sort Results Descending
SELECT id
FROM feathers
ORDER BY weight DESC;

-- Sort by Multiple Columns
SELECT id
FROM feathers
ORDER BY area DESC, weight ASC;

-- Limit Results
SELECT *
FROM temperature
ORDER BY avg_temp ASC
LIMIT 5;