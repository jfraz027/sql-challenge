--Database Script

SELECT *
FROM employees;

SELECT *
FROM departments;

SELECT *
FROM dept_emp;

SELECT *
FROM dept_manager;

SELECT *
FROM salaries;

SELECT *
FROM titles;

--Step 1 after database completion
-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
	SELECT employees.emp_no AS Employee_Number, employees.last_name, employees.first_name, employees.sex, salaries.salary
	FROM employees
	JOIN salaries ON employees.emp_no = salaries.emp_no

-- Step 2 after database completion
-- 2. List first name, last name, and hire date for employees who were hired in 1986.
	SELECT employees.first_name, employees.last_name, employees.hire_date
	FROM employees
	WHERE employees.hire_date > '1986-1-1'::date AND employees.hire_date < '1987-1-1'::date

-- Step 3 after database completion
-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number,
	-- last name, first name.
	SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
	FROM dept_manager
	JOIN employees 
	ON dept_manager.emp_no = employees.emp_no
	JOIN departments 
	ON dept_manager.dept_no = departments.dept_no

-- Step 4 after database completion
-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
	SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
	FROM employees
	JOIN dept_emp 
	ON employees.emp_no = dept_emp.emp_no
	JOIN departments 
	ON dept_emp.dept_no = departments.dept_no

-- Step 5 after database completion
-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
	SELECT employees.first_name, employees.last_name, employees.sex
	FROM employees
	WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- Step 6 after database completion
-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
    SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
	FROM employees
	JOIN dept_emp 
	ON employees.emp_no = dept_emp.emp_no
	JOIN departments 
	ON dept_emp.dept_no = departments.dept_no
	WHERE departments.dept_name = 'Sales'

-- Step 7 after database completion
-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
	SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
	FROM employees
	JOIN dept_emp 
	ON employees.emp_no = dept_emp.emp_no
	JOIN departments 
	ON dept_emp.dept_no = departments.dept_no
	WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development'

-- Step 8 after database completion
-- 8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
	SELECT employees.last_name, Count (*)
	FROM employees
	GROUP BY employees.last_name
	ORDER BY Count (*) DESC;





