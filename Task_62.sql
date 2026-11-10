-- Задание #62
SELECT domain,
	COUNT(*) AS count
FROM (
		SELECT SUBSTRING(
				email
				FROM '@([^@]+)$'
			) AS domain
		FROM users
	) AS domains_extracted
GROUP BY domain
ORDER BY count DESC,
	domain ASC;
