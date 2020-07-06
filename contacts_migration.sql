CREATE DATABASE IF NOT EXISTS codeup_test_db;

USE codeup_test_db;

DROP TABLE IF EXISTS contacts;

CREATE TABLE IF NOT EXISTS contacts(
     id INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Unique ID/key',
     name VARCHAR(100) NOT NULL COMMENT 'Contact name (required)',
     email VARCHAR(100) COMMENT 'Email address',
     phone_number VARCHAR(20) COMMENT 'Phone number',
     created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'When this record was created',
     updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'When this record was last updated',
     PRIMARY KEY (id)
) COMMENT='Codeup MySQL Database Exercises';
