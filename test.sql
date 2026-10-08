USE CollegeDB;

-- Test 1: Check whether the view exists
SELECT
    CASE
        WHEN COUNT(*) = 1 THEN 'PASS: StudentDetails view exists'
        ELSE 'FAIL: StudentDetails view does not exist'
    END AS TestResult
FROM information_schema.VIEWS
WHERE TABLE_SCHEMA = 'CollegeDB'
  AND TABLE_NAME = 'StudentDetails';


-- Test 2: Check number of columns
SELECT
    CASE
        WHEN COUNT(*) = 3 THEN 'PASS: View contains 3 columns'
        ELSE 'FAIL: View should contain exactly 3 columns'
    END AS TestResult
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
  AND TABLE_NAME = 'StudentDetails';


-- Test 3: Check required column names
SELECT
    CASE
        WHEN
            SUM(COLUMN_NAME = 'StudentName') = 1
            AND SUM(COLUMN_NAME = 'CourseName') = 1
            AND SUM(COLUMN_NAME = 'DepartmentName') = 1
        THEN 'PASS: Required columns are present'
        ELSE 'FAIL: Required columns are missing'
    END AS TestResult
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
  AND TABLE_NAME = 'StudentDetails';


-- Test 4: Check number of records
SELECT
    CASE
        WHEN COUNT(*) = 4 THEN 'PASS: View contains 4 records'
        ELSE 'FAIL: View should contain 4 records'
    END AS TestResult
FROM StudentDetails;


-- Test 5: Check Arun's details
SELECT
    CASE
        WHEN COUNT(*) = 1 THEN 'PASS: Arun record is correct'
        ELSE 'FAIL: Arun record is incorrect'
    END AS TestResult
FROM StudentDetails
WHERE StudentName = 'Arun'
  AND CourseName = 'Database Systems'
  AND DepartmentName = 'Computer Science';


-- Test 6: Check Divya's details
SELECT
    CASE
        WHEN COUNT(*) = 1 THEN 'PASS: Divya record is correct'
        ELSE 'FAIL: Divya record is incorrect'
    END AS TestResult
FROM StudentDetails
WHERE StudentName = 'Divya'
  AND CourseName = 'Python'
  AND DepartmentName = 'Information Technology';


-- Test 7: Check Karthik's details
SELECT
    CASE
        WHEN COUNT(*) = 1 THEN 'PASS: Karthik record is correct'
        ELSE 'FAIL: Karthik record is incorrect'
    END AS TestResult
FROM StudentDetails
WHERE StudentName = 'Karthik'
  AND CourseName = 'Operating System'
  AND DepartmentName = 'Computer Science';


-- Test 8: Check Nisha's details
SELECT
    CASE
        WHEN COUNT(*) = 1 THEN 'PASS: Nisha record is correct'
        ELSE 'FAIL: Nisha record is incorrect'
    END AS TestResult
FROM StudentDetails
WHERE StudentName = 'Nisha'
  AND CourseName = 'Computer Networks'
  AND DepartmentName = 'Electronics';
