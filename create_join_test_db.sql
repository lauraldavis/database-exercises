-- MySQL - Joins Exercise - Join Example Database
-- 1. Create DB and run setup SQL code
CREATE DATABASE IF NOT EXISTS join_test_db;

USE join_test_db;

DROP TABLE IF EXISTS roles;

CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

DROP TABLE IF EXISTS users;

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);


-- 2. Insert 4 new users, 1 w/NULL role, and the other 3 authors (id 2)
-- SELECT * FROM roles;

INSERT INTO users (name, email, role_id) VALUES
('laura', 'laura@example.com', null),
('shelby', 'shelby@example.com', 2),
('bobbie', 'bobbie@example.com', 2),
('julia', 'julia@example.com', 2);


-- 3. Use join, left join, and right join to get results.
SELECT COUNT(*) FROM users; -- 10
SELECT COUNT(*) FROM roles; -- 4

-- join (display only matching rows from both tables)
SELECT u.name AS user_name, r.name AS role_name, u.role_id
FROM users u
JOIN roles r ON u.role_id = r.id
ORDER BY u.name; -- 7 rows

-- LEFT join (display all users)
SELECT u.name AS user_name, r.name AS role_name, u.role_id
FROM users u
LEFT JOIN roles r ON u.role_id = r.id
ORDER BY u.name; -- 10 rows

-- RIGHT join (display all roles)
SELECT u.name AS user_name, r.name AS role_name, u.role_id
FROM users u
RIGHT JOIN roles r ON u.role_id = r.id
ORDER BY u.name; -- 8 rows


-- 4. Use aggregate functions with join types to get list of roles and number of users w/given role
-- join (matching roles)
SELECT r.name AS role_name, COUNT(u.id) AS num_users_assigned
FROM users u
JOIN roles r ON u.role_id = r.id
GROUP BY r.name
ORDER BY r.name; -- 3 rows

-- LEFT join (count all users)
SELECT r.name AS role_name, COUNT(u.id) AS num_users_with_role
FROM users u
LEFT JOIN roles r ON u.role_id = r.id
GROUP BY r.name
ORDER BY r.name; -- 4 rows

-- RIGHT join (list all roles)
SELECT r.name AS role_name, COUNT(u.id) AS num_users_assigned
FROM users u
RIGHT JOIN roles r ON u.role_id = r.id
GROUP BY r.name
ORDER BY r.name; -- 4 rows

-- Pseudo Outer Join (complete list)
SELECT u.name, u.email, r.name AS role_name
FROM users u
LEFT JOIN roles r ON u.role_id = r.id
  UNION
SELECT u.name, u.email, r.name AS role_name
FROM users u
RIGHT JOIN roles r ON u.role_id = r.id
  ORDER BY name; -- 11 rows
