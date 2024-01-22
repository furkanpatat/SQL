-- 1)List the different values ​​in the replacement_cost column in the movie table.
SELECT DISTINCT replacement_cost from film;

--2)How many different data are there in the replacement_cost column in the movie table?
SELECT COUNT(DISTINCT replacement_cost) from film;

--3)How many of the movie titles in the movie table start with the character T and also have a rating equal to 'G'?
SELECT COUNT(*) FROM film
WHERE (title LIKE 'T%') AND (rating = 'G');

--4)How many of the country names in the country table consist of 5 characters?
SELECT COUNT(*) FROM country
WHERE country LIKE '_____';

--5)How many of the city names in the city table end with the character 'R' or r?
SELECT COUNT(*) FROM City
WHERE city ILIKE '%r';
