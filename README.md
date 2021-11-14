# Pewlett Hackard Analysis

## Overview of the Analysis

Pewlett Hackard has a large pool of employees that is set to retire in the next few years.  To combat losing a great deal of experience, the organization is interested in implementing a mentorship program by identifying those employees that may retire in the next decade that could help prepare the workforce for the next round of retirements.  This project used SQL to breakdown the number of retirees by title and identify potential mentors for the new mentorship program.

## Results

### Retiring Employees

After running a query to remove any duplicate employees that may have been listed numerous times in the database with various titles throughout their tenure, the results were as follows:

    - 90,398 employees are of retirement age (birthdates between 1/1/1952 - 12/31/1955)
    - 57,668 are senior level staff members (29,414 Senior Engineers & 28,254 Senior Staff members)
    - 4,504 leaders are of retirement age (2 Managers and 4,502 Technique Leaders) 

![retiring_titles](https://user-images.githubusercontent.com/90982811/141699542-988dea62-23d1-490b-a75a-3da8afccd21b.png)

### Employees Eligible for the Mentorship Program

    - 1,549 employees have been identified as potential mentors (birthdates between 1/1/1965 - 12/31/1965)

## Summary

90,398 or 35.7% of the workforce is set to retire, a phenomenon referred to as the "silver tsunami."  1,549 employees have been identified as potential mentors which equates to 1.7% of the number of impending retirees.  Not all employees identified may be selected or accept the role of being a mentor.  The small ratio of mentors to vacated positions by retirees would likely be too taxing on the mentors to mentor/train each new employee.  Pewlett Hackard should look into additional succession planning strategies.

### Additional Analysis

An additional CSV (mentor_department.csv) is provided in the Data folder that lists each potential mentor and their department, so executive leadership can work with management in each area regarding the mentor program.

The breakdown of mentors by title:

![mentor_titles](https://user-images.githubusercontent.com/90982811/141699551-7c689d89-f5ab-4b7b-a5c7-2e6e38065603.png)

The breakdown of mentors by department:

![mentor_dept_totals](https://user-images.githubusercontent.com/90982811/141699556-082eceb0-c5fe-41f9-94f0-8c1edf7ccb50.png)

Pewlett Hackard has many shoes to fill in the upcoming silver tsunami but with adequate planning by the aid of this data analysis, the groundwork can be put into place to hire and train the upcoming workforce.
