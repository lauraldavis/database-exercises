DROP DATABASE IF EXISTS adlister;

CREATE DATABASE IF NOT EXISTS adlister;

USE adlister;

CREATE TABLE IF NOT EXISTS users(
                                     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                                     first_name VARCHAR(100) NOT NULL,
                                     last_name VARCHAR(100) NOT NULL,
                                     email VARCHAR(100) NOT NULL ,
                                     password VARCHAR(200) NOT NULL,
                                     PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS ads(
                                    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                                    title VARCHAR(100) NOT NULL,
                                    description VARCHAR(100) NOT NULL,
                                    user_id INT UNSIGNED NOT NULL,
                                    PRIMARY KEY (id),
                                    FOREIGN KEY user_id_fk (user_id) REFERENCES users (id)
);

CREATE TABLE IF NOT EXISTS categories(
                                  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                                  name VARCHAR(100) NOT NULL,
                                  PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS ad_category(
                                          ad_id INT UNSIGNED NOT NULL,
                                          category_id INT UNSIGNED NOT NULL,
                                          FOREIGN KEY (ad_id) REFERENCES ads (id),
                                          FOREIGN KEY (category_id) REFERENCES categories (id)
);
