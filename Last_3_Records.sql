SELECT * FROM (
					SELECT * FROM employee ORDER BY id DESC LIMIT 3
					)
				tmp ORDER BY id ASC;