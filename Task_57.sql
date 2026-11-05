-- Задание #57
UPDATE Timepair
SET start_pair = start_pair + INTERVAL '30 minutes',
	end_pair = end_pair + INTERVAL '30 minutes'
