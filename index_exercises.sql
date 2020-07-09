CREATE DATABASE IF NOT EXISTS codeup_test_db;

USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums(
    id           INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Unique ID/key',
    artist       VARCHAR(100) NOT NULL COMMENT 'Recording artist name (required)',
    name         VARCHAR(100) NOT NULL COMMENT 'Record/album name (required)',
    release_date INT UNSIGNED COMMENT 'Year record/album was released',
    sales        DOUBLE COMMENT 'Number of records/albums sold (in millions)',
    genre        VARCHAR(100) COMMENT 'Record/album genre(s)',
    PRIMARY KEY (id),
    UNIQUE KEY (artist, name)
) COMMENT ='Codeup MySQL Database Exercises';