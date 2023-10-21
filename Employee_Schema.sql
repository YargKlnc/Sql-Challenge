--- creating tables for all csv files

CREATE TABLE titles (
	title_id VARCHAR(50) PRIMARY KEY,
	title VARCHAR(50)
);

SELECT * FROM titles;
DROP TABLE titles;

CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(10) REFERENCES titles(title_id),
	birth_date DATE NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex VARCHAR(5) NOT NULL,
	hire_date DATE NOT NULL
);

SELECT * FROM employees;
DROP TABLE employees;

CREATE TABLE departments (
	dept_no VARCHAR(50) PRIMARY KEY,
	dept_name VARCHAR(50)
);

SELECT * FROM departments;

CREATE TABLE dept_manager (
	dept_no VARCHAR(10) REFERENCES departments(dept_no),
	emp_no INT
);

SELECT * FROM dept_manager;

CREATE TABLE dept_emp (
	emp_no INT REFERENCES employees(emp_no),
	dept_no VARCHAR(10) REFERENCES departments(dept_no)
);

CREATE TABLE salaries (
	emp_no INT REFERENCES employees(emp_no),
	salary INT
);

SELECT * FROM salaries;
DROP TABLE salaries;






