
---

### 2. `starter.sql`

```sql
-- Create database
CREATE DATABASE IF NOT EXISTS CollegeDB;

USE CollegeDB;

-- Drop existing tables
DROP TABLE IF EXISTS Enrollment;
DROP TABLE IF EXISTS Course;
DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Department;

-- Department table
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);

-- Student table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- Course table
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50) NOT NULL
);

-- Enrollment table
CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

-- Sample Department records
INSERT INTO Department (DepartmentID, DepartmentName) VALUES
(101, 'Computer Science'),
(102, 'Information Technology'),
(103, 'Electronics');

-- Sample Student records
INSERT INTO Student (StudentID, StudentName, DepartmentID) VALUES
(1001, 'Arun', 101),
(1002, 'Divya', 102),
(1003, 'Karthik', 101),
(1004, 'Nisha', 103);

-- Sample Course records
INSERT INTO Course (CourseID, CourseName) VALUES
(201, 'Database Systems'),
(202, 'Python'),
(203, 'Operating System'),
(204, 'Computer Networks');

-- Sample Enrollment records
INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID) VALUES
(1, 1001, 201),
(2, 1002, 202),
(3, 1003, 203),
(4, 1004, 204);
