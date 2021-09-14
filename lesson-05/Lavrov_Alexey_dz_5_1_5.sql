/* Lavrov Alexey. DZ-5. 
 * 5.1.5. (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса.
 * SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
 * Отсортируйте записи в порядке, заданном в списке IN.
 * ============================================================================*/

USE shop

SELECT * FROM catalogs WHERE id IN (5, 1, 2)
	ORDER BY id = 2, id = 1, id = 5;