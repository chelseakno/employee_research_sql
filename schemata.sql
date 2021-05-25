-- Table for titles
CREATE TABLE titles (
    title_id VARCHAR  primary key NOT NULL,
    title VARCHAR 
);

-- Table for employees
CREATE TABLE employees (
    emp_no INT  primary key NOT NULL,
    emp_title_id VARCHAR NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    sex VARCHAR   NOT NULL,
    hire_date DATE   NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

-- Table for departments
CREATE TABLE departments (
    dept_no VARCHAR   primary key NOT NULL,
    dept_name VARCHAR   NOT NULL
);

-- Table for department managers
CREATE TABLE dept_manager (
    dept_no VARCHAR   NOT NULL,
    emp_no INT   NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

-- Table for department employees
CREATE TABLE dept_emp (
    emp_no INT   NOT NULL,
    dept_no VARCHAR   NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

-- Table for salaries
CREATE TABLE salaries (
    emp_no INT  primary key  NOT NULL,
    salary INT   NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
