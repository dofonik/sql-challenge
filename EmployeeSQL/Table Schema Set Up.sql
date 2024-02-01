--Delete tables if they already exist
DROP TABLE IF EXISTS salaries, dept_manager, dept_emp, employees, departments, titles;

--Data contains date formats in month/day/year, set datestyle to match for this session
SET datestyle = 'ISO, MDY';

-- Table to store titles for employees
CREATE TABLE titles (
    title_id VARCHAR(10) PRIMARY KEY, -- Title code (unique)
    title VARCHAR(30) NOT NULL -- Title name
);

-- Table to store department info
CREATE TABLE departments (
    dept_no VARCHAR(10) PRIMARY KEY, -- Department code (unique)
    dept_name VARCHAR(30) NOT NULL -- Name of department
);

-- Table to store employee info
CREATE TABLE employees (
    emp_no INT PRIMARY KEY, -- Employee number (unique)
    emp_title_id VARCHAR(10) NOT NULL, -- Employee title code
    birth_date DATE NOT NULL, -- Employee date of birth
    first_name VARCHAR(30) NOT NULL, -- Employee first name
    last_name VARCHAR(30) NOT NULL, -- Employee last name
    sex CHAR(1) NOT NULL, -- Employee gender
    hire_date DATE NOT NULL, -- Date when employee hired
    FOREIGN KEY (emp_title_id) REFERENCES titles (title_id) -- Foreign key referencing titles table
);

-- Table to store employee department assignments
CREATE TABLE dept_emp (
    emp_no INT NOT NULL, -- Employee number
    dept_no VARCHAR(10) NOT NULL, -- Department code
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no), -- Foreign key referencing employees table
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no), -- Foreign key referencing departments table
    PRIMARY KEY (emp_no, dept_no) -- Primary key composed of: employee number & department code
);

-- Table to store manager department assignments
CREATE TABLE dept_manager (
    dept_no VARCHAR(10) NOT NULL, -- Department code
    emp_no INT NOT NULL, -- Employee number
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no), -- Foreign key referencing departments table
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no), -- Foreign key referencing employees table
    PRIMARY KEY (dept_no, emp_no) -- Primary key composed of: department code & employee number
);

-- Table to store salary of employees
CREATE TABLE salaries (
    emp_no INT PRIMARY KEY, -- Employee number
    salary INT NOT NULL, -- Employee salary
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no) -- Foreign key referencing employees table
);