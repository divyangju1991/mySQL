SELECT * FROM employee;

Select salary from employee order by salary DESC LIMIT 2,1;
#5300.5

SELECT e.*, MAX(e.salary) from employee e GROUP BY e.department, e.id;

ALTER TABLE employee ADD column department VARCHAR(30);

SELECT e.* FROM employee e WHERE (e.department,e.salary) IN (SELECT e1.department, MAX(e1.salary) FROM employee e1 GROUP BY e1.department);
