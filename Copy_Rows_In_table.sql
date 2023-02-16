CREATE TABLE empDetails AS SELECT * FROM employee;

CREATE TABLE empSalary AS SELECT id, salary FROM employee;

#Only Schema Copy
CREATE TABLE empInfo AS SELECT * FROM employee WHERE 3=4;
