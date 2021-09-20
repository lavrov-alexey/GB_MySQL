/* Lavrov Alexey. DZ-6. 
 * 2. Подсчитать общее количество лайков, которые получили пользователи младше 10 лет.
 * =================================================================================*/

USE vk;

-- глянем для начала - что у нас лежит в табл. likes
DESCRIBE likes;
SELECT * FROM likes LIMIT 10;

-- подтянем сюда информацию по типам лайков 
SELECT 
    id,
    (SELECT target FROM likes_type_target WHERE id = likes.likes_type_target_id) AS likes_type_target,
    (SELECT name FROM likes_types lt WHERE id = likes.likes_types_id) AS likes_types,
    (SELECT CONCAT(last_name, ' ', first_name) FROM users WHERE id = likes.from_user_id) AS from_user
    FROM likes LIMIT 10;

-- посчитаем общее кол-во лайков
SELECT COUNT(*) AS total_likes FROM likes;

-- посмотрим - сколько из них у нас лайков по типам
SELECT 
    COUNT(*) AS total,
    (SELECT name FROM likes_types lt WHERE id = likes.likes_types_id) AS likes_types
FROM likes
GROUP BY likes_types WITH ROLLUP;

-- посмотрим - сколько из них у нас лайков по видам
SELECT 
    COUNT(*) AS total,
    (SELECT target FROM likes_type_target WHERE id = lk.likes_type_target_id) AS likes_type_target
FROM likes lk 
GROUP BY likes_type_target WITH ROLLUP;

-- находим пользователей младше 10 лет
SELECT 
	TIMESTAMPDIFF(YEAR, birthday, current_date()) AS age
    FROM profiles HAVING age < 10;	

/* Т.к. при генерации данных для соц. сети, я исходил из того,
 * что возраст участников соц. сети должен быть более 15 лет,
 * то для начала заведем несколько пользователей младше 10 лет. */

-- выберем 3х случайных пользователей из базы
SELECT id FROM users ORDER BY RAND() LIMIT 3;

-- генератор возраста до 10 лет и новый ДР
SELECT 
	FLOOR(RAND() * 10) AS age,
	DATE(NOW() - INTERVAL FLOOR(RAND() * 10) YEAR) AS new_bd;

-- выберем 3х случайных пользователей
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

-- снова проверяем наличие пользователей младше 10 лет
SELECT 
	*,
	TIMESTAMPDIFF(YEAR, birthday, current_date()) AS age
FROM profiles HAVING age < 10;

-- теперь выгрызаем только их id
SELECT 
	user_id
FROM profiles 
WHERE TIMESTAMPDIFF(YEAR, birthday, CURRENT_DATE()) < 10;

-- находим все медиа юзеров, младше 10 лет
SELECT *
	FROM media WHERE user_id IN 
	(SELECT user_id FROM profiles 
		WHERE TIMESTAMPDIFF(YEAR, birthday, CURRENT_DATE()) < 10
	);
		
-- теперь выберем все лайки, поставленные медиа пользователей > 10 лет
SELECT *
    FROM likes
    WHERE
    likes_type_target_id =      -- лайки поставленные медиа вообще
        (SELECT id FROM likes_type_target WHERE target = 'media')
    AND
    likes_target_id IN          -- медиа пользователей > 10  
        (SELECT id FROM media WHERE user_id IN 
            (SELECT user_id FROM profiles 
                WHERE TIMESTAMPDIFF(YEAR, birthday, CURRENT_DATE()) < 10
            )
        );
        
		
-- находим все сообщения юзеров > 10 лет
SELECT *
    FROM messages 
        WHERE 
        (to_user_id IN (SELECT user_id FROM profiles    -- сообщения к пользователям > 10 
            WHERE TIMESTAMPDIFF(YEAR, birthday, CURRENT_DATE()) < 10))
        OR 
        (from_user_id IN (SELECT user_id FROM profiles  -- сообщения от пользователей > 10
            WHERE TIMESTAMPDIFF(YEAR, birthday, CURRENT_DATE()) < 10));

-- выберем все лайки, поставленные сообщениям (полученным и отправленным) пользователей > 10
SELECT * FROM likes
    WHERE
    likes_type_target_id =          -- лайки поставленные сообщениям вообще
        (SELECT id FROM likes_type_target WHERE target = 'messages')
    AND
    likes_target_id IN              -- сообщения пользователей > 10
        (SELECT id FROM messages 
        WHERE 
        (to_user_id IN (SELECT user_id FROM profiles    -- сообщения к пользователям > 10 
            WHERE TIMESTAMPDIFF(YEAR, birthday, CURRENT_DATE()) < 10))
        OR 
        (from_user_id IN (SELECT user_id FROM profiles  -- сообщения от пользователей > 10
            WHERE TIMESTAMPDIFF(YEAR, birthday, CURRENT_DATE()) < 10)));
        
        
-- из всех находим лайки, поставленные пользователям > 10 лет
SELECT * FROM likes 
    WHERE 
    likes_type_target_id =         -- лайки поставленные пользователям вообще
        (SELECT id FROM likes_type_target WHERE target = 'users')  
    AND
    likes_target_id IN              -- пользователи, младше 10 лет
        (SELECT user_id FROM profiles 
        WHERE TIMESTAMPDIFF(YEAR, birthday, CURRENT_DATE()) < 10);   


/*
 * Итого, общее кол-во лайков, которые получили пользователи, младше 10 лет
 * будет складываться из лайков собственно этим пользователям, лайков их медиа
 * и лайков их сообщений (как отправленных, так и полученных). Все 3 части получены
 * выше - можем склеить их по вертикали через UNION, т.к. они все из 1 таблицы
 */

-- сами записи    
SELECT * FROM likes
    WHERE
    likes_type_target_id =      -- лайки поставленные медиа вообще
        (SELECT id FROM likes_type_target WHERE target = 'media')
    AND
    likes_target_id IN          -- медиа пользователей > 10  
        (SELECT id FROM media WHERE user_id IN 
            (SELECT user_id FROM profiles 
                WHERE TIMESTAMPDIFF(YEAR, birthday, CURRENT_DATE()) < 10
            )
        )
UNION 
SELECT * FROM likes
    WHERE
    likes_type_target_id =          -- лайки поставленные сообщениям вообще
        (SELECT id FROM likes_type_target WHERE target = 'messages')
    AND
    likes_target_id IN              -- сообщения пользователей > 10
        (SELECT id FROM messages 
        WHERE 
        (to_user_id IN (SELECT user_id FROM profiles    -- сообщения к пользователям > 10 
            WHERE TIMESTAMPDIFF(YEAR, birthday, CURRENT_DATE()) < 10))
        OR 
        (from_user_id IN (SELECT user_id FROM profiles  -- сообщения от пользователей > 10
            WHERE TIMESTAMPDIFF(YEAR, birthday, CURRENT_DATE()) < 10)))
UNION 
SELECT * FROM likes 
    WHERE 
    likes_type_target_id =         -- лайки поставленные пользователям вообще
        (SELECT id FROM likes_type_target WHERE target = 'users')  
    AND
    likes_target_id IN              -- пользователи, младше 10 лет
        (SELECT user_id FROM profiles 
        WHERE TIMESTAMPDIFF(YEAR, birthday, CURRENT_DATE()) < 10);

    
    
-- Итого - общее количество лайков пользователям, младше 10 лет

SELECT COUNT(*) FROM
    (SELECT * FROM likes
        WHERE
        likes_type_target_id =      -- лайки поставленные медиа вообще
            (SELECT id FROM likes_type_target WHERE target = 'media')
        AND
        likes_target_id IN          -- медиа пользователей > 10  
            (SELECT id FROM media WHERE user_id IN 
                (SELECT user_id FROM profiles 
                    WHERE TIMESTAMPDIFF(YEAR, birthday, CURRENT_DATE()) < 10
                )
            )
    UNION
    SELECT * FROM likes
        WHERE
        likes_type_target_id =          -- лайки поставленные сообщениям вообще
            (SELECT id FROM likes_type_target WHERE target = 'messages')
        AND
        likes_target_id IN              -- сообщения пользователей > 10
            (SELECT id FROM messages 
            WHERE 
            (to_user_id IN (SELECT user_id FROM profiles    -- сообщения к пользователям > 10 
                WHERE TIMESTAMPDIFF(YEAR, birthday, CURRENT_DATE()) < 10))
            OR 
            (from_user_id IN (SELECT user_id FROM profiles  -- сообщения от пользователей > 10
                WHERE TIMESTAMPDIFF(YEAR, birthday, CURRENT_DATE()) < 10)))
    UNION
    SELECT * FROM likes 
        WHERE 
        likes_type_target_id =         -- лайки поставленные пользователям вообще
            (SELECT id FROM likes_type_target WHERE target = 'users')  
        AND
        likes_target_id IN              -- пользователи, младше 10 лет
            (SELECT user_id FROM profiles 
            WHERE TIMESTAMPDIFF(YEAR, birthday, CURRENT_DATE()) < 10)
    ) AS total_count;

/*========== ЛИРИЧЕСКОЕ ОТСТУПЛЕНИЕ ==========*/

-- проверяем - есть ли у нас в табл. likes ссылки на отсутствующих пользователей
SELECT * FROM likes 
	WHERE from_user_id NOT IN (SELECT id FROM users);

-- сделаем выбор случайного существующего id юзера из таблицы
SELECT id FROM users ORDER BY RAND() LIMIT 1;

-- теперь установим для все найденных likes, отсылающихся на несуществующих
-- юзеров, любой случайный id из существующих юзеров
UPDATE likes 
	SET from_user_id = (SELECT id FROM users ORDER BY RAND() LIMIT 1)		
	WHERE from_user_id NOT IN (SELECT id FROM users);
