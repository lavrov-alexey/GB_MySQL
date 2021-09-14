/* Lavrov Alexey. DZ-5. 
 * 5.2.1. Подсчитайте средний возраст пользователей в таблице users
 * ================================================================*/

USE shop

-- высчитываем возраст пользователей в годах (как разницу в датах)
SELECT *, TIMESTAMPDIFF(YEAR, birthday_at, CURRENT_DATE()) AS age FROM users;

-- теперь можем по вычисленной колонке с возрастом посчитать среднее
SELECT 
	ROUND(AVG(TIMESTAMPDIFF(YEAR, birthday_at, CURRENT_DATE())), 2) 
	AS avg_users_age FROM users;