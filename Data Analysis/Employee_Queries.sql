-- 1.List the employee number, last name, first name, sex, and salary of each employee
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary
FROM employees emp
JOIN salaries sal
ON emp.emp_no = sal.emp_no;

-- 2.List the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date between '1986-1-1' and '1986-12-31'
ORDER BY hire_date ASC;

-- 3.List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT dm.dept_no, dm.emp_no, dep.dept_name, emp.last_name, emp.first_name
FROM dept_manager dm
JOIN employees emp
ON dm.emp_no = emp.emp_no
JOIN departments dep
ON dm.dept_no = dep.dept_no 
ORDER BY dm.dept_no ASC;

-- 4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT dep.dept_no, emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM employees emp
JOIN dept_emp de
ON de.emp_no = emp.emp_no 
JOIN departments dep
ON dep.dept_no = de.dept_no 
ORDER BY de.dept_no ASC;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name like 'B%'
ORDER BY first_name;

-- List each employee in the Sales department, including their employee number, last name, and first name
SELECT emp.emp_no, emp.last_name, emp.first_name
FROM employees emp
JOIN dept_emp de
ON de.emp_no = emp.emp_no 
JOIN departments dep
ON dep.dept_no = de.dept_no 
WHERE dep.dept_name = 'Sales' 
ORDER BY first_name;

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM employees emp
JOIN dept_emp de
ON de.emp_no = emp.emp_no 
JOIN departments dep
ON dep.dept_no = de.dept_no 
WHERE dep.dept_name = 'Sales' OR dep.dept_name = 'Development'
ORDER BY first_name;

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT last_name, COUNT (emp_no) AS frequency 
FROM employees 
GROUP BY last_name 
ORDER BY frequency  DESC;


