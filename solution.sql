CREATE DATABASE CollegeDB;
USE CollegeDB;

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50) NOT NULL,
    DepartmentID INT NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50) NOT NULL
);

CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

INSERT INTO Department (DepartmentID, DepartmentName) VALUES
(10, 'Computer Science'),
(20, 'Mathematics'),
(30, 'Physics');

INSERT INTO Student (StudentID, StudentName, DepartmentID) VALUES
(1001, 'Alice Smith', 10),
(1002, 'Bob Jones', 20),
(1003, 'Charlie Brown', 10);

INSERT INTO Course (CourseID, CourseName) VALUES
(201, 'Database Systems'),
(202, 'Data Structures'),
(203, 'Linear Algebra');

INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID) VALUES
(1, 1001, 201),
(2, 1001, 202),
(3, 1002, 203),
(4, 1003, 201);

CREATE VIEW StudentDetails AS
SELECT 
    s.StudentName,
    c.CourseName,
    d.DepartmentName
FROM Enrollment e
JOIN Student s ON e.StudentID = s.StudentID
JOIN Course c ON e.CourseID = c.CourseID
JOIN Department d ON s.DepartmentID = d.DepartmentID;

SELECT * FROM StudentDetails;
