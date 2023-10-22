--- creating tables for all csv files

-- TABLE DONE
CREATE TABLE titles (
	title_id VARCHAR(50) PRIMARY KEY,
	title VARCHAR(50)
);

SELECT * FROM titles;
DROP TABLE titles;

CREATE TABLE employees (
    emp_no INT NOT NULL,
    emp_title_id VARCHAR NOT NULL,
	birth_date date,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date date,
    FOREIGN KEY (emp_title_id) REFERENCES titles (title_id),
    PRIMARY KEY (emp_no)
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
SELECT * FROM dept_emp;

CREATE TABLE salaries (
	emp_no INT REFERENCES employees(emp_no),
	salary INT
);

SELECT * FROM salaries;
DROP TABLE salaries;






