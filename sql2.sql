use employee; 
drop table Trainees;
create table Trainees (trainee_id INT, trainee_name VARCHAR(50),trainee_city VARCHAR(100));
INSERT INTO Trainees(trainee_id,trainee_name,trainee_city)
VALUES
(1,'Alfred','Kochi'),
(2,'Anandan','Trivandrum'),
(3,'Sachin','Mylapra'),
(4,'Ajin','Trivandrum');
create table Employees (employee_id INT, employee_name VARCHAR(50),employee_city VARCHAR(100));
INSERT INTO Employees (employee_id,employee_name,employee_city)
VALUES
(5,'alan','Kochi'),
(6,'Ajay','Kottayam'),
(7,'Sagar','Trivandrum'),
(8,'Shahabas','Kochi');
use employee;
SELECT Trainees.trainee_name
FROM Trainees
INNER JOIN
Employees 
ON Trainees.trainee_city=Employees.employee_city;
USE employee;
CREATE TABLE payment_details(
ID INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(40) NOT NULL,
last_name VARCHAR(40),
salary INT);
INSERT INTO payment_details(first_name,last_name,salary)
VALUES('Prinshu','Verma',30000),
('Alfred','Varghese',20000),
('Ajin','Raj',21000),
('Anandan','AK',22000),
('Sachin','John',23000);
SELECT *FROM payment_details;
SELECT DISTINCT first_name
FROM payment_details;
SELECT *FROM payment_details
WHERE salary IS NOT NULL;
SELECT *
FROM payment_details
WHERE last_name LIKE 'V%';
SELECT * FROM payment_details
ORDER BY salary DESC;
DESC payment_details;
SELECT trainee_city FROM Trainees
UNION
SELECT first_name FROM payment_details;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100)
);
INSERT INTO Customers (CustomerID, Name, Email) VALUES
(1, 'Alice', 'alice@example.com'),
(2, 'Bob', 'bob@example.com'),
(3,'Annie','annie@example.com');
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Amount INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
INSERT INTO Orders (OrderID, CustomerID, OrderDate, Amount) VALUES
(101,1,'2025-04-28',250),
(102,2,'2025-04-27',150),
(103,3,'2025-04-26',110),
(104,4,'2025-04-25',100);
SELECT *FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
SELECT *FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
SELECT *FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
desc Orders;















