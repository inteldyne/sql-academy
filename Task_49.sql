-- Task #49

SELECT ROUND(
		COUNT(student) * 100.0 / (
			SELECT COUNT(student)
			FROM Student_in_class
		),
		4
	) AS percent
FROM Student_in_class sic
	JOIN Class c ON sic.class = c.id
WHERE name = '10 A';

-- or
SELECT ROUND(
		(
			SELECT COUNT(*)
			FROM Student_in_class
			WHERE class IN (
					SELECT id
					FROM Class
					WHERE name = '10 A'
				)
		) * 100.0 / COUNT(*),
		4
	) AS percent
FROM Student_in_class;
