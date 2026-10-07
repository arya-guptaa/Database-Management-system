CREATE TABLE COURSE (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(50),
    Fees INT
);

INSERT INTO Course VALUES
(1, 'Data Science', 50000),
(2, 'Cyber Security', 45000),
(3, 'Python', 30000),
(4, 'Web Development', 40000),
(5, 'DBMS', 35000);

CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Course_ID INT,
    Marks INT
);

INSERT INTO Student VALUES
(101, 'Arya', 1, 85),
(102, 'Rahul', 2, 78),
(103, 'Priya', 3, 52),
(104, 'Aman', 4, 64),
(105, 'Neha', 5, 88);

SELECT * FROM Course;
SELECT * FROM Student;

SELECT * FROM Student
WHERE Marks > 70;

SELECT Student.Student_Name, Course.Course_Name
FROM Student
JOIN Course
ON Student.Course_ID = Course.Course_ID;

SELECT Course_ID, AVG(Marks)
FROM Student
GROUP BY Course_ID;

SELECT Course_ID, AVG(Marks)
FROM Student
GROUP BY Course_ID
HAVING AVG(Marks) > 65;

CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    Joining_Date DATE
);

INSERT INTO Employee VALUES
(1, 'Arya', 'IT', 50000, '2024-01-10'),
(2, 'Rahul', 'HR', 45000, '2023-05-15'),
(3, 'Priya', 'Finance', 55000, '2022-08-20'),
(4, 'Aman', 'IT', 60000, '2021-03-12'),
(5, 'Neha', 'HR', 48000, '2024-06-25');

SELECT * FROM Employee;

SELECT * FROM Employee
WHERE Department = "IT"
ORDER BY Salary DESC;

SELECT MAX(Salary)
FROM Employee;

SELECT Department, COUNT(*)
FROM Employee
GROUP BY Department
HAVING COUNT(*) > 3;


SELECT Course_ID, AVG(Marks)
FROM Student
GROUP BY Course_ID
HAVING AVG(Marks) > 65;

SELECT * FROM Employee
WHERE Salary > (SELECT AVG(Salary) FROM Employee);
