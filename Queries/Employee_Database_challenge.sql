-- CHALLENGE

-- DELIVERABLE 1
-- Step 1
SELECT emp_no, first_name, last_name
INTO filtered_employees
FROM employees

-- Step 2
SELECT title, from_date, to_date
INTO filtered_titles
FROM titles

-- Steps 3 - 5 (create table with following columns and filter by birthdate, order by EE Number)
SELECT employees.emp_no,
     employees.first_name,
     employees.last_name,
     titles.title,
	 titles.from_date,
	 titles.to_date
INTO retirement_titles
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY employees.emp_no;

-- Step 7 (Check Table and Export)
SELECT * FROM retirement_titles;

-- Steps 8-12
SELECT emp_no, first_name, last_name, title
FROM retirement_titles

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;
SELECT * FROM unique_titles;

-- Steps 15-20
SELECT COUNT(ut.title),ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY ut.count DESC;

--Check table output
SELECT * FROM retiring_titles;

-- DELIVERABLE 2
-- Steps 1-3
SELECT emp_no, first_name, last_name, birth_date
FROM employees

SELECT from_date, to_date
FROM dept_emp

SELECT title
FROM titles

-- Steps 4-9
SELECT DISTINCT ON (emp_no) ee.emp_no,
ee.first_name,
ee.last_name,
ee.birth_date,
de.from_date,
de.to_date,
tt.title
INTO mentorship_eligibility
FROM employees as ee
	INNER JOIN dept_emp as de
		ON (ee.emp_no = de.emp_no)
	INNER JOIN titles as tt
		ON (ee.emp_no = tt.emp_no)
	WHERE (de.to_date = '9999-01-01')
     	AND (ee.birth_date BETWEEN '1965-01-01' AND '1965-12-31');

-- Check table output
SELECT * FROM mentorship_eligibility

