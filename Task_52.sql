-- Задание #52
INSERT INTO GoodTypes
SELECT MAX(good_type_id) + 1,
	'auto'
FROM GoodTypes
