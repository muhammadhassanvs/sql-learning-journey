-- AND
SELECT *
FROM people
WHERE age >= 20 AND age <= 28;

-- OR
SELECT *
FROM people
WHERE age < 20 OR age > 28;

-- NOT
SELECT *
FROM people
WHERE NOT status = 'retired';