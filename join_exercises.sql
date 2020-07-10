USE employees;

-- 2. show each department w/name of current manager for that dept
SELECT DISTINCT d.dept_name, CONCAT(e.last_name, ', ', e.first_name) AS dept_mgr
FROM departments d
JOIN dept_manager m ON d.dept_no = m.dept_no
JOIN dept_emp de ON  m.emp_no = de.emp_no
JOIN employees e ON de.emp_no = e.emp_no
WHERE m.to_date >= CURDATE(); -- 9 rows

-- 3. find the name of all depts currently managed by women
SELECT DISTINCT d.dept_name, CONCAT(e.last_name, ', ', e.first_name) AS dept_mgr
FROM departments d
JOIN dept_manager m ON d.dept_no = m.dept_no
JOIN dept_emp de ON  m.emp_no = de.emp_no
JOIN employees e ON de.emp_no = e.emp_no
WHERE m.to_date >= CURDATE()
AND e.gender = 'F'; -- 4 rows

-- 4. find current titles of employees currently working in Customer Service dept
SELECT t.title, COUNT(e.emp_no) AS Count
FROM departments d
JOIN dept_emp de ON  d.dept_no = de.dept_no
JOIN employees e ON de.emp_no = e.emp_no
JOIN titles t ON e.emp_no = t.emp_no
WHERE d.dept_name = 'Customer Service'
AND t.to_date >= CURDATE()
AND de.to_date >= CURDATE()
GROUP BY t.title; -- 7 rows

-- 5. find the current salary of all current managers
SELECT d.dept_name AS 'Department Name',
                CONCAT(e.first_name, ' ', e.last_name) AS Name,
                salary AS Salary
FROM departments d
JOIN dept_manager m ON d.dept_no = m.dept_no
JOIN dept_emp de ON  m.emp_no = de.emp_no
JOIN employees e ON de.emp_no = e.emp_no
JOIN salaries s ON e.emp_no = s.emp_no
WHERE m.to_date >= CURDATE()
AND s.to_date >= CURDATE()
ORDER BY d.dept_name; -- 9 rows

-- Bonus - find names of all current employees, their dept name, and current manager's name
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name',
       d.dept_name AS 'Department Name',
       CONCAT(em.first_name, ' ', em.last_name) AS 'Manager Name'
FROM employees as e
JOIN dept_emp as de ON de.emp_no = e.emp_no
JOIN departments as d ON d.dept_no = de.dept_no
JOIN dept_manager m ON d.dept_no = m.dept_no
JOIN employees em ON m.emp_no = em.emp_no
WHERE de.to_date = '9999-01-01'
  AND m.to_date = '9999-01-01'; -- 240,124 rows
