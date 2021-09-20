/* Lavrov Alexey. DZ-6. 
 * 3. Определить кто больше поставил лайков (всего): мужчины или женщины.
 * ======================================================================*/

USE vk;

-- посчитаем общее кол-во лайков
SELECT COUNT(*) AS total_likes FROM likes;

-- получаем user_id женщин
SELECT user_id FROM profiles WHERE gender = 'f';

-- получаем все лайки, поставленные женщинами
SELECT * FROM likes WHERE from_user_id IN
    (SELECT user_id FROM profiles WHERE gender = 'f');

-- находим их количество и сохраняем
SET @cnt_likes_women = 
   (SELECT COUNT(*) FROM likes WHERE from_user_id IN
		(SELECT user_id FROM profiles WHERE gender = 'f'));

SELECT @cnt_likes_women;

-- теперь аналогично - считаем и сохраняем для мужчин
SET @cnt_likes_men = 
   (SELECT COUNT(*) FROM likes WHERE from_user_id IN
		(SELECT user_id FROM profiles WHERE gender = 'm'));

SELECT @cnt_likes_men;

-- выведем результат - кто поставил больше лайков - мужчины или женщины?
SELECT CASE
    WHEN @cnt_likes_women > @cnt_likes_men 
        THEN CONCAT('More likes were put by women: ', 
            @cnt_likes_women, ' / ', @cnt_likes_men)
    WHEN @cnt_likes_women = @cnt_likes_men 
        THEN CONCAT('Likes are equal, friendship won: ', 
            @cnt_likes_women, ' / ', @cnt_likes_men)
    WHEN @cnt_likes_women < @cnt_likes_men
        THEN CONCAT('More likes were put by men: ', 
            @cnt_likes_men, ' / ', @cnt_likes_women)
END AS result_likes_men_women;
