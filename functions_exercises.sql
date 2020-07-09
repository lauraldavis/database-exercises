USE employees;

SELECT emp_no, birth_date, CONCAT(first_name, ' ', last_name) AS name, gender, hire_date
FROM employees
WHERE last_name LIKE 'E%E'
ORDER BY emp_no DESC;

SELECT *, DATEDIFF(CURDATE(),hire_date) AS no_days_working
FROM employees
WHERE hire_date LIKE '199%'
  AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC;


