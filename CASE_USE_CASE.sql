CREATE TABLE relation (cid INT, pid INT);
CREATE TABLE people (id INT, NAME VARCHAR(6), gender VARCHAR(1));

INSERT INTO relation (cid, pid) VALUES (101, 202), (566, 322), (875, 345);

INSERT INTO people (id, NAME, gender) 
         VALUES (101, 'Riya', 'F'),
         (566, 'Aman', 'M'),
         (202, 'Rakesh', 'M'),
         (875, 'lucky', 'M'),
         (202, 'Reena', 'F'),
         (322, 'Raina', 'F'),
         (345, 'Rohit', 'M'),
         (322, 'Mohit', 'M'),
         (345, 'Meena', 'F');   

SELECT c.name Child, 
       MAX(CASE WHEN p.gender = 'F' THEN p.name END) Mother, 
       MAX(CASE WHEN p.gender = 'M' THEN p.name END) Father
FROM relation r
INNER JOIN people c ON c.id = r.cid
INNER JOIN people p ON p.id = r.pid
GROUP BY r.cid, c.name;


       