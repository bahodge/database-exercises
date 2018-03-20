# 1
USE employees;

# 2, 3, 4, 5
SELECT concat(emp_no, ' - ', first_name, ' ' ,last_name) AS full_name, birth_date AS DOB
FROM employees
LIMIT 10;