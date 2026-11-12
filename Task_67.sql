-- Задание #67
SELECT CONCAT(
		TO_CHAR(time_out, 'HH24:MI, FMDD.FMMM'),
		' - ',
		TO_CHAR(time_in, 'HH24:MI, FMDD.FMMM')
	) AS flight_time
FROM Trip;
