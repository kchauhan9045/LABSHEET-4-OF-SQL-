CREATE DATABASE IF NOT EXISTS CollegeDB;
USE CollegeDB;

CREATE TABLE IF NOT EXISTS Student (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Course VARCHAR(50),
    City VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Employee (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);

CREATE TABLE IF NOT EXISTS Product (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(50),
    Price DECIMAL(10,2),
    Quantity INT
);

INSERT INTO Student VALUES
(1, 'Aarushi', 20, 'BCA', 'Delhi'),
(2, 'Rahul', 21, 'BBA', 'Meerut'),
(3, 'Priya', 19, 'BCA', 'Noida'),
(4, 'Aman', 22, 'BTech', 'Delhi'),
(5, 'Neha', 20, 'BCA', 'Meerut');

INSERT INTO Employee VALUES
(101, 'Amit', 'IT', 40000),
(102, 'Neha', 'HR', 35000),
(103, 'Ravi', 'Finance', 50000),
(104, 'Priya', 'IT', 45000);

INSERT INTO Product VALUES
(1, 'Laptop', 50000, 10),
(2, 'Mouse', 500, 20),
(3, 'Keyboard', 1000, 5),
(4, 'Monitor', 12000, 8);

SELECT 10 + 5 AS Addition;

SELECT 10 - 5 AS Subtraction;

SELECT 10 * 5 AS Multiplication;

SELECT 10 / 5 AS Division;

SELECT Product_Name, Price * Quantity AS Total_Amount
FROM Product;

SELECT * FROM Student
WHERE Age > 19 AND City = 'Delhi';

SELECT * FROM Student
WHERE City = 'Delhi' OR City = 'Meerut';

SELECT * FROM Student
WHERE NOT City = 'Delhi';

SELECT * FROM Student
WHERE Course = 'BCA' AND City = 'Delhi';

SELECT * FROM Employee
WHERE Department = 'IT' OR Department = 'HR';

SELECT * FROM Student
WHERE City = 'Delhi';

SELECT * FROM Employee
WHERE Salary > 40000;

SELECT * FROM Employee
WHERE Salary < 40000;

SELECT * FROM Employee
WHERE Salary >= 40000 AND Salary <= 50000;

SELECT * FROM Student
WHERE City <> 'Delhi';

SELECT * FROM Employee
WHERE Salary BETWEEN 35000 AND 45000;

SELECT * FROM Student
WHERE City IN ('Delhi', 'Meerut');

SELECT * FROM Student
WHERE City NOT IN ('Delhi', 'Meerut');

SELECT * FROM Student
WHERE Name LIKE 'A%';

SELECT * FROM Student
WHERE City IS NULL;

SELECT * FROM Student
WHERE City IS NOT NULL;

SELECT Name AS Person_Name FROM Student
UNION
SELECT Emp_Name AS Person_Name FROM Employee;

SELECT Name AS Person_Name FROM Student
UNION ALL
SELECT Emp_Name AS Person_Name FROM Employee;

SELECT Student_ID AS ID FROM Student
WHERE Student_ID IN (
    SELECT Emp_ID - 100 FROM Employee
);

SELECT Student_ID FROM Student
WHERE Student_ID NOT IN (
    SELECT Emp_ID - 100 FROM Employee
);

SELECT * FROM Student
WHERE Age >= 20
AND City IN ('Delhi', 'Meerut')
AND Name LIKE 'A%';