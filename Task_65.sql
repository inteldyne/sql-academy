-- Задание #65
SELECT rs.room_id,
	FLOOR(AVG(rating)) AS rating
FROM Reservations rs
	JOIN Reviews rv ON rv.reservation_id = rs.id
GROUP BY rs.room_id;
