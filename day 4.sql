-- ==========================================
-- SQL Placement Preparation
-- Day 4 - Constraints + ALTER TABLE
-- Database: college
-- ==========================================

-- Use the existing database
USE college;


-- ==========================================
-- Create Courses Table
-- ==========================================

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    duration_months INT,
    fee INT DEFAULT 10000
);


-- ==========================================
-- Insert Course Records
-- ==========================================

INSERT INTO courses (course_id, course_name, duration_months)
VALUES
(1, 'Data Science', 6),
(2, 'Web Development', 4),
(3, 'Machine Learning', 8),
(4, 'Cloud Computing', 5);


-- ==========================================
-- Add New Column instructor_name
-- ==========================================

ALTER TABLE courses
ADD instructor_name VARCHAR(100);


-- ==========================================
-- Add UNIQUE Constraint on course_name
-- ==========================================

ALTER TABLE courses
ADD CONSTRAINT unique_course_name UNIQUE (course_name);


-- ==========================================
-- Update Instructor Names
-- ==========================================

UPDATE courses
SET instructor_name = 'Dr. Sharma'
WHERE course_id = 1;

UPDATE courses
SET instructor_name = 'Prof. Mehta'
WHERE course_id = 2;

UPDATE courses
SET instructor_name = 'Dr. Gupta'
WHERE course_id = 3;

UPDATE courses
SET instructor_name = 'Ms. Rao'
WHERE course_id = 4;


-- ==========================================
-- Drop Column duration_months
-- ==========================================

ALTER TABLE courses
DROP COLUMN duration_months;


-- ==========================================
-- Display All Records
-- ==========================================

SELECT * FROM courses;