-- where 2 is N-1
SELECT salary FROM employee e1 WHERE 2 = (SELECT COUNT(DISTINCT salary) FROM employee e2 WHERE e2.salary > e1.salary);
