# SQL Challenge 

UofT Data Analytics SQL Challenge by YK

**"A research project about people who were employed by a technology company during the 1980s and 1990s."**

All the remains of the employee database from 1980s and 1990s are the six CSV files and all has been uploaded to data folder of this repository

This research is divided into three parts: data modeling, data engineering, and data analysis.

**Data Modeling**

All the CSV files inspected, an ERD-Entity Relationship Diagram of the tables been sketched. QuickDBDLinks was used as a tool for ERD. All below downloaded from QuickDBD.

• ERD-ScrnShot.png

• QuickDBD-export-PDF.pdf 

• QuickDBD-export-PNG.png 

• QuickDBD-exportSQL.sql 


**Data Engineering**

1.	A table schema created for each of the six CSV files.
	
• The data types, primary keys, foreign keys, and other constraints has been specified.

• For the primary keys, verified that the column is unique. 

• Tables created in the correct order to handle the foreign keys.

2. Columns that contains DATE has been converted in given EMPLOYEES data.

3. Each CSV file imported into its corresponding SQL table.

4. Employee_Schema.sql added inside this folder 
 

**Data Analysis**

All below has been listed.

1.	The employee number, last name, first name, sex, and salary of each employee.
2.	The first name, last name, and hire date for the employees who were hired in 1986.
3.	The manager of each department along with their department number, department name, employee number, last name, and first name.
4.	The department number for each employee along with that employee’s employee number, last name, first name, and department name.
5.	The first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6.	Each employee in the Sales department, including their employee number, last name, and first name.
7.	Each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8.	The frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
9.	4. Employee_Queries.sql added inside this folder

