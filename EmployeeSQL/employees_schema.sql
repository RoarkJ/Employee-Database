--DROP TABLE departments;
--DROP TABLE titles;
--DROP TABLE employees;
--DROP TABLE salaries;
--DROP TABLE dept_emp;
--DROP TABLE dept_manager;

CREATE TABLE departments(
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

CREATE TABLE titles(
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR
);

CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR NOT NULL,
	birth_data DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES title(title_id)
);

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);








