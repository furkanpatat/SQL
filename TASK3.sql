--1)List the country names in the country column of the country table, starting with the character 'A' and ending with the character 'a'.
SELECT * FROM Country
WHERE Country LIKE 'A%a';

--2)List the country names in the country column of the country table that contain at least 6 characters and end with the character 'n'.
SELECT * FROM Country
WHERE Country LIKE '_____%n'

--3)List the movie names in the title column of the movie table that contain at least 4 'T' characters, regardless of whether they are uppercase or lowercase.
SELECT * FROM film
WHERE title ILIKE '%t%t%t%t%';

--4)Among the data in all columns in the movie table, sort the data whose title starts with the character 'C', whose length is greater than 90 and whose rental_rate is 2.99.
SELECT * FROM film
WHERE (title LIKE 'C%') AND (length > 90) AND (rental_rate = 2.99);
