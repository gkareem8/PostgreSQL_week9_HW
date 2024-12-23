-- Create 'titles' table
CREATE TABLE titles (
    title_id VARCHAR(10) PRIMARY KEY,  
    title VARCHAR(50),
    last_updated TIMESTAMP
);

-- Create 'departments' table
CREATE TABLE departments (
    dept_no VARCHAR(10) PRIMARY KEY, 
    dept_name VARCHAR(50),
    last_updated TIMESTAMP
);

-- Create 'employees' table
CREATE TABLE employees (
    emp_no INT PRIMARY KEY, 
    emp_title_id VARCHAR(10),  
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex VARCHAR(5),
    hire_date DATE,
    last_update TIMESTAMP,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)  -- Foreign Key
);

-- Create 'salaries' table
CREATE TABLE salaries (
    salary_id SERIAL PRIMARY KEY,  
    emp_no INT,  
    salary INT,
    last_update TIMESTAMP,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)  
);

-- Create 'dept_emp' table 
CREATE TABLE dept_emp (
    dept_emp_id SERIAL PRIMARY KEY,  
    emp_no INT,  
    dept_no VARCHAR(10),  
    last_update TIMESTAMP,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),  
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no) 
);

-- Create 'dept_manager' table 
CREATE TABLE dept_manager (
    dept_manager_id SERIAL PRIMARY KEY,  
    dept_no VARCHAR(10),  
    emp_no INT,  
    last_update TIMESTAMP,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),  
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)  
)