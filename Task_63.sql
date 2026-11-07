-- Задание #63
SELECT CONCAT(last_name, '.', LEFT(first_name, 1), '.') AS name
FROM Student
ORDER BY name
