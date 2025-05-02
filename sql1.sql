create database queries;
use queries;
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY, 
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL, 
    DepartmentID INT NOT NULL,
    JobTitle VARCHAR(50) NOT NULL, 
    Salary DECIMAL(10, 2) CHECK (Salary > 0)
);
INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, JobTitle, Salary) VALUES
(1, 'Alice', 'Smith', 101, 'Manager', 85000.00),
(2, 'Bob', 'Johnson', 102, 'Engineer', 70000.00),
(3, 'Charlie', 'Brown', 103, 'Analyst', 60000.00),
(4, 'Diana', 'Miller', 104, 'HR Specialist', 55000.00),
(5, 'Eve', 'Davis', 101, 'Assistant', 45000.00),
(6, 'Frank', 'Wilson', 102, 'Consultant', 50000.00),
(7, 'Grace', 'Taylor', 103, 'Designer', 65000.00),
(8, 'Hank', 'Anderson', 104, 'Developer', 75000.00),
(9, 'Ivy', 'Thomas', 101, 'Clerk', 40000.00),
(10, 'Jack', 'White', 102, 'Supervisor', 80000.00);

SELECT *FROM Employees;
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY, 
    DepartmentName VARCHAR(100) NOT NULL,
    ManagerID INT, 
    CONSTRAINT fk_Manager FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID) 
);
INSERT INTO Departments (DepartmentID, DepartmentName, ManagerID) VALUES
(101, 'Human Resources', 1),
(102, 'Engineering', 2),
(103, 'Finance', 3),
(104, 'Marketing', 4),
(105, 'Operations', NULL),
(106, 'Sales', 5),
(107, 'IT Support', 6),
(108, 'Legal', 7),
(109, 'Research and Development', 8),
(110, 'Customer Service', 9);
SELECT *FROM Departments;
SELECT E.EmployeeID, E.FirstName, E.LastName, E.JobTitle, D.DepartmentName
FROM Employees E
JOIN Departments D ON E.DepartmentID = D.DepartmentID;
SELECT E.EmployeeID, E.FirstName, E.LastName, E.JobTitle, D.DepartmentName
FROM Employees E
LEFT JOIN Departments D ON E.DepartmentID = D.DepartmentID;
SELECT E.EmployeeID, E.FirstName, E.LastName, E.JobTitle, D.DepartmentName
FROM Employees E
LEFT JOIN Departments D ON E.DepartmentID = D.DepartmentID
ORDER BY E.EmployeeID ASC;

SELECT E.EmployeeID, E.FirstName, E.LastName, E.JobTitle, D.DepartmentName
FROM Employees E
RIGHT JOIN Departments D ON E.DepartmentID = D.DepartmentID;











