USE employees;

# 2 Get all distinct titles
SELECT DISTINCT title
FROM titles;

# 3 start and end with e and group with Group BY
SELECT last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name;

# 4 Count unique combos of previous query
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY first_name, last_name;

# 5 find unique last names with q but not qu
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

# 6 Add count to results and use order by to unusual name shared
SELECT last_name, count(last_name) as instances
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY count(*);

# 7 find male/females with irena, vidya or maya
SELECT count(gender) as instances, gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;