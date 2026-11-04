-- Задание #48
SELECT c.name,
	COUNT(sic.id) AS count
FROM Class c
	JOIN Student_in_class sic ON sic.class = c.id
	JOIN Student s ON sic.student = s.id
GROUP BY c.id
HAVING COUNT(sic.id) > 0
ORDER BY COUNT(sic.id) DESC
