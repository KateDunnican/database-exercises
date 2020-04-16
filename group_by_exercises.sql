USE employees;

SELECT DISTINCT title
    FROM titles;

SELECT last_name
    FROM employess
    WHERE last_name LIKE 'E%E'
    GROUP BY last_name;

SELECT DISTINCT last_name
    FROM employess
    WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

SELECT DISTINCT last_name, COUNT(*)
    FROM employess
    WHERE last_name lIKE '%q%' AND last_name nOT LIKE '%qu%'
    GROUP BY last_name
    ORDER BY COUNT(*);

SELECT COUNT(*), gender
    FROM employees
    WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya'
    GROUP BY gender
    ORDER BY COUNT(*) DESC;