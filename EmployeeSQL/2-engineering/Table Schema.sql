-- DATA ENGINEERING

-- Titles Table
CREATE TABLE titles(
    title_id VARCHAR(5) NOT NULL,
    title VARCHAR NOT NULL,
	PRIMARY KEY (title_id)
	);

-- Departments Table
CREATE TABLE departments(
    dept_no VARCHAR(4) NOT NULL,
    dept_name VARCHAR NOT NULL,
    PRIMARY KEY (dept_no)
	);

-- Employees Table
CREATE TABLE employees(
    emp_no INT,
    emp_title_id VARCHAR(5) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
	);

-- Salaries Table
CREATE TABLE salaries(
    emp_no INT NOT NULL,
    salary INT NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);

-- Deparments/Employees Table
CREATE TABLE dept_emp(
    emp_no INT NOT NULL,
    dept_no VARCHAR(4) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	);

-- Departments/Managers Table
CREATE TABLE dept_manager(
    dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);