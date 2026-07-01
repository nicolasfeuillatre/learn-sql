-- Joins

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal -- By default, Join is an INNER JOIN
	ON dem.employee_id = sal.employee_id
;

SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal -- By default, Join is an INNER JOIN
	ON dem.employee_id = sal.employee_id
;


-- Outer Joins

SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal -- By default, LEFT is an OUTER JOIN
	ON dem.employee_id = sal.employee_id
;

SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;


-- Self Join

SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_name,
emp2.first_name AS first_name_emp,
emp2.last_name AS last_name_emp
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;


-- Joining multipple tables together

SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd -- AS is facultative
	ON sal.dept_id = pd.department_id 
;

-- link the employee_demographics table to parks_departments even though they have no direct relationship

SELECT *
FROM parks_departments;