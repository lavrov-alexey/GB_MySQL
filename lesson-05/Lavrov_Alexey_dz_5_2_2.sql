/* Lavrov Alexey. DZ-5. 
 * 5.2.2. Подсчитайте количество дней рождения, которые приходятся 
 * на каждый из дней недели. Следует учесть, что необходимы дни недели 
 * текущего года, а не года рождения.
 * ================================================================*/

USE shop

-- смотрим дни недели в дату рождения
SELECT
	birthday_at,
	DATE_FORMAT(birthday_at, '%w - %W') AS day_of_week,
	DAYNAME(birthday_at) AS variant
	FROM users;

-- вычленяем месяц и день из ДР и формируем дату ДР в текущем году
SELECT
	birthday_at,
	CONCAT(YEAR(CURRENT_DATE()), DATE_FORMAT(birthday_at, '-%m-%d')) 
		AS current_bd
	FROM users;
	
-- теперь можем получить день недели ДР в текущем году
SELECT
	birthday_at,
	CONCAT(YEAR(CURRENT_DATE()), DATE_FORMAT(birthday_at, '-%m-%d')) 
		AS 'current_bd',
	DATE_FORMAT(CONCAT(YEAR(CURRENT_DATE()), 
		DATE_FORMAT(birthday_at, '-%m-%d')), '%W') AS curr_day_week_bd 
	FROM users;

-- теперь группируем это дело по дням недели и считаем кол-во ДР
SELECT
	birthday_at,
	CONCAT(YEAR(CURRENT_DATE()), DATE_FORMAT(birthday_at, '-%m-%d')) 
		AS 'current_bd',
	DATE_FORMAT(CONCAT(YEAR(CURRENT_DATE()), 
		DATE_FORMAT(birthday_at, '-%m-%d')), '%W') AS curr_day_week_bd,
	COUNT(*) AS cnt_of_bd
	FROM users 
	GROUP BY curr_day_week_bd;