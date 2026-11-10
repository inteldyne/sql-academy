-- Задание #64
SELECT EXTRACT(
		YEAR
		FROM start_date
	) AS year,
	EXTRACT(
		MONTH
		FROM start_date
	) AS month,
	COUNT(id) AS amount
FROM Reservations
GROUP BY year,
	month
ORDER BY year,
	month
