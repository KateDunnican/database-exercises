-- List the first 10 distinct last name sorted in descending order.
SELECT DISTINCT(last_name)
    FROM employees
    ORDER BY last_name DESC
    LIMIT 10;

-- Update your query for employees born on Christmas and hired in the 90s to find just the first 5 employees.
SELECT first_name, last_name, birth_date
    FROM employees
    WHERE (birth_date LIKE '%-12-25') AND (hire_date BETWEEN '1990-01-01' AND '1999-12-31')
    ORDER BY birth_date ASC, hire_date DESC
    LIMIT 5;

-- Update the query to find the tenth page (assume 5 results/page) of results.
SELECT first_name, last_name, birth_date
    FROM employees
    WHERE (birth_date LIKE '%-12-25') AND (hire_date BETWEEN '1990-01-01' AND '1999-12-31')
    ORDER BY birth_date ASC, hire_date DESC
    LIMIT 5 OFFSET 45;