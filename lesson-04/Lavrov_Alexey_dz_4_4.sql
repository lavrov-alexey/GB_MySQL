/*4.4. Написать скрипт, удаляющий сообщения «из будущего» (дата больше сегодняшней)*/

USE vk;

-- Создаем несколько сообщений "из будущего"
UPDATE messages
	SET created_at = NOW() + INTERVAL 1 HOUR 
	WHERE id = 1;

UPDATE messages
	SET created_at = NOW() + INTERVAL 1 DAY
	WHERE id = 2;
	
UPDATE messages
	SET updated_at = NOW() + INTERVAL 1 MONTH
	WHERE id = 3;

-- для начала - попробуем посмотреть - есть ли у нас сообщения "из будущего"
SELECT * FROM messages 
	WHERE (TIMESTAMPDIFF(SECOND, created_at, NOW()) < 0) 
		OR (TIMESTAMPDIFF(SECOND, updated_at, NOW()) < 0); 

-- а теперь можем их удалить
DELETE FROM messages
	WHERE (TIMESTAMPDIFF(SECOND, created_at, NOW()) < 0) 
		OR (TIMESTAMPDIFF(SECOND, updated_at, NOW()) < 0); 

-- проверяем - удалились ли?	
SELECT * FROM messages 
	WHERE (TIMESTAMPDIFF(SECOND, created_at, NOW()) < 0) 
		OR (TIMESTAMPDIFF(SECOND, updated_at, NOW()) < 0);