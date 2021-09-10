/*4.3. Написать скрипт, отмечающий несовершеннолетних пользователей как неактивных 
 * (поле is_active = false). Предварительно добавить такое поле в таблицу profiles 
 * со значением по умолчанию = true (или 1)*/

USE vk;

-- добавляем в таблицу профилей поле is_active
ALTER TABLE profiles ADD COLUMN is_active BOOL NOT NULL DEFAULT TRUE;
-- проверим инфу в таблице
DESCRIBE profiles;
SELECT * FROM profiles;

/*
 * ПОДВОДКА К ВЫЧИСЛЕНИЮ
 */

-- текущая дата
SELECT CURRENT_DATE();

-- текущий год
SELECT YEAR(CURRENT_DATE());

-- считаем разницу с текущим годом
SELECT birthday, (YEAR(CURRENT_DATE()) - YEAR(birthday)) AS delta FROM profiles;

/* MySQL функция RIGHT извлекает подстроку из строки, начиная с самого правого символа.
 * RIGHT( string, number_of_characters )*/
-- получаем текущие месяц и день (откусываем 5 символов справа)
SELECT RIGHT(CURRENT_DATE(), 5);

/* Cравниваем как строки текущие месяц и день
 * получаем или 1 (TRUE), если "дата рождения" (месяц год) в этом году уже была (или сегодня)
 * или 0 (FALSE), если "дата рождения" еще не наступала в этом году */
SELECT birthday, (RIGHT(CURRENT_DATE(), 5) < RIGHT(birthday, 5)) AS is_bd FROM profiles;

-- Для проверки - запишем в профили запись со вчерашним, сегодняшним и завтрашним днями рождения
UPDATE profiles SET birthday = (CURRENT_DATE() - INTERVAL 18 YEAR - INTERVAL 1 DAY) WHERE user_id = 1;
UPDATE profiles SET birthday = (CURRENT_DATE() - INTERVAL 18 YEAR) WHERE user_id = 2;
UPDATE profiles SET birthday = (CURRENT_DATE() - INTERVAL 18 YEAR + INTERVAL 1 DAY) WHERE user_id = 3;

/* В итоге - считаем возраст, как разницу м/д текущим годом и годом рождения пользователя и минус
 * 1, если день рождения уже прошел (или сегодня) */
SELECT
    user_id, 
    birthday,
    (YEAR(CURRENT_DATE()) - YEAR(birthday)) - (RIGHT(CURRENT_DATE(), 5) < RIGHT(birthday, 5)) AS 'age'
    FROM profiles ORDER BY age;

/* 2й вариант - смысл тот же, но сравниваем месяц и день рождения с текущим не как строки, а как даты
 * MySQL функция DATE_FORMAT форматирует дату по заданной маске.
 * DATE_FORMAT(date, format_mask)
 * %m   Название месяца в виде числового значения (от 00 до 12)
 * %d   День месяца в виде числового значения (от 01 до 31) */

SELECT
    user_id, birthday,
    (
        (YEAR(CURRENT_DATE) - YEAR(birthday)) -                             -- step 1
        (DATE_FORMAT(CURRENT_DATE, '%m%d') < DATE_FORMAT(birthday, '%m%d')) -- step 2
    ) AS age
    FROM profiles ORDER BY age;

-- ????????????????????????????????????????????????????????????????????????????
   /* Теперь мы можем проапдейтить в таблице поле is_active по условию, если возраст на сегодня меньше 18 
 * Однако, получаем ошибку: SQL Error [1093] [HY000]: You can't specify target table 'profiles' for update in FROM clause
 * Но я так и не понял - почему? Можете пояснить - что не так?*/

UPDATE profiles 
    SET is_active = FALSE
    WHERE
        (SELECT (
			(YEAR(CURRENT_DATE) - YEAR(birthday)) -
    		(DATE_FORMAT(CURRENT_DATE, '%m%d') < DATE_FORMAT(birthday, '%m%d'))
    		)  < 18
			FROM profiles);
-- ????????????????????????????????????????????????????????????????????????????
			
/* 3-й вариант - через функцию TIMESTAMPDIFF(interval, date1, date2) 
 * функция вычисляет разницу между датами date2 и date1 в единицах, 
 * указанных в параметре interval. 
 * Возможные значения параметра interval:
 * FRAC_SECOND - микросекунды
 * SECOND - секунды
 * MINUTE - минуты
 * HOUR - часы
 * DAY - дни
 * WEEK - недели
 * MONTH - месяцы
 * QUARTER - кварталы
 * YEAR - годы*/

-- "взводим" обратно поле после экспериментов
UPDATE profiles SET is_active = TRUE;

-- проверяем корректность формулы по вычислению возраста (особенно смотрим на user_id 1-3)
SELECT user_id, birthday, (TIMESTAMPDIFF(YEAR, birthday, CURRENT_DATE())) AS 'age' FROM profiles;

-- делаем обновление поля активности в FALSE для пользователей, не достигших 18 лет
UPDATE profiles 
	SET is_active = FALSE
	WHERE 
		TIMESTAMPDIFF(YEAR, birthday, CURRENT_DATE()) < 18;

-- проверяем - тех пользователей, которым выставлен флаг "не активен"	
SELECT *, (TIMESTAMPDIFF(YEAR, birthday, CURRENT_DATE())) AS 'age' FROM profiles WHERE is_active = FALSE;

