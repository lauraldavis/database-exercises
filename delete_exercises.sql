USE codeup_test_db;

/*
CREATE TABLE IF NOT EXISTS albums (
     id INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Unique ID/key',
     artist VARCHAR(100) NOT NULL COMMENT 'Recording artist name (required)',
     name VARCHAR(100) NOT NULL COMMENT 'Record/album name (required)',
     release_date INT UNSIGNED COMMENT 'Year record/album was released',
     sales DOUBLE COMMENT 'Number of records/albums sold (in millions)',
     genre VARCHAR(100) COMMENT 'Record/album genre(s)',
     PRIMARY KEY (id)
) COMMENT='Codeup MySQL Database Exercises';
*/

-- Write SELECT statements for:
--     Albums released after 1991
--     Albums with the genre 'disco'
--     Albums by 'Whitney Houston' (...or maybe an artist of your choice)
-- Make sure to put appropriate captions before each SELECT.
-- Convert the SELECT statements to DELETE.
-- Use the MySQL command line client to make sure your records really were removed.

SELECT 'Albums released after 1991' AS 'Delete Exercise 1';
SELECT * FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;
SELECT * FROM albums WHERE release_date > 1991;

SELECT 'Albums with the genre "disco"' AS 'Delete Exercise 2';
SELECT * FROM albums WHERE genre LIKE '%disco%';
DELETE FROM albums WHERE genre LIKE '%disco%';
SELECT * FROM albums WHERE genre LIKE '%disco%';

SELECT * FROM albums WHERE artist LIKE '%Whitney Houston%';
-- Previously deleted due to release_date of 1992

SELECT 'Albums by the Eagles' AS 'Delete Exercise 3';
SELECT * FROM albums WHERE artist LIKE '%Eagles%';
DELETE FROM albums WHERE artist LIKE '%Eagles%';
SELECT * FROM albums WHERE artist LIKE '%Eagles%';
