# Pewlett-Hackard-Analysis

## Project Overview & Purpose
The purpose of this analysis was to find the employees within Pewlett-Hackard that were nearing retirement age to help the company plan for openings. I used SQL queries in pgAdmin to find the relevant information, like identifying retiring individuals by age or within departments.

## Resources
Data Source: departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv
Software: SQL, Postgres, pgAdmin

## Results
  * In the first deliverable, we identified the individuals nearing retirement age by joining the Employees and Titles tables and then filtering by birthdates between 1952 and 1955. After applying the DISTINCT function to remove duplicates, I identified 90,398 employees that were nearing retirement age.
  *  In another query, I created a new table showing the count of individuals nearing retirement age by department. For example, there are 29,414 Senior Engineers and 12,243 staff nearing retirement age.
  * In the second deliverable, I wrote a query to create a table showing the employees that are eligible to participate in a mentorship program. After applying the constraints of being a current employee and born in 1965, I found 1,549 employees eligible for the program.
  * Most of the employees eligible for the mentorship program are Engineers (with 748).

</br>

## Summary
Pewlett-Hackard will need to fill close to 90,398 roles as the “silver tsunami” begins. This will ensure that someone is able to take over each role from all retiring employees. There are about 1,549 employees eligible in the mentorship program that will be able to mentor the incoming employees at the company. This may not be enough as the number of employees retiring is far greater than the employees that are eligible to mentor. We used a larger range (3 years) to identify potential retirees but only 1 year to identify eligible mentors, so this may be a reason why there are far less employees.

One additional query/table to create would be to identify upcoming individuals that will be eligible to join the mentorship program. We used a larger range (3 years) to identify potential retirees but only 1 year to identify eligible mentors, so this may be a reason why there are far less employees. Another could be to identify the mentors needed in each department by the amount of people retiring in each department. This way, Pewlett-Hackard may hire individuals in certain departments that may be older and eligible for mentorship.
