CREATE TABLE departments (
    dept_no VARCHAR(4)   NOT NULL,
    dept_name VARCHAR(40)   NOT NULL,
    CONSTRAINT pk_departments PRIMARY KEY (
        dept_no
     ),
    CONSTRAINT uc_departments_dept_name UNIQUE (
        dept_name
    )
);

CREATE TABLE dept_emp (
    emp_no INT   NOT NULL,
    dept_no VARCHAR(4)   NOT NULL
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(4)   NOT NULL,
    emp_no INT   NOT NULL
);

CREATE TABLE employees (
    emp_no INT   NOT NULL,
    title_id VARCHAR(5)   NOT NULL,
    birth_date date   NOT NULL,
    first_name VARCHAR(14)   NOT NULL,
    last_name VARCHAR(16)   NOT NULL,
    sex VARCHAR(1)   NOT NULL,
    hire_date date   NOT NULL,
    CONSTRAINT pk_employees PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE salaries (
    emp_no INT   NOT NULL,
    salary INT   NOT NULL,

    CONSTRAINT uc_salaries_emp_no UNIQUE (
        emp_no
    )
);

CREATE TABLE titles (
    title_id VARCHAR(5)   NOT NULL,
    title VARCHAR(18)   NOT NULL,
    CONSTRAINT pk_titles PRIMARY KEY (
        title_id
     ),
    CONSTRAINT uc_titles_title UNIQUE (
        title
    )
);

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE employees ADD CONSTRAINT fk_employees_emp_no FOREIGN KEY(emp_no)
REFERENCES salaries (emp_no);

ALTER TABLE employees ADD CONSTRAINT fk_employees_title_id FOREIGN KEY(title_id)
REFERENCES titles (title_id);


