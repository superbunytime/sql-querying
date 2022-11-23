-- Comments in SQL Start with dash-dash --
SELECT * FROM analytics WHERE id = '1880';

SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';

SELECT category, COUNT(*) FROM analytics GROUP BY category;

SELECT app_name, reviews FROM analytics ORDER BY reviews DESC LIMIT 5;

SELECT app_name, reviews FROM analytics WHERE rating >= 4.8 ORDER BY reviews DESC LIMIT 1;

SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY AVG DESC;

SELECT app_name, MAX(price), rating FROM analytics GROUP BY app_name, rating HAVING rating < 3 ORDER BY max DESC LIMIT 1;

SELECT app_name, rating FROM analytics WHERE min_installs < 50 AND rating IS NOT NULL ORDER BY rating DESC;

SELECT app_name FROM analytics WHERE rating < 3 AND reviews > 10000;

SELECT app_name, reviews FROM analytics WHERE price > 0.1 AND price < 1 ORDER BY reviews DESC LIMIT 10;

SELECT app_name, MIN(last_updated) FROM analytics GROUP BY app_name ORDER BY min ASC LIMIT 1;

SELECT app_name, MAX(price) FROM analytics GROUP BY app_name ORDER BY max DESC LIMIT 1;

SELECT SUM(reviews) FROM analytics;

SELECT category, COUNT(*) FROM analytics GROUP BY category HAVING COUNT(*) > 300;

SELECT app_name, reviews, min_installs, min_installs/reviews AS proportion FROM analytics WHERE min_installs > 100000 ORDER BY proportion DESC LIMIT 1;