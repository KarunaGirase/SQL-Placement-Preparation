-- ==========================================
-- SQL Placement Preparation
-- Day 6 - LEFT JOIN and RIGHT JOIN
-- Database: college
-- ==========================================

USE college;

-- ==========================================
-- Create Students Table
-- ==========================================

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    branch VARCHAR(50)
);

-- Insert Student Records

INSERT INTO students (id, name, branch)
VALUES
(1, 'Amit', 'CSE'),
(2, 'Priya', 'IT'),
(3, 'Rahul', 'ECE'),
(4, 'Sneha', 'CSE'),
(5, 'Karan', 'MECH');


-- ==========================================
-- Create Marks Table
-- ==========================================

CREATE TABLE marks (
    student_id INT,
    subject VARCHAR(100),
    marks INT
);

-- Insert Marks Records
-- Notice some students do NOT have marks

INSERT INTO marks (student_id, subject, marks)
VALUES
(1, 'DBMS', 75),
(2, 'DBMS', 82),
(4, 'DBMS', 90),
(1, 'Python', 80),
(2, 'Python', 70);


-- ==========================================
-- 1. Display All Students and Their Marks
-- Using LEFT JOIN
-- ==========================================

SELECT s.id, s.name, m.subject, m.marks
FROM students s
LEFT JOIN marks m
ON s.id = m.student_id;


-- ==========================================
-- 2. Display Student Name, Subject and Marks
-- Using LEFT JOIN
-- ==========================================

SELECT s.name, m.subject, m.marks
FROM students s
LEFT JOIN marks m
ON s.id = m.student_id;


-- ==========================================
-- 3. Display All Marks with Student Names
-- Using RIGHT JOIN
-- ==========================================

SELECT s.name, m.subject, m.marks
FROM students s
RIGHT JOIN marks m
ON s.id = m.student_id;


-- ==========================================
-- 4. Find Students Who Do NOT Have Marks
-- ==========================================

SELECT s.id, s.name
FROM students s
LEFT JOIN marks m
ON s.id = m.student_id
WHERE m.student_id IS NULL;


-- ==========================================
-- 5. Display Students from CSE Branch with Marks
-- Using LEFT JOIN
-- ==========================================

SELECT s.name, s.branch, m.subject, m.marks
FROM students s
LEFT JOIN marks m
ON s.id = m.student_id
WHERE s.branch = 'CSE';