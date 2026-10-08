# RDBMS Autograding – StudentDetails View

## Objective

Create a view named `StudentDetails` using the following tables:

- Student(StudentID, StudentName, DepartmentID)
- Course(CourseID, CourseName)
- Enrollment(EnrollmentID, StudentID, CourseID)
- Department(DepartmentID, DepartmentName)

The view must display:

- Student Name
- Course Name
- Department Name

## Requirements

1. Create the required tables.
2. Insert suitable sample records.
3. Create a view named `StudentDetails`.
4. Use appropriate JOIN operations.
5. The view should display:
   - StudentName
   - CourseName
   - DepartmentName

## Expected View Structure

```sql
StudentName | CourseName       | DepartmentName
------------------------------------------------
Arun        | Database Systems | Computer Science
Divya       | Python           | Information Technology
Karthik     | Operating System | Computer Science
Nisha       | Computer Networks| Electronics
