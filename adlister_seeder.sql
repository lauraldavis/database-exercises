USE adlister;

TRUNCATE TABLE ad_category;
DELETE FROM categories WHERE TRUE;
DELETE FROM ads WHERE TRUE;
DELETE FROM users WHERE TRUE;

INSERT INTO users (id, first_name, last_name, email, password)
VALUES 	(1, 'user1', 'lname1', 'user1email@sample.com', 'user1password'),
		(2, 'user2', 'lname2', 'user2email@sample.com', 'user2password'),
		(3, 'user3', 'lname3', 'user3email@sample.com', 'user3password'),
		(4, 'user4', 'lname4', 'user4email@sample.com', 'user4password'),
		(5, 'user5', 'lname5', 'user5email@sample.com', 'user5password');

INSERT INTO ads (id, title, description, user_id)
VALUES	(1, 'ad1', 'descript1', 4),
		(2, 'ad2', 'descript1', 2),
		(3, 'ad3', 'descript1', 1),
		(4, 'ad4', 'descript1', 4),
		(5, 'ad5', 'descript1', 3),
		(6, 'ad6', 'descript1', 1),
		(7, 'ad7', 'descript1', 4),
		(8, 'ad8', 'descript1', 2),
		(9, 'ad9', 'descript1', 4),
		(10, 'ad10', 'descript1', 1),
		(11, 'ad11', 'descript1', 2);

INSERT INTO categories (id, name)
VALUES 	(1, 'comical'),
		(2, 'tools'),
		(3, 'easy'),
		(4, 'difficult'),
		(5, 'need partner'),
		(6, 'solo project'),
		(7, 'diy'),
		(8, 'lifestyle'),
		(9, 'pets'),
		(10, 'current events'),
		(11, 'geography');

INSERT INTO ad_category (ad_id, category_id)
VALUES (1, 9),
       (2, 2),
       (3, 9),
       (4, 1),
       (4, 10),
       (5, 5),
       (6, 6),
       (7, 11),
       (8, 2),
       (9, 9),
       (10, 7),
       (11, 9);