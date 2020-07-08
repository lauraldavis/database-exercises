USE employees;

SELECT *
FROM employees
-- WHERE first_name IN ('Irena', 'Vidya', 'Maya');
WHERE (first_name = 'Irena' OR
      first_name = 'Vidya' OR
      first_name = 'Maya')
AND gender = 'M';

SELECT *
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

SELECT *
FROM employees
WHERE last_name LIKE 'E%E';

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
  AND MONTH(birth_date) = 12
  AND DAY(birth_date) = 25;
-- or you can use LIKE: hire_date LIKE '199%' AND birth_date LIKE '%-12-25';

SELECT *
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';
-- alternate solution
-- WHERE last_name REGEXP 'q' AND last_name NOT REGEXP 'qu';
