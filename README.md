# SQL 

Using Entity Relationship Diagrams to understand the relationship between 6 CSV files. Creates a table schema for each CSV, specifying data types, primary keys, foreign keys, and other constraints. 

Uses SQL to query the data based on the following parameters: 

(1) List the following details of each employee: employee number, last name, first name, gender, and salary.

(2) List employees who were hired in 1986.

(3) List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

(4) List the department of each employee with the following information: employee number, last name, first name, and department name.

(5) List all employees whose first name is "Hercules" and last names begin with "B."

(6) List all employees in the Sales department, including their employee number, last name, first name, and department name.

(7) List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

(8) In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
 
Uses SQLAlchemy to import the SQL database into Pandas in order to generate graphs concerning the Number of Employees per Salary Range and the Average Salary by Title. 
