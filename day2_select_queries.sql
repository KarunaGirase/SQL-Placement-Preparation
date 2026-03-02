-- ==========================================
-- SQL Placement Preparation
-- Day 2 - SELECT + WHERE + Operators
-- ==========================================


-- 1. Fetch all students
SELECT * FROM students;

-- 2. Fetch only name and branch
SELECT name, branch FROM students;

-- 3. Students with age > 20
SELECT * FROM students
WHERE age > 20;

-- 4. Students from CSE branch
SELECT * FROM students
WHERE branch = 'CSE';

-- 5. Students age between 18 and 22
SELECT * FROM students
WHERE age BETWEEN 18 AND 22;

-- 6. Students from CSE or IT
SELECT * FROM students
WHERE branch IN ('CSE', 'IT');

-- 7. Students whose name starts with 'A'
SELECT * FROM students
WHERE name LIKE 'A%';

-- 8. Students whose email ends with gmail.com
SELECT * FROM students
WHERE email LIKE '%gmail.com';

-- 9. Order students by age ascending
SELECT * FROM students
ORDER BY age ASC;

-- 10. Order students by age descending
SELECT * FROM students
ORDER BY age DESC;