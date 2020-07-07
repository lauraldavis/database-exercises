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

SELECT 'The name of all albums by Pink Floyd.' AS 'Select Exercise 1';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'Select Exercise 2';
SELECT release_date FROM albums WHERE name LIKE '%Lonely Hearts Club Band';

SELECT 'The genre for Nevermind' AS 'Select Exercise 3';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'Which albums were released in the 1990s' AS 'Select Exercise 4';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Which albums had less than 20 million certified sales' AS 'Select Exercise 5';
SELECT name FROM albums WHERE sales < 20;

SELECT 'All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?' AS 'Select Exercise 6';
SELECT * FROM albums WHERE genre = 'Rock';

SELECT 'All albums with any genre including any type of rock' AS 'Select Exercise 7';
SELECT * FROM albums WHERE genre LIKE '%Rock%';
