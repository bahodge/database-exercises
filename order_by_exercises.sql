USE employees;
# 1 File CREATED

# 2 Order By first name!
SELECT *
FROM employees
WHERE first_name IN('Irena', 'Vidya', 'Maya')
ORDER BY first_name ASC;

# 3
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name ASC, last_name ASC;

# 4
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name ASC, first_name ASC;

# 5
SELECT *
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no ASC;


# 6
SELECT *
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no DESC;

# 7
SELECT first_name, last_name
FROM employees
WHERE birth_date LIKE '%-12-25' AND hire_date LIKE '199%'
ORDER BY birth_date, hire_date DESC