-- LIMIT

SELECT *
FROM employee_demographics
LIMIT 3 -- The first 3 rows in the order they're physically stored in the database
;

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1 -- skip the first 2 rows, then return 1 row.
;

-- Aliasing

SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40;