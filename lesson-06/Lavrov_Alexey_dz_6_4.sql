/* Lavrov Alexey. DZ-6. 
 * 4. Определить кому больше поставили лайков (всего): мужчинам или женщинам.
 * =========================================================================*/

USE vk;

-- посчитаем общее кол-во лайков
SELECT COUNT(*) AS total_likes FROM likes;

-- посмотрим - сколько из них у нас лайков по видам
SELECT 
    COUNT(*) AS total,
    (SELECT target FROM likes_type_target WHERE id = lk.likes_type_target_id) AS likes_type_target
FROM likes lk 
GROUP BY likes_type_target WITH ROLLUP;

-- получаем user_id женщин
SELECT user_id FROM profiles WHERE gender = 'f';

-- находим все медиа женщин
SELECT * FROM media WHERE user_id IN 
	(SELECT user_id FROM profiles WHERE gender = 'f');
		
-- выберем все лайки, поставленные медиа женщин
SELECT *
    FROM likes
    WHERE
    likes_type_target_id =      -- лайки поставленные медиа вообще
        (SELECT id FROM likes_type_target WHERE target = 'media')
    AND
    likes_target_id IN          -- медиа женщин  
        (SELECT id FROM media WHERE user_id IN 
            (SELECT user_id FROM profiles WHERE gender = 'f')
        );
		
-- находим все сообщения женщин
SELECT * FROM messages 
    WHERE 
    -- сообщения к женщинам
    to_user_id IN (SELECT user_id FROM profiles WHERE gender = 'f') 
    OR 
    -- сообщения от женщин
    from_user_id IN (SELECT user_id FROM profiles WHERE gender = 'f');

-- выберем все лайки, поставленные сообщениям (полученным и отправленным) женщин
SELECT * FROM likes
    WHERE
    likes_type_target_id =          -- лайки поставленные сообщениям вообще
        (SELECT id FROM likes_type_target WHERE target = 'messages')
    AND
    likes_target_id IN              -- сообщения женщин
        (SELECT id FROM messages 
            WHERE 
            -- сообщения к женщинам
            to_user_id IN (SELECT user_id FROM profiles WHERE gender = 'f') 
            OR 
            -- сообщения от женщин
            from_user_id IN (SELECT user_id FROM profiles WHERE gender = 'f')
        );
        
        
-- из всех находим лайки, поставленные пользователям-женщинам
SELECT * FROM likes 
    WHERE 
    likes_type_target_id =         -- лайки поставленные пользователям вообще
        (SELECT id FROM likes_type_target WHERE target = 'users')  
    AND
    likes_target_id IN              -- пользователи-женщины
        (SELECT user_id FROM profiles WHERE gender = 'f');   


/*
 * Итого, общее кол-во лайков, которые получили пользователи-женщины
 * будет складываться из лайков собственно пользователям-женщинам, лайков их медиа
 * и лайков их сообщений (как отправленных, так и полученных). Все 3 части получены
 * выше - можем склеить их по вертикали через UNION, т.к. они все из 1 таблицы
 */

SELECT * FROM likes WHERE
    likes_type_target_id =      -- лайки поставленные медиа вообще
        (SELECT id FROM likes_type_target WHERE target = 'media')
    AND
    likes_target_id IN          -- медиа женщин  
        (SELECT id FROM media WHERE user_id IN 
            (SELECT user_id FROM profiles WHERE gender = 'f')
        )
UNION 
SELECT * FROM likes WHERE
    likes_type_target_id =          -- лайки поставленные сообщениям вообще
        (SELECT id FROM likes_type_target WHERE target = 'messages')
    AND
    likes_target_id IN              -- сообщения женщин
        (SELECT id FROM messages 
            WHERE 
            -- сообщения к женщинам
            to_user_id IN (SELECT user_id FROM profiles WHERE gender = 'f') 
            OR 
            -- сообщения от женщин
            from_user_id IN (SELECT user_id FROM profiles WHERE gender = 'f')
        )
UNION 
SELECT * FROM likes WHERE 
    likes_type_target_id =         -- лайки поставленные пользователям вообще
        (SELECT id FROM likes_type_target WHERE target = 'users')  
    AND
    likes_target_id IN              -- пользователи-женщины
        (SELECT user_id FROM profiles WHERE gender = 'f');

    
-- зададим переменную для пола, чтобы унифицировать запрос и подсчитаем лайки для женщин
SET @current_gender = 'f';
SELECT @current_gender;

-- =======================================================
-- Итого - общее количество лайков пользователям-женщинам
SET @total_female_likes = 
(SELECT COUNT(*) FROM
    (
    SELECT * FROM likes WHERE
    likes_type_target_id =      -- лайки поставленные медиа вообще
        (SELECT id FROM likes_type_target WHERE target = 'media')
    AND
    likes_target_id IN          -- медиа пользователей с текущим полом  
        (SELECT id FROM media WHERE user_id IN 
            (SELECT user_id FROM profiles WHERE gender = @current_gender)
        )
    UNION 
    SELECT * FROM likes WHERE
        likes_type_target_id =          -- лайки поставленные сообщениям вообще
            (SELECT id FROM likes_type_target WHERE target = 'messages')
        AND
        likes_target_id IN              -- сообщения пользователей с текущим полом
            (SELECT id FROM messages 
                WHERE 
                -- сообщения к пользователям с текущим полом
                to_user_id IN (SELECT user_id FROM profiles WHERE gender = @current_gender) 
                OR 
                -- сообщения от пользователей с текущим полом
                from_user_id IN (SELECT user_id FROM profiles WHERE gender = @current_gender)
            )
    UNION 
    SELECT * FROM likes WHERE 
        likes_type_target_id =         -- лайки поставленные пользователям вообще
            (SELECT id FROM likes_type_target WHERE target = 'users')  
        AND
        likes_target_id IN              -- пользователи с текущим полом
            (SELECT user_id FROM profiles WHERE gender = @current_gender)
    ) AS total_female_likes);

-- общее кол-во лайков женщинам составило
SELECT @total_female_likes;

-- =========================================================
-- теперь подсчитаем и сохраним в переменную лайки мужчинам

SET @current_gender = 'm';
SELECT @current_gender;

-- Итого - общее количество лайков пользователям-мужчинам
SET @total_male_likes = 
(SELECT COUNT(*) FROM
    (
    SELECT * FROM likes WHERE
    likes_type_target_id =      -- лайки поставленные медиа вообще
        (SELECT id FROM likes_type_target WHERE target = 'media')
    AND
    likes_target_id IN          -- медиа пользователей с текущим полом  
        (SELECT id FROM media WHERE user_id IN 
            (SELECT user_id FROM profiles WHERE gender = @current_gender)
        )
    UNION 
    SELECT * FROM likes WHERE
        likes_type_target_id =          -- лайки поставленные сообщениям вообще
            (SELECT id FROM likes_type_target WHERE target = 'messages')
        AND
        likes_target_id IN              -- сообщения пользователей с текущим полом
            (SELECT id FROM messages 
                WHERE 
                -- сообщения к пользователям с текущим полом
                to_user_id IN (SELECT user_id FROM profiles WHERE gender = @current_gender) 
                OR 
                -- сообщения от пользователей с текущим полом
                from_user_id IN (SELECT user_id FROM profiles WHERE gender = @current_gender)
            )
    UNION 
    SELECT * FROM likes WHERE 
        likes_type_target_id =         -- лайки поставленные пользователям вообще
            (SELECT id FROM likes_type_target WHERE target = 'users')  
        AND
        likes_target_id IN              -- пользователи с текущим полом
            (SELECT user_id FROM profiles WHERE gender = @current_gender)
    ) AS total_male_likes);
    
-- общее кол-во лайков мужчинам составило
SELECT @total_male_likes;


-- выведем результат - кому поставили лайков больше - мужчинам или женщинам?
SELECT CASE
    WHEN @total_female_likes > @total_male_likes 
        THEN CONCAT('According to the number of likes, women won with the score: ', 
            @total_female_likes, ' / ', @total_male_likes)
    WHEN @total_female_likes = @total_male_likes 
        THEN CONCAT('According to the number of likes of women and men, friendship won: ', 
            @total_female_likes, ' / ', @total_male_likes)
    WHEN @total_male_likes > @total_female_likes
        THEN CONCAT('According to the number of likes, men won with the score', 
            @total_male_likes, ' / ', @total_female_likes)
END AS result_likes_men_women;