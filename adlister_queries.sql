-- SQL Queries

-- 1. For an ad, what is the email address of the user who created it?

SELECT email
FROM users
WHERE id IN (SELECT user_id FROM ads WHERE id = 1);
-- Note: or if ads ID is unknown, filter by title:
-- WHERE title IN (SELECT user_id FROM ads WHERE title = 'This is my ad title');


-- 2. For an ad, what categories does it belong to?

SELECT c.name
FROM ads AS a
         JOIN ad_category ac ON a.id = ac.ad_id
         JOIN categories c ON ac.category_id = c.id
WHERE a.id = 1;
-- OR if an ad ID is unknown, filter by the ad title:
-- a.title = 'theadtitle'


-- 3. For a category, show all ads in that category.

SELECT a.id, a.title
FROM categories c
         JOIN ad_category ac ON c.id = ac.category_id
         JOIN ads a ON ac.ad_id = a.id
WHERE c.name = 'pets'
ORDER BY a.id;


-- 4. For a given user, show all ads they've posted.

SELECT a.id, a.title
FROM users u
         JOIN ads a ON u.id = a.user_id
WHERE u.id = 1
ORDER BY a.id;
-- OR if user ID is unknown, filter by users name:
-- u.first_name = 'thefirstname' AND u.last_name = 'thelastname'
