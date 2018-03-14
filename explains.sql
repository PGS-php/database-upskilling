
-- Get average of salary in departments
EXPLAIN SELECT d.dept_name, avg(s.salary) FROM salaries AS s
LEFT JOIN employees AS e ON s.emp_no = e.emp_no
LEFT JOIN dept_emp AS de ON e.emp_no = de.emp_no
LEFT JOIN departments AS d ON de.dept_no = d.dept_no
GROUP BY d.dept_name;

-- All employees with manager is Margareta Markovitch
SELECT e1.first_name, e1.last_name FROM employees AS e1
  LEFT JOIN dept_emp emp ON e1.emp_no = emp.emp_no
  LEFT JOIN departments d ON emp.dept_no = d.dept_no
  LEFT JOIN dept_manager m ON d.dept_no = m.dept_no
  LEFT JOIN employees e2 ON m.emp_no = e2.emp_no
WHERE e2.first_name = 'Margareta' AND e2.last_name = 'Markovitch';