-- Задание №50
SELECT FLOOR(
		(
			SELECT COUNT(id)
			FROM Student
			WHERE EXTRACT(
					YEAR
					FROM birthday
				) = '2000'
		) * 100.0 / COUNT(id)
	) AS percent
FROM Student
