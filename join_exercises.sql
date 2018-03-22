use employees;

# 1 CREATED FILE

# 2
SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ' ,e.last_name) AS Department_Manager
FROM employees AS e
  JOIN dept_manager manager
    ON e.emp_no = manager.emp_no
  JOIN departments d
    ON manager.dept_no = d.dept_no
WHERE manager.to_date LIKE '9999%'
ORDER BY d.dept_name;

# 3 Departments managed by women
SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees AS e
  JOIN dept_manager manager
    ON e.emp_no = manager.emp_no
  JOIN departments d
    ON manager.dept_no = d.dept_no
WHERE e.gender = 'f' AND manager.to_date LIKE '9999%';


# 4 Count the total number of employees working in customer service
SELECT t.title AS Title, COUNT(t.title) AS Employee_Count
FROM employees e
  JOIN titles t
    ON e.emp_no = t.emp_no
  JOIN dept_emp de
    ON e.emp_no = de.emp_no
  JOIN departments d
    ON de.dept_no = d.dept_no
WHERE t.to_date LIKE '9999%'
      AND de.to_date LIKE '9999%'
      AND d.dept_name LIKE 'Cust%'
GROUP BY t.title
ORDER BY Employee_Count DESC;


# 5 Current salary of all current managers
SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager, s.salary AS Current_Salary
FROM employees e
  JOIN dept_manager manager
    ON e.emp_no = manager.emp_no
  JOIN departments d
    ON d.dept_no = manager.dept_no
  JOIN salaries s
    ON e.emp_no = s.emp_no
WHERE s.to_date LIKE '9999%'
      AND manager.to_date LIKE '9999%'
ORDER BY d.dept_name ASC;

# Bonus - All current employees and their current managers
SELECT concat_ws(' ', mortals.first_name, mortals.last_name) AS 'Employee', d.dept_name, concat_ws(' ', gods.first_name, gods.last_name)
FROM employees mortals
  JOIN dept_emp de
    ON mortals.emp_no = de.emp_no
  JOIN departments d
    ON de.dept_no = d.dept_no
  JOIN dept_manager manager
    ON d.dept_no = manager.dept_no
JOIN employees gods
    ON manager2.emp_no = gods.emp_no
WHERE de.to_date > curdate()
  AND manager.to_date > curdate();


SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name',
       dept_name AS 'Department Name',
       CONCAT(m.first_name,' ',m.last_name) AS 'Manager'
# Get employee table
FROM employees AS e
#   Join with department employee table
  JOIN dept_emp
  #   Connect with employee id no
    ON dept_emp.emp_no = e.emp_no
#   Join with departments table
  JOIN departments
  #   connect to department_employees department number
    ON departments.dept_no = dept_emp.dept_no
#   Join with department manager table
  JOIN dept_manager
  #   connect to department_employees department number
    ON dept_emp.dept_no = dept_manager.dept_no
#   Join with another employee table
  JOIN employees AS m
#   connect to department_manager
    ON m.emp_no = dept_manager.emp_no
#   Where all are current employees
WHERE dept_emp.to_date LIKE '9999%' AND dept_manager.to_date LIKE '9999%';

#############BONUS EXERCISES###################
# 1  Write a query to get the average salary current managers make by gender
SELECT e.gender AS 'Gender', AVG(s.salary) AS 'Average Salary'
FROM employees e
  JOIN salaries s
    ON e.emp_no = s.emp_no
  JOIN dept_manager manager
    ON e.emp_no = manager.emp_no
WHERE manager.to_date LIKE '9999%'
  AND s.to_date LIKE '9999%'
GROUP BY e.gender;

# 2  Write a query to get the avg salary managers historically make by gender
SELECT e.gender AS 'Gender', AVG(s.salary) AS 'Average Salary'
FROM employees e
  JOIN salaries s
    ON e.emp_no = s.emp_no
  JOIN dept_manager manager
    ON e.emp_no = manager.emp_no
GROUP BY e.gender;

# 3 Get avg salary for all current employees by gender
SELECT e.gender AS 'Gender', AVG(s.salary) AS 'Average Salary'
FROM employees e
  JOIN salaries s
    ON e.emp_no = s.emp_no
  JOIN dept_emp emp
    ON e.emp_no = emp.emp_no
WHERE emp.to_date LIKE '9999%'
  AND s.to_date LIKE '9999%'
GROUP BY e.gender;

# 4 get avg historic salary for all employees by gender
SELECT e.gender AS 'Gender', AVG(s.salary) AS 'Average Salary'
FROM employees e
  JOIN salaries s
    ON e.emp_no = s.emp_no
  JOIN dept_emp emp
    ON e.emp_no = emp.emp_no
GROUP BY e.gender;
