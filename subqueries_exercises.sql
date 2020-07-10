USE employees;

-- 1. find all employees with same hire date as employee 101010 using a subquery
SELECT *
FROM EMPLOYEES
WHERE hire_date = (SELECT hire_date FROM employees where emp_no = 101010);
-- 69 rows

-- 2. find all the titles held by all employees with the first name Aamod (not just current titles)
SELECT t.title
FROM titles t
WHERE t.emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');
-- 314 total rows
-- OR
SELECT DISTINCT t.title
FROM titles t
WHERE t.emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');
-- 6 unique titles

-- 3. find all the current dept managers that are female
SELECT e.first_name, e.last_name AS dept_mgr
FROM employees e
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date >= CURDATE()
)
  AND e.gender = 'F';
-- 4 rows


-- Bonus
-- 1. find all dept names that currently have female managers
SELECT DISTINCT d.dept_name AS 'Department Name'
FROM departments d
JOIN dept_manager m ON d.dept_no = m.dept_no
WHERE m.to_date >= CURDATE()
  AND m.emp_no IN (SELECT emp_no FROM employees WHERE gender = 'F');
-- 4 rows

-- Bonus
-- 2. find first and last name of the employee with the highest salary
SELECT first_name, last_name
FROM employees
WHERE emp_no = (SELECT emp_no FROM salaries WHERE to_date >= CURDATE() ORDER BY salary DESC LIMIT 1);
-- 1 row
