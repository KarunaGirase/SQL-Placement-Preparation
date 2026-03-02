-- ==========================================
-- SQL Placement Preparation
-- Day 1 - SQL Fundamentals
-- Database: college
-- ==========================================


-- 1. Create Database
CREATE DATABASE college;

-- 2. Use Database
USE college;

-- 3. Create Students Table
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    branch VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    created_at DATE DEFAULT (CURRENT_DATE)
);

-- 4. Insert Records
INSERT INTO students (id, name, age, branch, email)
VALUES
(1, 'Amit', 20, 'CSE', 'amit@gmail.com'),
(2, 'Priya', 21, 'IT', 'priya@gmail.com'),
(3, 'Rahul', 19, 'ECE', 'rahul@gmail.com'),
(4, 'Sneha', 22, 'CSE', 'sneha@gmail.com'),
(5, 'Karan', 20, 'MECH', 'karan@gmail.com');

-- 5. Update Age of Student (id = 2)
UPDATE students
SET age = 23
WHERE id = 2;

-- 6. Delete Student (id = 5)
DELETE FROM students
WHERE id = 5;

-- 7. Display All Students

SELECT * FROM students;
