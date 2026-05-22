-- 1. Retrieve the names of employees and their corresponding managers
SELECT e.emp_name AS employee_name, m.emp_name AS manager_name FROM employees e LEFT JOIN employees m ON e.manager_id = m.emp_id;

-- 2. Display all employees and their corresponding departments
SELECT e.emp_name, d.dept_name FROM employees e LEFT JOIN departments d ON e.dept_id = d.dept_id;

-- 3. List employees who report to a manager
SELECT e.emp_name, m.emp_name AS manager_name FROM employees e INNER JOIN employees m ON e.manager_id = m.emp_id;

-- 4. Find total employees in each department
SELECT d.dept_name, COUNT(e.emp_id) AS total_employees FROM departments d LEFT JOIN employees e ON d.dept_id = e.dept_id GROUP BY d.dept_name;

-- 5. Employees without department
SELECT emp_name FROM employees WHERE dept_id IS NULL;

-- 6. Employees and assigned projects
SELECT e.emp_name, p.project_name FROM employees e LEFT JOIN projects p ON e.emp_id = p.emp_id;

-- 7. Employees who completed at least one project
SELECT e.emp_name, p.project_name FROM employees e INNER JOIN projects p ON e.emp_id = p.emp_id;

-- 8. Employees and projects (include all projects)
SELECT e.emp_name, p.project_name FROM employees e RIGHT JOIN projects p ON e.emp_id = p.emp_id;

-- 9. Employees and salary records
SELECT emp_name, NULL AS salary FROM employees;

-- 10. Employees with department names
SELECT e.emp_name, d.dept_name FROM employees e LEFT JOIN departments d ON e.dept_id = d.dept_id;

-- 11. Departments and employees
SELECT d.dept_name, e.emp_name FROM departments d LEFT JOIN employees e ON d.dept_id = e.dept_id;

-- 12. Employees with contact info
SELECT emp_name, NULL AS contact_info FROM employees;

-- 13. Employees and department names (full join)
SELECT e.emp_name, d.dept_name FROM employees e FULL OUTER JOIN departments d ON e.dept_id = d.dept_id;

-- 14. Employees without projects
SELECT e.emp_name FROM employees e LEFT JOIN projects p ON e.emp_id = p.emp_id WHERE p.project_id IS NULL;

-- 15. Employees and project names
SELECT e.emp_name, p.project_name FROM employees e LEFT JOIN projects p ON e.emp_id = p.emp_id;

-- 16. Projects and assigned employees
SELECT p.project_name, e.emp_name FROM projects p LEFT JOIN employees e ON p.emp_id = e.emp_id;

-- 17. Employees with manager and project
SELECT e.emp_name, m.emp_name AS manager_name, p.project_name FROM employees e INNER JOIN employees m ON e.manager_id = m.emp_id INNER JOIN projects p ON e.emp_id = p.emp_id;

-- 18. Employees with valid departments only
SELECT e.emp_name, d.dept_name FROM employees e INNER JOIN departments d ON e.dept_id = d.dept_id;

-- 19. Employees in multiple departments
SELECT emp_name, dept_id FROM employees GROUP BY emp_name, dept_id HAVING COUNT(dept_id) > 1;

-- 20. Departments and employees (include empty departments)
SELECT d.dept_name, e.emp_name FROM departments d LEFT JOIN employees e ON d.dept_id = e.dept_id;

-- 21. Employees with project but no department
SELECT e.emp_name, p.project_name FROM employees e INNER JOIN projects p ON e.emp_id = p.emp_id WHERE e.dept_id IS NULL;

-- 22. Employee count by department
SELECT d.dept_name, COUNT(e.emp_id) AS total FROM departments d LEFT JOIN employees e ON d.dept_id = e.dept_id GROUP BY d.dept_name;

-- 23. Employees reporting to managers
SELECT e.emp_name, m.emp_name AS manager_name FROM employees e INNER JOIN employees m ON e.manager_id = m.emp_id;

-- 24. All employees and managers
SELECT e.emp_name, m.emp_name AS manager_name FROM employees e LEFT JOIN employees m ON e.manager_id = m.emp_id;

-- 25. Departments with employee count
SELECT d.dept_name, COUNT(e.emp_id) AS employee_count FROM departments d LEFT JOIN employees e ON d.dept_id = e.dept_id GROUP BY d.dept_name;

-- 26. Employees and departments
SELECT e.emp_name, d.dept_name FROM departments d LEFT JOIN employees e ON d.dept_id = e.dept_id;

-- 27. Employees without salary records
SELECT emp_name FROM employees;

-- 28. Employees and project assignments
SELECT e.emp_name, p.project_name FROM employees e LEFT JOIN projects p ON e.emp_id = p.emp_id;

-- 29. Employees with department and project assignments
SELECT e.emp_name, d.dept_name, p.project_name FROM employees e LEFT JOIN departments d ON e.dept_id = d.dept_id LEFT JOIN projects p ON e.emp_id = p.emp_id;

-- 30. Employees with departments (include no department)
SELECT e.emp_name, d.dept_name FROM employees e LEFT JOIN departments d ON e.dept_id = d.dept_id;