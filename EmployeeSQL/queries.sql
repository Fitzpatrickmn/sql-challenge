-- 1 Details of each employee: employee number, last name, first name, gender, and salary
SELECT employees.emp_no, last_name, first_name, gender, salary
  FROM employees JOIN salaries
    ON salaries.emp_no = employees.emp_no; 
	
-- 2 List employees who were hired in 1986
select * from employees 
where hire_date between '1986-01-01' and '1986-12-31';  

-- 3 The manager of each department with: department number, department name, 
-- the manager's employee number, last name, first name, and start and end employment dates

SELECT dept_manager.dept_no, dept_name, dept_manager.emp_no, last_name, first_name, from_date, to_date 
FROM dept_manager
join employees on employees.emp_no = dept_manager.emp_no
join departments on departments.dept_no = dept_manager.dept_no; 

-- 4 The department of each employee with: employee number, last name, first name, 
-- and department name
SELECT employees.emp_no, last_name, first_name, departments.dept_name
FROM employees 
JOIN dept_emp on dept_emp.emp_no=employees.emp_no
JOIN departments on departments.dept_no=dept_emp.dept_no; 

-- 5 List all employees whose first name is "Hercules" and last names begin with "B"
SELECT * FROM employees where first_name = 'Hercules' and last_name like 'B%'; 

-- 6 All employees in the Sales with: employee number, last name, first name, and department name
SELECT employees.emp_no, last_name, first_name, departments.dept_name
FROM employees 
JOIN dept_emp on dept_emp.emp_no=employees.emp_no
JOIN departments on departments.dept_no=dept_emp.dept_no
WHERE dept_name = 'Sales';

-- 7 All employees in the Sales or Development:
SELECT employees.emp_no, last_name, first_name, departments.dept_name
FROM employees 
JOIN dept_emp on dept_emp.emp_no=employees.emp_no
JOIN departments on departments.dept_no=dept_emp.dept_no
WHERE dept_name = 'Sales' or dept_name = 'Development';

-- 8 In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
select last_name, 
count(last_name) from employees group by last_name order by count DESC;





