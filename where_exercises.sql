USE employees;

#1 CREATED FILE

# 2
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

# 3
SELECT *
FROM employees
WHERE last_name LIKE 'e%';
# 4
SELECT *
FROM employees
WHERE hire_date LIKE '199%';

# 5
SELECT *
FROM employees
WHERE birth_date LIKE '%12-25';

# 6
SELECT *
FROM employees
WHERE last_name LIKE '%q%';

# 1
SELECT *
FROM employees
WHERE first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya';

# 2
# SELECT *
# FROM employees
# WHERE first_name = 'Irena'
#       AND gender = 'm'
#       OR first_name = 'Vidya'
#          AND gender = 'm'
#       OR first_name = 'Maya'
#          AND gender = 'm';

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') AND gender = 'm';

# 3
SELECT *
FROM employees
WHERE last_name LIKE 'e%' OR last_name LIKE '%e';

# 4
SELECT *
FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

# 5
SELECT *
FROM employees
WHERE hire_date LIKE '199%' AND birth_date LIKE '%12-25';;

# 6
SELECT *
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';