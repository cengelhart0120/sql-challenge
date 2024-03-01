-- DATA ANALYSIS

-- Query to list the employee number, last name, first name, sex, and salary of each employee.
SELECT
	e.emp_no, e.last_name, e.first_name, e.sex,
	s.salary
FROM employees AS e
INNER JOIN salaries AS s
	ON e.emp_no = s.emp_no;

-- Query to list the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';

-- Query to list the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT
	dm.dept_no,
	d.dept_name,
	e.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm
INNER JOIN employees AS e
	ON dm.emp_no = e.emp_no
INNER JOIN departments AS d
	ON dm.dept_no = d.dept_no;

-- Query to list the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT
	de.dept_no,
	e.emp_no, e.last_name, e.first_name,
	d.dept_name
FROM dept_emp AS de
INNER JOIN employees AS e
	ON de.emp_no = e.emp_no
INNER JOIN departments AS d
	ON de.dept_no = d.dept_no;

-- Query to list first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE (first_name = 'Hercules' AND last_name LIKE 'B%');

-- Query to list each employee in the Sales department, including their employee number, last name, and first name.
SELECT
	de.emp_no,
	e.last_name, e.first_name
FROM dept_emp AS de
INNER JOIN employees AS e
	ON de.emp_no = e.emp_no
INNER JOIN departments AS d
	ON de.dept_no = d.dept_no
	WHERE d.dept_name = 'Sales';

-- Query to list each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT
	de.emp_no,
	e.last_name, e.first_name,
	d.dept_name
FROM dept_emp AS de
INNER JOIN employees AS e
	ON de.emp_no = e.emp_no
INNER JOIN departments AS d
	ON de.dept_no = d.dept_no
	WHERE (d.dept_name = 'Sales' OR d.dept_name = 'Development');

-- Query to list the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT (last_name) AS "Count of employee last names"
FROM employees
GROUP BY last_name
ORDER BY "Count of employee last names" DESC;
