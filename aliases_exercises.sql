USE employees;

-- 3.
SELECT CONCAT(last_name, ', ',  first_name) AS full_name
FROM employees
LIMIT 10;

-- 4.
SELECT CONCAT(last_name, ', ',  first_name) AS full_name, birth_date AS DOB
FROM employees
LIMIT 10;

-- 5.
SELECT CONCAT(emp_no, ' - ', last_name, ', ',  first_name) AS full_name, birth_date AS DOB
FROM employees
LIMIT 10;