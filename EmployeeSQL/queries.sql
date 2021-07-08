--List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT employees.emp_no, last_name, first_name, sex, salary
FROM employees
JOIN salaries ON employees.emp_no=salaries.emp_no
WHERE hire_date BETWEEN '1/1/1980' AND '31/12/1999'
ORDER BY emp_no

--List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date>= '01-01-1986'
AND hire_date <= '31-12-1986'
ORDER BY last_name


-- List the manager of each department with the following information: department number, department name,
--the manager's employee number, last name, first name.

SELECT departments.dept_no, dept_name, employees.emp_no, last_name, first_name
FROM employees
JOIN dept_manager ON employees.emp_no=dept_manager.emp_no
JOIN departments ON dept_manager.dept_no=departments.dept_no
WHERE hire_date BETWEEN '1/1/1980' AND '31/12/1999'
ORDER BY dept_no

--List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT e.emp_no, last_name, first_name, dept.dept_name
FROM employees AS e
JOIN dept_emp AS d_e USING (emp_no)
JOIN departments AS dept USING (dept_no)
WHERE hire_date BETWEEN '1/1/1980' AND '31/12/1999'
ORDER BY dept_name



--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT * 
FROM employees
WHERE ((first_name ='Hercules') AND (last_name LIKE 'A%')) AND (hire_date BETWEEN '1/1/1980' AND '31/12/1999')
ORDER BY last_name	


--List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT e.emp_no, last_name, first_name, dept.dept_name
FROM employees AS e
JOIN dept_emp AS d_e USING (emp_no)
JOIN departments AS dept USING (dept_no)
WHERE (dept_name = 'Sales') AND (hire_date>= '01-01-1980' AND hire_date <= '31-12-1999')


--List all employees in the Sales and Development departments, including their employee number, last name, first name, 
--and department name.

SELECT employees.emp_no, last_name, first_name, departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
JOIN departments ON dept_emp.dept_no=departments.dept_no
WHERE dept_name IN ('Sales', 'Development')AND (hire_date BETWEEN '1/1/1980' AND '31/12/1999')
ORDER BY dept_name

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(*) AS freq_last_name
FROM employees 
WHERE hire_date BETWEEN '1/1/1980' AND '31/12/1999'
GROUP BY last_name
ORDER BY freq_last_name DESC
