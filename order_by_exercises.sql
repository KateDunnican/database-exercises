USE employees;

-- Modify your first query to order by first name.
SELECT first_name, last_name
    FROM employees
    WHERE first_name IN ('Irena', 'Vidya', 'Maya')
    ORDER BY first_name;

-- Update the query to order by first name and then last name.
SELECT first_name, last_name
    FROM employees
    WHERE first_name IN ('Irena', 'Vidya', 'Maya')
    ORDER BY first_name, last_name;

-- Change the order by clause so that you order by last name before first name.
SELECT first_name, last_name
    FROM employees
    WHERE first_name IN ('Irena', 'Vidya', 'Maya')
    ORDER BY last_name, first_name;

-- Update your queries for employees with 'E' in their last name to sort the results by their employee number.
SELECT first_name, last_name
    FROM employees
    WHERE last_name LIKE 'E%'
    ORDER BY emp_no;

SELECT first_name, last_name
    FROM employees
    WHERE last_name LIKE 'E%' OR last_name LIKE '%e'
    ORDER BY emp_no;

SELECT first_name, last_name
    FROM employees
    WHERE last_name LIKE 'E%' AND last_name LIKE '%e'
    ORDER BY emp_no;

-- Now reverse the sort order for all three queries.
SELECT first_name, last_name
    FROM employees
    WHERE last_name LIKE 'E%'
    ORDER BY emp_no DESC;

SELECT first_name, last_name
    FROM employees
    WHERE last_name LIKE 'E%' OR last_name LIKE '%e'
    ORDER BY emp_no DESC;

SELECT first_name, last_name
    FROM employees
    WHERE last_name LIKE 'E%' AND last_name LIKE '%e'
    ORDER BY emp_no DESC;

-- Employees hired in the 90s, born on Christmas. First result is oldest employee who was hired last (Khun Bernini).
SELECT first_name, last_name, birth_date
    FROM employees
    WHERE (birth_date LIKE '%-12-25') AND (hire_date BETWEEN '1990-01-01' AND '1999-12-31')
    ORDER BY birth_date ASC, hire_date DESC;
