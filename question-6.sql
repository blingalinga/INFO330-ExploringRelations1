--Q6
SELECT substr(email, instr(email, '@')+1) AS domain
FROM persons
WHERE city = 'Seattle';
