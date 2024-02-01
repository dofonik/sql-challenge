# sql-challenge
Module 9 Challenge - UWA Data Analytics Bootcamp

The 'data' folder contains 6 CSV files that are used as the basis for a database recording the internal employee structure of a fictional company.

The 'EmployeeSQL' folder contains two SQL scripts: Table Schema Set Up.sql & Data Analysis Queries.sql.

The Table Schema Set Up.sql file contains a script that creates various tables for a database that can store the contents of the CSV files found in the 'data' folder. It ensures to delete any tables with the chosen names before creating the tables new, for troubleshooting purposes. It also sets the date style of the session to match that of the data.

Data Analysis Queries.sql contains scripts that narrows down the data to the following:

List the employee number, last name, first name, sex, and salary of each employee.
List the first name, last name, and hire date for the employees who were hired in 1986.
List the manager of each department along with their department number, department name, employee number, last name, and first name.
List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
List each employee in the Sales department, including their employee number, last name, and first name.
List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

Lastly, the repository contains an image of the database structure for this project (ERD-employeeSQL.png).