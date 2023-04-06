-- Q1
SELECT first_name
FROM persons
WHERE city = "Omaha";

--Q2
SELECT first_name, last_name
FROM persons
WHERE age<30
ORDER BY last_name;

--Q3
SELECT first_name, last_name FROM persons
WHERE title = 'Rev' AND gender = 'Female';

--Q4
SELECT first_name, last_name, min(age)
FROM persons;

--Q5
SELECT first_name
FROM persons
WHERE last_name LIKE 'Smith%';

--Q6
SELECT substr(email, instr(email, '@')+1) AS domain
FROM persons
WHERE city = 'Seattle';

--Q7
UPDATE persons
SET city = 'Tulsa'
WHERE city = 'Sacramento';

--Q8
UPDATE persons
SET age = 18
WHERE address LIKE '%Street%';

--Q9
DELETE FROM persons
WHERE city = 'Kansas City' OR city = 'Pittsburg' OR city = 'Jacksonville';

--Q10
INSERT INTO persons (first_name, last_name, email, gender, title, age, address, city, state, postalcode, phone) VALUES ('Ling', 'Lee', 'ling10@uw.edu', 'Female', 'Ms', 22, '123 Sesame Street', 'Seattle', 'Washington', 98105, '206-123-4567');

--Extra Credit 1
SELECT first_name, age, title, gender
FROM persons
WHERE city = 'West Palm Beach' AND title = 'Dr' AND gender = 'Female';

SELECT first_name, age, title, gender
FROM persons
WHERE city = 'Phoenix' AND title = 'Rev' AND gender = 'Male';

/*
The female doctor from West Palm Beach, Florida is not the same age
as the male reverand from Phoenix, Arizona.
*/

--Extra Credit 2
SELECT COUNT(DISTINCT gender) AS different_gender_values FROM persons;
/*
There are 8 different values for Gender in this database
*/

--Extra Credit 3
SELECT MAX(age) AS maximum_age FROM persons;
SELECT MIN(age) AS minimum_age FROM persons;
SELECT AVG(age) AS average_age FROM persons;
/*
Maximum age: 110
Minimum age: 18
Average age: 62
*/