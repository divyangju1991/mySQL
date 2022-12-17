DESC employee;
SELECT * FROM employee;

DELETE FROM employee;
INSERT INTO employee(id, phone_no) VALUES(1, "5555555"), (1, "566666666"), (2, "566666660"), (2, "566666661"), (2, "566666662"), (2, "566666663");


SELECT id, COUNT(phone_no) FROM employee GROUP BY id;

