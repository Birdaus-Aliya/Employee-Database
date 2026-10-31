-- Employee Database Project (MySQL 8+)
CREATE DATABASE IF NOT EXISTS employee_db;
USE employee_db;

CREATE TABLE IF NOT EXISTS employees (
    emp_id INT PRIMARY KEY,
    employee_name VARCHAR(60) NOT NULL,
    age INT,
    department VARCHAR(40),
    salary DECIMAL(10,2),
    joining_date DATE,
    city VARCHAR(40),
    phone VARCHAR(20) UNIQUE
);

INSERT INTO employees (emp_id, employee_name, age, department, salary, joining_date, city, phone)
VALUES
(101, 'Aarav', 24, 'IT', 32000.00, '2024-06-10', 'Chennai', '9000000001'),
(102, 'Mira', 26, 'HR', 35000.00, '2023-11-15', 'Coimbatore', '9000000002'),
(103, 'Rohan', 25, 'Finance', 38000.00, '2024-01-08', 'Chennai', '9000000003');

-- READ: view all employees
SELECT * FROM employees;

-- FILTER: employees in the IT department
SELECT * FROM employees WHERE department = 'IT';

-- SORT: highest salary first
SELECT * FROM employees ORDER BY salary DESC;

-- UPDATE: change one employee's city (use the primary key)
UPDATE employees SET city = 'Madurai' WHERE emp_id = 102;

-- DELETE: remove one employee (use the primary key)
-- DELETE FROM employees WHERE emp_id = 103;
