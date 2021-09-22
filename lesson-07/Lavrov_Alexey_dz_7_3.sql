/* Lavrov Alexey. DZ-7. 
 * 3. (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities
 * (label, name). Поля from, to и label содержат английские названия городов, поле name — русское.
 * Выведите список рейсов flights с русскими названиями городов.
 * ==============================================================================================*/

/* Формат БД и таблиц

flights								cities

id	from		to					label		name
1	moscow		omsk				moscow		Москва
2	novgorod	kazan				irkutsk		Иркутск
3	irkutsk		moscow				novgorod	Новгород
4	omsk		irkutsk				kazan		Казань
5 	moscow		kazan				omsk		Омск
*/

-- создадим БД для наших нужд и наполним данными из ТЗ
-- БД небольшая, поэтому индексы создавать не будем

DROP DATABASE IF EXISTS flights;
CREATE DATABASE IF NOT EXISTS flights;

USE flights;

DROP TABLE IF EXISTS flights;
CREATE TABLE IF NOT EXISTS flights (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	fl_from VARCHAR(50) NOT NULL,
	fl_to VARCHAR(50) NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO flights VALUES
	(NULL,	'moscow', 'omsk'),
	(NULL,	'novgorod', 'kazan'),
	(NULL,	'irkutsk', 'moscow'),
	(NULL,	'omsk', 'irkutsk'),
	(NULL, 	'moscow', 'kazan');

DROP TABLE IF EXISTS cities;
CREATE TABLE IF NOT EXISTS cities (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	label VARCHAR(50) NOT NULL,
	name VARCHAR(50) NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO cities VALUES
	(NULL, 'moscow', 'Москва'),
	(NULL, 'irkutsk', 'Иркутск'),
	(NULL, 'novgorod', 'Новгород'),
	(NULL, 'kazan', 'Казань'),
	(NULL, 'omsk', 'Омск');

-- исходный вариант
SELECT * FROM flights;

-- вариант через подзапросы
SELECT 
	id,
	(SELECT name FROM cities WHERE label = flights.fl_from) AS flight_from,
	(SELECT name FROM cities WHERE label = flights.fl_to) AS flight_to
	FROM flights;
	
-- вариант через JOIN
SELECT 
	f.id,
	c1.name AS flight_from,
	c2.name AS flight_to
	FROM 
		flights f 
		JOIN cities c1 ON f.fl_from = c1.label
		JOIN cities c2 ON f.fl_to = c2.label
	ORDER BY f.id;