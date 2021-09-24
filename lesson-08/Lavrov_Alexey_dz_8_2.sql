/* Lavrov Alexey. DZ-8. 
 * 2. Подсчитать общее количество лайков, которые получили пользователи младше 10 лет.
 * =================================================================================*/

USE vk;

-- глянем для начала - что у нас лежит в табл. likes
DESCRIBE likes;
SELECT * FROM likes LIMIT 10;

-- соединяем данные из 4 таблиц
SELECT
	l.id,
	ltt.target,
	lt.name,
	CONCAT(u.last_name, ' ', u.first_name) AS name
	FROM 
		likes l 
		JOIN likes_type_target ltt ON l.likes_type_target_id = ltt.id
		JOIN likes_types lt ON l.likes_types_id = lt.id 
		JOIN users u ON l.from_user_id = u.id
	LIMIT 10;

-- находим пользователей младше 10 лет
SELECT 
	TIMESTAMPDIFF(YEAR, birthday, CURRENT_DATE()) AS age
    FROM profiles HAVING age < 10;	

/* Т.к. при генерации данных для соц. сети, я исходил из того,
 * что возраст участников соц. сети должен быть более 15 лет,
 * то для начала заведем несколько пользователей младше 10 лет. */

-- выбор 3х случайных пользователей из базы
SELECT id FROM users ORDER BY RAND() LIMIT 3;

-- генератор возраста до 10 лет и новый ДР
SELECT 
	FLOOR(RAND() * 10) AS age,
	DATE(NOW() - INTERVAL FLOOR(RAND() * 10) YEAR) AS new_bd;

-- выберем 3х случайных пользователей и сгенерим новые ДР
SELECT 
	user_id,
	birthday AS old_bd, 
	DATE(NOW() - INTERVAL FLOOR(RAND() * 10) YEAR) AS new_bd
FROM profiles ORDER BY RAND() LIMIT 3;

-- а теперь - изменим дни рождения
UPDATE profiles
	SET birthday = DATE(NOW() - INTERVAL FLOOR(RAND() * 10) YEAR)
	WHERE user_id = 
	   (SELECT id FROM users ORDER BY RAND() LIMIT 1);

-- снова проверяем наличие пользователей > 10
SELECT 
	*,
	TIMESTAMPDIFF(YEAR, birthday, current_date()) AS age
FROM profiles HAVING age < 10;


-- находим лайки, поставленные самим пользователям > 10
SELECT 
	l.id AS likes_id,
	p.user_id,
	ltt.target AS likes_to,
	p.birthday AS bd_usr_lower10
	FROM likes l
		JOIN likes_type_target ltt ON ltt.id = l.likes_type_target_id
		JOIN profiles p ON p.user_id = l.likes_target_id 
	WHERE ltt.target = 'users' AND 
		TIMESTAMPDIFF(YEAR, p.birthday, CURRENT_DATE()) < 10;

-- теперь можем получить кол-во лайков, поставленных самим пользователям > 10
SET @cnt_likes_users_lower10 = 
(SELECT 
	COUNT(l.id) AS cnt_likes_users_lower10
	FROM likes l
		JOIN likes_type_target ltt ON ltt.id = l.likes_type_target_id
		JOIN profiles p ON p.user_id = l.likes_target_id 
	WHERE ltt.target = 'users' AND 
		TIMESTAMPDIFF(YEAR, p.birthday, CURRENT_DATE()) < 10);

SELECT @cnt_likes_users_lower10;
	
-- находим лайки, поставленные медиа пользователей > 10
SELECT 
	l.id AS likes_id,
	ltt.target AS likes_to,
	md.id AS media_id,
	md.user_id AS whom_media,
	p.user_id AS whom_user_id,
	p.birthday AS whom_bd
	FROM likes l
		JOIN likes_type_target ltt ON ltt.id = l.likes_type_target_id
		JOIN media md ON md.id = l.likes_target_id
		JOIN profiles p ON p.user_id = md.user_id 
	WHERE ltt.target = 'media' AND 
		TIMESTAMPDIFF(YEAR, p.birthday, CURRENT_DATE()) < 10;

-- теперь получаем кол-во лайков, поставленных медиа пользователей > 10
SET @cnt_likes_media_users_lower10 = 
(SELECT 
	COUNT(l.id) AS cnt_likes_media_users_lower10
	FROM likes l
		JOIN likes_type_target ltt ON ltt.id = l.likes_type_target_id
		JOIN media md ON md.id = l.likes_target_id
		JOIN profiles p ON p.user_id = md.user_id 
	WHERE ltt.target = 'media' AND 
		TIMESTAMPDIFF(YEAR, p.birthday, CURRENT_DATE()) < 10);

SELECT @cnt_likes_media_users_lower10;
	
	
-- находим лайки поставленные сообщениям 
-- (полученным и отправленным) пользователей > 10
SELECT 
	l.id AS likes_id,
	ltt.target AS likes_to,
	msg.id AS msg_id,
	msg.from_user_id AS msg_from,
	msg.to_user_id AS msg_to, 
	p.user_id AS p_user_id,
	p.birthday AS p_bd
	FROM likes l
		JOIN likes_type_target ltt ON ltt.id = l.likes_type_target_id
		JOIN messages msg ON msg.id = l.likes_target_id
		JOIN profiles p ON (p.user_id = msg.from_user_id OR p.user_id = msg.to_user_id)
	WHERE ltt.target = 'messages' AND 
		TIMESTAMPDIFF(YEAR, p.birthday, CURRENT_DATE()) < 10;

-- получаем ко-во лайков, поставленных сообщениям (полученным и
-- отправленным) пользователей > 10
SET @cnt_likes_messages_users_lower10 = 
(SELECT 
	COUNT(l.id) AS cnt_likes_messages_users_lower10
	FROM likes l
		JOIN likes_type_target ltt ON ltt.id = l.likes_type_target_id
		JOIN messages msg ON msg.id = l.likes_target_id
		JOIN profiles p ON (p.user_id = msg.from_user_id OR p.user_id = msg.to_user_id)
	WHERE ltt.target = 'messages' AND 
		TIMESTAMPDIFF(YEAR, p.birthday, CURRENT_DATE()) < 10);

SELECT @cnt_likes_messages_users_lower10;
	
 
/* Можем получить итог в виде суммы лайков пользователям младше 10 лет, полученных
 * самими этими пользователями, файлами и сообщениями (принятыми/отправленными)
 * этих пользователей */
SELECT 
	(@cnt_likes_users_lower10 
	+ @cnt_likes_media_users_lower10 
	+ @cnt_likes_messages_users_lower10) AS total_likes_users_lower10;
	
-- попробуем уместить теперь весь отбор по пользователям, их файлам и сообщениям в 1 запрос
-- совсем без подзапросов не придумал как сделать, подзапросом вытаскиваю только id пользователей > 10
SELECT *
FROM
	likes l
	JOIN likes_type_target ltt ON l.likes_type_target_id = ltt.id 
	JOIN profiles p ON l.likes_target_id = p.user_id
	JOIN media md ON l.likes_target_id = md.id
	JOIN messages msg ON l.likes_target_id = msg.id
WHERE
	-- отбираем лайки пользователям > 10
	(ltt.target = 'users' AND TIMESTAMPDIFF(YEAR, p.birthday, CURRENT_DATE()) < 10) 
	OR
	-- отбираем лайки файлам пользователей > 10
	(ltt.target = 'media' AND md.user_id IN
		(SELECT user_id FROM profiles 
			WHERE TIMESTAMPDIFF(YEAR, birthday, current_date()) < 10))
	OR
	-- отбираем лайки сообщениям пользователей > 10
	(ltt.target = 'messages' 
		AND (msg.from_user_id IN
				(SELECT user_id FROM profiles 
					WHERE TIMESTAMPDIFF(YEAR, birthday, current_date()) < 10)
			OR
			msg.to_user_id IN
				(SELECT user_id FROM profiles 
					WHERE TIMESTAMPDIFF(YEAR, birthday, current_date()) < 10)
			)
	);
	
-- ну и собственно подсчет кол-ва в 1 запросе
SELECT COUNT(l.id) AS total_likes_users_lower10
FROM
	likes l
	JOIN likes_type_target ltt ON l.likes_type_target_id = ltt.id 
	JOIN profiles p ON l.likes_target_id = p.user_id
	JOIN media md ON l.likes_target_id = md.id
	JOIN messages msg ON l.likes_target_id = msg.id
WHERE
	-- отбираем лайки пользователям > 10
	(ltt.target = 'users' AND TIMESTAMPDIFF(YEAR, p.birthday, CURRENT_DATE()) < 10) 
	OR
	-- отбираем лайки файлам пользователей > 10
	(ltt.target = 'media' AND md.user_id IN
		(SELECT user_id FROM profiles 
			WHERE TIMESTAMPDIFF(YEAR, birthday, current_date()) < 10))
	OR
	-- отбираем лайки сообщениям пользователей > 10
	(ltt.target = 'messages' 
		AND (msg.from_user_id IN
				(SELECT user_id FROM profiles 
					WHERE TIMESTAMPDIFF(YEAR, birthday, current_date()) < 10)
			OR
			msg.to_user_id IN
				(SELECT user_id FROM profiles 
					WHERE TIMESTAMPDIFF(YEAR, birthday, current_date()) < 10)
			)
	);