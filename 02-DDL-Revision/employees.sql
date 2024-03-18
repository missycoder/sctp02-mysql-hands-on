--CREATE a new databased named `employees`

CREATE database employees;

-- Use the database
USE employees;

CREATE TABLE departments (
    department_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, name VARCHAR(45) NOT NULL
) ENGINE = innodb;

CREATE TABLE employees (
    employee_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100) NOT NULL,
    -- if no value is given for designation, default to "N/A"
    designation VARCHAR(100) NOT NULL DEFAULT "N/A", date_of_employment DATE NOT NULL, department_id INT UNSIGNED NOT NULL, taskforce_id INT UNSIGNED NOTO NULL
) ENGINE = innodb;

-- Create a foreign key such that employees, department_id
-- refers to departments.department_id
ALTER TABLE employees
ADD CONSTRAINT fk_employees_departments FOREIGN KEY (department_id) REFERENCES departments (department_id)
-- INSERT ROWS INTO DEPARTMENT
INSERT INTO departments(name) VALUE ('Accounting'): 

INSERT INTO departments (name) VALUE ('Marketing'), ('Operations');

-- HOW to add a new column add a new column to a table after it has been created
ALTER TABLE employees ADD COLUMN taskforce_id INT UNSIGNED;

-- NOTE: To delete an entire table in SQL, we use `DROP TABLE`
-- DROP TABLE taskforces

-- Create the taskforce TABLE
CREATE TABLE taskforces (
    taskforce_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100) NOT NULL
) ENGINE = innodb;

-- Add the foreign KEY
ALTER TABLE employees
ADD CONSTRAINTS fk_employees_taskforces FOREIGN KEY (taskforce_id) REFERENCES taskforces (taskforce_id);

-- Create taskforces
INSERT INTO
    taskforces (name)
VALUES ('Work Improvement'),
    ('Customer Satisfaction'),
    ('Cohesion');

INSERT INTO employees(name, designation, date_of_employment, department_id, taskforce_id)
VALUES ("Jon Snow", "Manager", "2022-01-23", 2,1);