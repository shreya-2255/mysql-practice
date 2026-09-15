-- Assignment 1
-- 1.
SELECT name FROM employee WHERE salary > 20000;
-- 2.
SELECT * FROM employee WHERE salary = 51000;
-- 3.
SELECT name,experience FROM employee WHERE age > 35;
-- 4.
SELECT * FROM employee WHERE profile = 'dev';
-- 5.
SELECT name FROM capgemini.employee WHERE profile = 'test';
-- 6.
SELECT * FROM employee WHERE salary >= 25000;
-- 7.
SELECT name,email FROM employee WHERE salary <> 51000;
-- 8.
UPDATE employee
SET salary = salary + 10000
WHERE experience < 20;
-- 9.
DELETE FROM employee
WHERE experience = 21;
-- 10.
UPDATE employee
SET salary = salary - 21000
WHERE name = 'John';

-- Assignment 2
-- 1. 
ALTER TABLE employee2
ADD COLUMN branch_location VARCHAR(100);
-- 2.
SELECT SUM(salary) AS total_salary_expense
FROM employee2;
-- 3.
SELECT MAX(salary) AS max_salary
FROM employee2;
-- 4. 
SELECT AVG(experience) AS average_experience
FROM employee2;
-- 5.
SELECT name
FROM employee2
WHERE salary = (SELECT MAX(salary) FROM employee);
-- 6. 
SELECT name, experience
FROM employee2
WHERE salary = (SELECT MIN(salary) FROM employee);
-- 7.
SELECT COUNT(*) AS total_employees
FROM employee2;
-- 8.
SELECT name
FROM employee2
WHERE profile = 'test'
AND salary > 25000;
-- 9.
UPDATE employee2
SET profile = 'support'
WHERE name = 'Radha';
-- 10.
SELECT MAX(salary) AS second_highest_salary
FROM employee2
WHERE salary < (SELECT MAX(salary) FROM employee2);
-- 11.
SELECT MIN(salary) AS second_lowest_salary
FROM employee2
WHERE salary > (SELECT MIN(salary) FROM employee2);
-- 12.
SELECT AVG(salary) AS average_salary
FROM employee2
WHERE profile = 'dev';
-- 13.
SELECT name, salary
FROM employee2
WHERE experience = (SELECT MIN(experience) FROM employee2);
-- 14.
SELECT name
FROM employee2
WHERE age = (SELECT MIN(age) FROM employee2)
AND salary = (
    SELECT MAX(salary)
    FROM employee2
    WHERE age = (SELECT MIN(age) FROM employee2)
);
-- 15.
DELETE FROM employee2;


