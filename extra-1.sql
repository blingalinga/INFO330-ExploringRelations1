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