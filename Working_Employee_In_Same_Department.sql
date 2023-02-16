SELECT DISTINCT e.id, e.phone_no, e.department
FROM employee e, employee e1
WHERE e.department = e1.department
AND e.id != e1.id;