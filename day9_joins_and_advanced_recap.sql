-- Basic Join Part 1
SELECT students.name AS student_name,
       grades.course_id,
       grades.student_id,
       grades.grade
FROM grades
JOIN students
ON grades.student_id = students.id
ORDER BY grade;

-- Basic Join Part 2
SELECT students.name AS student,
       avg_grades.grade
FROM students,
(
    SELECT student_id,
           ROUND(AVG(grade), 2) AS grade
    FROM grades
    GROUP BY student_id
) AS avg_grades
WHERE students.id = avg_grades.student_id
ORDER BY grade;

-- Recap - Scooter Shop
SELECT brand,
       AVG(price) AS avg_price
FROM (
    SELECT model,
           brand,
           has_lights,
           price + (SELECT AVG(price) FROM scooters) AS price
    FROM scooters
)
WHERE model IS NOT NULL
  AND has_lights = TRUE
GROUP BY brand
ORDER BY avg_price;

-- Recap - Coffee Shop
SELECT brand,
       ROUND(AVG(density), 3) AS avg_density
FROM beans
WHERE diameter_wide > (
        SELECT AVG(diameter_wide)
        FROM beans
      )
  AND (
        shade = 'dark'
        OR (
            shade = 'light'
            AND density / diameter_wide > 0.01
        )
      )
GROUP BY brand
HAVING avg_density < 0.8
ORDER BY avg_density;