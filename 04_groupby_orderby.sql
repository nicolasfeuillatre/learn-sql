-- Group By

SELECT *
FROM employee_demographics;

SELECT gender
FROM employee_demographics
GROUP BY gender
;

SELECT first_name
FROM employee_demographics
GROUP BY gender -- IMPOSSIBLE, we need to group by the selection
;

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary; -- It can create two tuples for the same occupation if salary is different


SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

-- Order By

SELECT *
FROM employee_demographics
ORDER BY first_name; -- Ascending order by default

SELECT *
FROM employee_demographics
ORDER BY first_name DESC; -- Descending order

SELECT *
FROM employee_demographics
ORDER BY gender, age DESC
;

SELECT *
FROM employee_demographics
ORDER BY age, gender -- Every age is unique, so the gender order by doesn't matter
;

SELECT *
FROM employee_demographics
ORDER BY 5, 4 -- Position of the fields (columns), not very recommanded
;

