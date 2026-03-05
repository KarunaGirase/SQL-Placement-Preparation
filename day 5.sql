-- ==========================================
-- SQL Placement Preparation
-- Day 5 - SQL Joins (INNER JOIN)
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

INSERT INTO marks (student_id, subject, marks)
VALUES
(1, 'Database', 75),
(2, 'Database', 82),
(3, 'Database', 65),
(4, 'Database', 90),
(1, 'Python', 80),
(2, 'Python', 70);


-- ==========================================
-- 1. Display Student Name and Marks
-- ==========================================

SELECT s.name, m.marks
FROM students s
INNER JOIN marks m
ON s.id = m.student_id;


-- ==========================================
-- 2. Display Student Name, Subject and Marks
-- ==========================================

SELECT s.name, m.subject, m.marks
FROM students s
INNER JOIN marks m
ON s.id = m.student_id;


-- ==========================================
-- 3. Students with Marks Greater Than 70
-- ==========================================

SELECT s.name, m.subject, m.marks
FROM students s
INNER JOIN marks m
ON s.id = m.student_id
WHERE m.marks > 70;


-- ==========================================
-- 4. Students from CSE Branch with Marks
-- ==========================================

SELECT s.name, s.branch, m.subject, m.marks
FROM students s
INNER JOIN marks m
ON s.id = m.student_id
WHERE s.branch = 'CSE';