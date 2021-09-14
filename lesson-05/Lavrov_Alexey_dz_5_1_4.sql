/* Lavrov Alexey. DZ-5. 
 * 5.1.4. (по желанию) Из таблицы users необходимо извлечь пользователей, 
 * родившихся в августе и мае. 
 * Месяцы заданы в виде списка английских названий ('may', 'august')
 * ======================================================================*/

USE shop

-- смотрим - что у нас лежит в таблице в принципе
SELECT * FROM users;

-- выдергиваем название месяца из ДР
SELECT birthday_at, DATE_FORMAT(birthday_at, '%M') AS month_bd FROM users;

-- теперь перегоняем назв. месяца в нижний регистр (как по ТЗ) и отбираем нужное
SELECT *, 
	LCASE(DATE_FORMAT(birthday_at, '%M')) AS other_bd
	FROM users 
	HAVING other_bd LIKE 'may'
		OR other_bd LIKE 'august';