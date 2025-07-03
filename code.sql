-- Create Employees table
CREATE TABLE Employees (
    emp_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    department TEXT,
    salary REAL,
    hire_date DATE
);

-- Insert sample data
INSERT INTO Employees (emp_id, name, department, salary, hire_date) VALUES
(1, 'Alice', 'HR', 50000, '2021-01-15'),
(2, 'Bob', 'IT', 75000, '2020-03-10'),
(3, 'Charlie', 'Finance', 67000, '2019-08-25'),
(4, 'David', 'IT', 80000, '2022-04-05'),
(5, 'Eva', 'HR', 52000, '2023-02-17');

-- View 1: Basic view with name and department
CREATE VIEW EmployeeInfo AS
SELECT name, department
FROM Employees;

-- View 2: Employees with salary > 60000
CREATE VIEW HighEarners AS
SELECT emp_id, name, salary
FROM Employees
WHERE salary > 60000;

-- View 3: Average salary by department
CREATE VIEW AvgSalaryByDept AS
SELECT department, AVG(salary) AS avg_salary
FROM Employees
GROUP BY department;

-- Using the views
SELECT * FROM EmployeeInfo;
SELECT * FROM HighEarners;
SELECT * FROM AvgSalaryByDept;
