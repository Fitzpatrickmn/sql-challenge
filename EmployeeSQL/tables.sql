DROP TABLE departments; 
DROP TABLE dept_emp; 
DROP TABLE dept_manager; 
DROP TABLE employees; 
DROP TABLE salaries; 
DROP TABLE titles; 

CREATE TABLE departments(
	dept_no varchar(255) primary key, 
	dept_name varchar(255)
); 

CREATE TABLE dept_emp(
	emp_no int, 
	dept_no varchar(255), 
	from_date varchar(255), 
	to_date varchar(255), 
	PRIMARY KEY (emp_no, dept_no)
); 

CREATE TABLE dept_manager(
	dept_no varchar(255), 
	emp_no int, 
	from_date varchar(255), 
	to_date varchar(255),
	PRIMARY KEY (emp_no, dept_no)
); 

CREATE TABLE employees(
	emp_no int primary key, 
	birth_date varchar(255), 
	first_name varchar(255), 
	last_name varchar(255),
	gender varchar(255), 
	hire_date varchar(255) 
); 

CREATE TABLE salaries(
	id serial PRIMARY KEY,
	emp_no int, 
	salary int, 
	from_date varchar(255), 
	to_date varchar(255)
); 

CREATE TABLE titles(
	id serial PRIMARY KEY,
	emp_no int, 
	title varchar(255), 
	from_date varchar(255), 
	to_date varchar(255) 
); 

Select * from departments; 
Select * from dept_emp; 
Select * from dept_manager; 
Select * from employees; 
Select * from salaries; 
Select * from titles; 

