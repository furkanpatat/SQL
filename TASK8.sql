--1)Let's create a table named employee in your test database with column information id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100).
CREATE TABLE employee(
  id INTEGER,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  birthday DATE,
  email VARCHAR(100)
  );

--2)Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
--ADDED

--3)Let's perform 5 UPDATE operations for each column that will update the other columns.
UPDATE employee
SET first_name = 'Cody',
	last_name ='Rhodes',
	birthday = '1985-12-17',
	email='codyrhodes@gmail.com'
WHERE id = 8
RETURNING *;
--
UPDATE employee
SET first_name = 'Rey',
	last_name='Mysterio'
WHERE id = 3
RETURNING *;
--
UPDATE employee
SET email = 'johncena@wwe.com',
	birthday = '1975-11-03'
WHERE first_name LIKE 'T%'
RETURNING *;
--
UPDATE employee
SET first_name = 'Shawn',
	last_name = 'Micheals'
WHERE last_name ILIKE '%P%'
RETURNING *;
--
UPDATE employee
SET birthday = '1111-11-11'
WHERE birthday < '1960-01-01'
RETURNING *;

--4)Let's perform 5 DELETE operations that will delete the relevant row for each column.
DELETE FROM employee
WHERE id = 1
RETURNING *;
--
DELETE FROM employee
WHERE first_name = 'Shawn'
RETURNING *;
--
DELETE FROM employee
WHERE birthday = '1111-11-11'
RETURNING *;
--
DELETE FROM employee
WHERE birthday > '1999-12-31'
RETURNING *;
--
DELETE FROM employee;
--All data has been deleted.
