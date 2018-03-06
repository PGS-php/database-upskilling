
-- Get average of salary in departments
EXPLAIN SELECT d.dept_name, avg(s.salary) FROM salaries AS s
LEFT JOIN employees AS e ON s.emp_no = e.emp_no
LEFT JOIN dept_emp AS de ON e.emp_no = de.emp_no
LEFT JOIN departments AS d ON de.dept_no = d.dept_no
GROUP BY d.dept_name;