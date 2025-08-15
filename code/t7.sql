-- Departments Table
CREATE TABLE d1 (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

-- Employees Table
CREATE TABLE e1 (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dept_id INT,
    salary DECIMAL(10,2),
    joining_date DATE,
    FOREIGN KEY (dept_id) REFERENCES d1(dept_id)
);

-- Sample Data
INSERT INTO d1 VALUES
(1, 'HR'), (2, 'IT'), (3, 'Finance');

INSERT INTO e1 VALUES
(101, 'John', 'Doe', 2, 60000, '2020-05-10'),
(102, 'Jane', 'Smith', 1, 45000, '2021-01-15'),
(103, 'Mike', 'Brown', 2, 75000, '2019-03-22'),
(104, 'Sara', 'Wilson', 3, 50000, '2022-07-01');

-- Complex View
CREATE VIEW dept_salary_report AS
SELECT 
    d.dept_name,
    COUNT(e.emp_id) AS total_employees,
    SUM(e.salary) AS total_salary,
    MAX(e.salary) AS highest_salary
FROM e1 e
JOIN d1 d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

-- Abstraction View
CREATE VIEW employee_full_info AS
SELECT e.emp_id, e.first_name, e.last_name, d.dept_name, e.salary
FROM e1 e
JOIN d1 d ON e.dept_id = d.dept_id;

-- Example usage
SELECT * FROM employee_full_info WHERE dept_name = 'IT';

-- Security View
CREATE VIEW public_employee_directory AS
SELECT e.emp_id, e.first_name, e.last_name, d.dept_name
FROM e1 e
JOIN d1 d ON e.dept_id = d.dept_id
WITH CHECK OPTION;

