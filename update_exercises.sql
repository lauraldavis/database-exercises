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

-- Write SELECT statements to output each of the following with a caption:
--     All albums in your table.
--     All albums released before 1980
--     All albums by Michael Jackson

-- After each SELECT add an UPDATE statement to:
--     Make all the albums 10 times more popular (sales * 10)
--     Move all the albums before 1980 back to the 1800s.
--     Change 'Michael Jackson' to 'Peter Jackson'

-- Add SELECT statements after each UPDATE so you can see the results of your handiwork.

SELECT 'All albums in the table' AS 'Update Exercise 1';
SELECT * FROM albums;
UPDATE albums SET sales = (sales * 10);
SELECT * FROM albums;

SELECT 'All albums released before 1980' AS 'Update Exercise 2';
SELECT name AS 'All albums released before 1980' FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = (release_date - 100) WHERE release_date < 1980;
SELECT name AS 'All albums released before 1880' FROM albums WHERE release_date < 1880;

SELECT 'All albums by Michael Jackson' AS 'Update Exercise 3';
SELECT name AS 'All albums by Michael Jackson' FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT name AS 'All albums by Peter Jackson'  FROM albums WHERE artist = 'Peter Jackson';
