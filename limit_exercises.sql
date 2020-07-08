USE employees;

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
  AND MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
ORDER BY birth_date, hire_date DESC
-- LIMIT 5;
LIMIT 5 OFFSET 45; -- tenth page of results
-- OFFSET = LIMIT * PAGE - LIMIT

