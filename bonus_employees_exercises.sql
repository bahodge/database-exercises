USE employees;

# ================================= RELATIONSHIP DRILLS

-- concat the max salaries of the first two employees
# 10001, 10002
SELECT sum(salary)
FROM salaries
WHERE emp_no IN (10001, 10002)
  AND to_date > curdate();

-- get current manager name of Sales department (use subqueries)
SELECT concat_ws(' ', first_name, last_name)
FROM employees
WHERE emp_no = (
  SELECT emp_no
  FROM dept_manager
  WHERE to_date > curdate() AND dept_no = (
    SELECT dept_no
    FROM departments
    WHERE dept_name = 'SALES'
  )
);
-- get all senior engineers in customer service department
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM titles
  WHERE to_date > curdate() AND title = 'SENIOR ENGINEER' AND emp_no IN (
    SELECT emp_no
    FROM dept_emp
    WHERE to_date > curdate() AND dept_no = (
      SELECT dept_no
      FROM departments
      WHERE dept_name = 'Customer Service'
    )
  )
);
-- get all first and last names of current Sales department employees
SELECT CONCAT_WS(' ', first_name, last_name) AS 'Full Name'
FROM employees
WHERE  emp_no IN (
  SELECT emp_no
  FROM dept_emp
  WHERE to_date > curdate() AND dept_no = (
    SELECT dept_no
    FROM departments
    WHERE dept_name = 'SALES'
  )
);
-- get the name of the employee with the highest salary
SELECT first_name, last_name
FROM employees
WHERE emp_no = (
  SELECT emp_no
  FROM salaries
  WHERE salary = (
    SELECT max(salary)
    FROM salaries
    WHERE to_date > curdate()
  )
);


# ================================= RELATIONSHIP BONUSES

-- what is the most common birthday in the company? least common?
SELECT birth_date, COUNT(*) AS count
FROM employees
GROUP BY birth_date
ORDER BY count DESC
LIMIT 1;

SELECT birth_date, COUNT(*) AS count
FROM employees
GROUP BY birth_date
ORDER BY count ASC
LIMIT 1;

-- what is the average salary of managers by department?
SELECT AVG(salary)
FROM salaries
WHERE to_date > curdate() AND emp_no IN (
  SELECT emp_no
  FROM dept_manager
  WHERE to_date > curdate()
);

-- how many employees currently work in each department?
SELECT dept_no, COUNT(emp_no) AS `Current Employees`
FROM dept_emp
WHERE to_date > curdate() AND dept_no IN (
  SELECT dept_no
  FROM departments
)
GROUP BY dept_no DESC;


-- what is the average salary for each department?
SELECT d.dept_name, avg(s.salary) AS 'Average Salary'
FROM dept_emp
  JOIN departments d
    ON dept_emp.dept_no = d.dept_no
  JOIN salaries s
    ON dept_emp.emp_no = s.emp_no
WHERE s.to_date > curdate()
      AND dept_emp.to_date > curdate()
GROUP BY dept_name;

-- what was the average salary in the 80s? By department?

-- how many times (on average) do employees switch titles?

-- how many times (on average) do employees get a raise?

-- what is the highest paying job title historically for women and men? For women only? For men only?

-- does the older halve of current employees make more or less than the younger halve?

-- list the oldest current employees by title in each department

-- list the 5 historically lowest paid managers
