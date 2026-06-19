-- Multiple Conditions Combined
SELECT name, color
FROM candies
WHERE (color = 'brown' AND price = 2)
   OR (color = 'mixed' AND weight < 40);

-- Parentheses
SELECT *
FROM people
WHERE (age > 30 OR status = 'seeking')
  AND status = 'retired';

-- Boolean Values
SELECT *
FROM objects
WHERE colorful IS TRUE;