-- WHERE Clause

SELECT *
FROM employee_salary
WHERE salary >= 50000
WHERE salary > 50000
WHERE first_name = 'Leslie'
;


SELECT *
FROM employee_demographics
WHERE gender != 'Female'
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
;
-- MySQL recognizes that format (YYYY-MM-DD) as a valid date literal 
-- and automatically converts it to a real date value


-- AND OR NOT -- Logical Operators
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'male'
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender != 'Female'
;

SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55
;


-- LIKE Statement
-- % and _ 
-- % = anything, _ = specific value
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'Jer%'
;


SELECT *
FROM employee_demographics
WHERE first_name LIKE '%er%'
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a%'
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__' -- Only Ann
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___' -- Only Andy
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%' -- April and Andy
;

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1989%' 
;


