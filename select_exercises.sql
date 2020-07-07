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

SELECT 'The name of all albums by Pink Floyd.' AS 'MySQL Select Exercise';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'MySQL Select Exercise';
SELECT release_date FROM albums WHERE name LIKE '%Lonely Hearts Club Band';

SELECT 'The genre for Nevermind' AS 'MySQL Select Exercise';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'Which albums were released in the 1990s' AS 'MySQL Select Exercise';
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Which albums had less than 20 million certified sales' AS 'MySQL Select Exercise';
SELECT * FROM albums WHERE sales < 20;

SELECT 'All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?' AS 'MySQL Select Exercise';
SELECT * FROM albums WHERE genre = 'Rock';

SELECT 'All albums with any genre of rock, including "Hard rock" or "Progressive rock"' AS 'MySQL Select Exercise';
SELECT * FROM albums WHERE genre LIKE '%Rock%';
