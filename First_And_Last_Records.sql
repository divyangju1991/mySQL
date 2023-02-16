SELECT * FROM employee
			WHERE id = (
					SELECT MIN(id) FROM employee
			);
			
SELECT * FROM employee
			WHERE id = (
					SELECT MAX(id) FROM employee
			);