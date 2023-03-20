				Assignment 07
For employees table

Answer to the question 
a.
SELECT * FROM employees;
-- Suppose I am working with a relational database and the name of the employees table is "employees", I can use the following SQL query to select all columns and rows from the employees table:
b.
SELECT name, salary
FROM employees
WHERE salary > 50000;
-- This query uses the SELECT statement to choose the "name" and "salary" columns from the "employees" table. The WHERE clause is used to filter the results by selecting only those employees whose salary is greater than 50000.

c.
SELECT AVG(salary)
FROM employees;
-- This query uses the SELECT statement to calculate the average of the "salary" column in the "employees" table using the AVG() function. The result will be a single value representing the average salary of all employees.

d.
SELECT COUNT(*)
FROM employees
INNER JOIN departments ON employees.department_id = departments.department_id
WHERE departments.name = 'Marketing';
-- This query uses the SELECT statement to count the number of rows returned by the query. The INNER JOIN clause is used to combine data from both the "employees" and "departments" tables based on the "department_id" column. The WHERE clause is used to filter the results by selecting only those employees who work in the "Marketing" department, which is identified by the department name "Marketing". Finally, the COUNT() function is used to count the number of rows returned by the query, which corresponds to the number of employees who work in the Marketing department.
e.
UPDATE employees
SET salary = 60000
WHERE id = 1001;
-- This query uses the UPDATE statement to modify the "salary" column in the "employees" table. The SET clause is used to set the value of the "salary" column to 60000 for the employee with an ID of 1001. The WHERE clause is used to identify the employee by their ID and apply the update only to that specific row.

f.
DELETE FROM employees
WHERE salary < 30000;
-- This query uses the DELETE statement to delete all rows from the "employees" table that satisfy the condition in the WHERE clause, which is that the "salary" column is less than 30000. This will remove all employees with a salary less than 30000 from the table. It's important to note that once the data has been deleted, it cannot be recovered, so it's recommended to make a backup of the data before performing any deletion operations.

For departments table
a.
SELECT *
FROM departments;
-- This query will return the complete contents of the "departments" table, including all columns and rows.
b.
>> For example dept ID for the Finance department is "002"
SELECT name, manager
FROM departments
WHERE department_id = '002';
-- This query uses the SELECT statement to choose the "name" and "manager" columns from the "departments" table. The WHERE clause is used to filter the results by selecting only the row with the department ID "002", which corresponds to the Finance department. The query will return only the "name" and "manager" columns for the Finance department.
c.
SELECT departments.name, COUNT(employees.department_id) AS total_employees
FROM departments
LEFT JOIN employees ON departments.department_id = employees.department_id
GROUP BY departments.name;
-- This query uses the SELECT statement to choose the "name" and "manager" columns from the "departments" table. The WHERE clause is used to filter the results by selecting only the row with the department ID "002", which corresponds to the Finance department. The query will return only the "name" and "manager" columns for the Finance department.
d.
INSERT INTO departments (department_id, name, manager)
VALUES ('003', 'Research', 'John Doe');
-- This query uses the SELECT statement to retrieve data from both the "departments" and "employees" tables. The LEFT JOIN clause is used to combine data from both tables based on the "department_id" column, and all departments are included, even those without employees. The COUNT() function is used to count the number of employees in each department, based on the "department_id" column in the "employees" table. The AS keyword is used to give the COUNT() function an alias of "total_employees". The GROUP BY clause is used to group the results by department name, which ensures that the count is performed on a department-by-department basis. The query will return a result set showing the name of each department and the total number of employees in each department.