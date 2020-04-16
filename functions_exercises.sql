USE employees;

-- Update your queries for employees whose names start and end with 'E'.
-- Use concat() to combine their first and last name together as a single column in your results.

SELECT CONCAT(first_name, last_name)
    FROM employees
    WHERE last_name LIKE 'E%' AND last_name LIKE '%e'
    ORDER BY emp_no;

-- For your query of employees born on Christmas and hired in the 90s,
-- use datediff() to find how many days they have been working at the company.

SELECT first_name, last_name, birth_date, DATEDIFF(CURDATE(), hire_date)
    FROM employees
    WHERE (birth_date LIKE '%-12-25') AND (hire_date BETWEEN '1990-01-01' AND '1999-12-31')
    ORDER BY birth_date ASC, hire_date DESC;
