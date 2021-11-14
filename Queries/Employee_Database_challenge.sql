-- create retirement_titles table and sorty by employee number
SELECT e.emp_no, 
	e.first_name, 
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees as e
LEFT JOIN titles as t
ON e.emp_no = t.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31');

SELECT * FROM retirement_titles
ORDER BY emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title

INTO unique_titles
FROM retirement_titles as rt
ORDER BY rt.emp_no, rt.to_date DESC;

SELECT * FROM unique_titles;

-- Create a table with the count of retiring titles
SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY ut.count DESC;

SELECT * FROM retiring_titles;

-- create a mentorship eligibility table
SELECT DISTINCT ON (e.emp_no) e.emp_no, 
	e.first_name, 
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees as e
	INNER JOIN dept_emp as de
		ON e.emp_no = de.emp_no
	INNER JOIN titles as t
		ON e.emp_no = t.emp_no
WHERE de.to_date = ('9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

SELECT * FROM mentorship_eligibility;

-- Create a table with the count of mentors by title, Additional Query for Deliverable 3
SELECT COUNT(me.emp_no), me.title
INTO mentor_titles
FROM mentorship_eligibility as me
GROUP BY me.title
ORDER BY me.count DESC;

SELECT * FROM mentor_titles;

-- Create table with the mentors by title and department, Additional Query for Deliverable 3
SELECT DISTINCT ON (me.emp_no) me.emp_no, 
	me.first_name, 
	me.last_name,
	me.title,
	de.dept_no,
	d.dept_name
INTO mentor_department
FROM mentorship_eligibility as me
	INNER JOIN dept_emp as de
		ON me.emp_no = de.emp_no
	INNER JOIN departments as d
		ON de.dept_no = d.dept_no
ORDER BY me.emp_no;

SELECT * FROM mentor_department;

-- Create a table with the count of mentors by department, Additional Query for Deliverable 3
SELECT COUNT(md.emp_no), md.dept_name
INTO mentor_dept_totals
FROM mentor_department as md
GROUP BY md.dept_name
ORDER BY md.count DESC;

SELECT * FROM mentor_dept_totals;



