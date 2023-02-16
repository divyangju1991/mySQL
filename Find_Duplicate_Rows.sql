SELECT *, COUNT(id)
          FROM employee
          GROUP BY id
          HAVING COUNT(id)>1;