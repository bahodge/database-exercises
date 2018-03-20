use employees;

# 2
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'z%'
ORDER BY last_name DESC
LIMIT 10;

# 3
SELECT first_name, last_name
FROM employees
WHERE birth_date LIKE '%-12-25' AND hire_date LIKE '199%'
ORDER BY birth_date, hire_date DESC
LIMIT 5;

#4
SELECT first_name, last_name
FROM employees
WHERE birth_date LIKE '%-12-25' AND hire_date LIKE '199%'
ORDER BY birth_date, hire_date DESC
LIMIT 5 OFFSET 45;