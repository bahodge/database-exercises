USE employees;
# 1 File CREATED

# 2
SELECT CONCAT(first_name,' ',last_name)
AS full_name
FROM employees
WHERE last_name LIKE '%e'
      and last_name LIKE 'e%';


# 3
SELECT first_name, last_name, datediff(curdate(), hire_date)
AS days_with_company
FROM employees
WHERE birth_date LIKE '%-12-25' AND hire_date LIKE '199%'
ORDER BY birth_date, hire_date DESC