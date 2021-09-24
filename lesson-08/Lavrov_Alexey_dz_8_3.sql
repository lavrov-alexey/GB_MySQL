/* Lavrov Alexey. DZ-8. 
 * 3. Определить кто больше поставил лайков (всего): мужчины или женщины.
 * ======================================================================*/

USE vk;

-- выбираем лайки, поставленные женщинами
SET @cnt_likes_women =
(SELECT COUNT(l.id) FROM likes l
    JOIN profiles p ON l.from_user_id = p.user_id
    JOIN users u ON l.from_user_id =u.id
    WHERE gender = 'f'
    ORDER BY l.id); 
    
-- аналогично - выбираем лайки, поставленные мужчинами
SET @cnt_likes_men =
(SELECT COUNT(l.id) FROM likes l
    JOIN profiles p ON l.from_user_id = p.user_id
    JOIN users u ON l.from_user_id =u.id
    WHERE gender = 'm'
    ORDER BY l.id);

SELECT @cnt_likes_men, @cnt_likes_women;

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