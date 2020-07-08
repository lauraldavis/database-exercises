USE employees;

SELECT *
FROM employees
-- WHERE first_name IN ('Irena', 'Vidya', 'Maya');
WHERE (first_name = 'Irena' OR
       first_name = 'Vidya' OR
       first_name = 'Maya')
  AND gender = 'M'
ORDER BY last_name DESC, first_name DESC;

SELECT *
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E'
ORDER BY emp_no DESC;

# SELECT *
# FROM employees
# WHERE last_name LIKE 'E%E';

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
  AND MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
ORDER BY hire_date DESC, birth_date DESC;

# SELECT *
# FROM employees
# WHERE last_name LIKE '%q%'
#   AND last_name NOT LIKE '%qu%';
-- alternate solution
-- WHERE last_name REGEXP 'q' AND last_name NOT REGEXP 'qu';