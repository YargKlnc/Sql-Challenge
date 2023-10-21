--- creating tables for all csv files

CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

CREATE TABLE dept_emt (
	emp_no VARCHAR PRIMARY KEY,
	dept_no VARCHAR
);

CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no VARCHAR
);

CREATE TABLE employees (
	emp_no VARCHAR PRIMARY KEY,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
);

CREATE TABLE salaries (
	emp_no VARCHAR PRIMARY KEY,
	salary INT
);

CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR
);

SELECT * FROM departments;
SELECT * FROM dept_emt;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;