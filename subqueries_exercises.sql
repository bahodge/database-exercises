USE employees;

# 1 Find all the employees with the same hire date as employee 101010 using a sub-query.
# 69 Rows

SELECT first_name, last_name
FROM employees
WHERE hire_date = (
  SELECT hire_date FROM  employees WHERE emp_no = 101010
);

# 2 Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles

# 6 unique titles
SELECT title, count(t.title) AS 'Num of Aamods'
FROM titles t
WHERE emp_no IN (
  SELECT emp_no
  FROM employees
  WHERE first_name = 'aamod'
)
GROUP BY title;

# 314 rows
SELECT title, emp_no
FROM titles t
WHERE emp_no IN (
  SELECT emp_no
  FROM employees
  WHERE first_name = 'aamod'
)
ORDER BY emp_no;

# 3
SELECT concat_ws(' ', first_name, last_name), gender
FROM employees
WHERE gender = 'f' AND emp_no IN (
  SELECT emp_no
  FROM dept_manager
  WHERE to_date > curdate()
);

#############BONUS########################
# 1 Find all the department names that currently have female managers.
SELECT dept_name
FROM departments
WHERE dept_no IN (
  SELECT dept_no
  FROM dept_manager
  WHERE to_date > curdate() AND emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE gender = 'f'
  )
);

# 2 Find the first and last name of the employee with the highest salary.
SELECT first_name, last_name
FROM employees
WHERE emp_no = (
        SELECT emp_no
        FROM  salaries
        WHERE salary = (
            SELECT max(salary)
            FROM salaries
            WHERE to_date > curdate()
        )
      );