#Find all clients
SELECT * 
FROM client;

#Find all employees ordered by salary
SELECT * 
FROM employee
ORDER BY salary;

#Find all employees ordered by sex then name
SELECT * 
FROM employee
ORDER BY sex, first_name, last_name;

#Find the first 5 employees in the table
SELECT * 
FROM employee
LIMIT 5;

#Find the first and last names of all employees
SELECT first_name, last_name
FROM employee;

#Find out all the different genders
SELECT DISTINCT sex
FROM employee;

#Find the number of employees
SELECT COUNT(emp_id)
FROM employee;

#Find the average of all employee's salaries
SELECT AVG(salary)
FROM employee;

#Find any clients who are an LLC
SELECT *
FROM client
WHERE client_name LIKE '%LLC';

#Find any employee born in October
SELECT * 
FROM employee
WHERE birth_date LIKE '____-10%';

#Find any clients who are schools
SELECT * 
FROM client
WHERE client_name LIKE '%school%';

#Find a list of employee and branch names
SELECT first_name
FROM employee
UNION 
SELECT branch_name
FROM branch;

#Find a list of all clients and branch suppliers' names
SELECT client_name, client.branch_id
FROM client
UNION 
SELECT supplier_name, branch_supplier.branch_id
FROM branch_supplier;

#Find a list of all money spent or earned by the company
SELECT employee.salary
FROM employee
UNION
SELECT total_sales
FROM works_with;

#Find all branches and the names of their managers
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;

#Nested Queries
#Find names of all employees who have sold over 30,000 to a single client
SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (
	SELECT works_with.emp_id
	FROM works_with
	WHERE total_sales > 30000
);

#Find all clients who are handled by the branch that Michael Scott manages
#Assume you know Michael's ID

SELECT client.client_name
FROM client
WHERE client.branch_id = (
    SELECT branch.branch_id
	FROM branch
	WHERE branch.mgr_id = 102
    LIMIT 1
);


