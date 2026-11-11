-- Задание #66
SELECT r.home_type,
	r.address,
	COALESCE(SUM(rs.end_date::date - rs.start_date::date), 0) AS days,
	COALESCE(SUM(rs.total), 0) AS total_fee
FROM Rooms r
	LEFT JOIN Reservations rs ON rs.room_id = r.id
WHERE r.has_tv = true
	AND r.has_internet = true
	AND r.has_kitchen = true
	AND r.has_air_con = true
GROUP BY r.home_type,
	r.address
