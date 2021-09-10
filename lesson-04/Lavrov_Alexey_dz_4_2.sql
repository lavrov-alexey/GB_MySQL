/*4.2. Написать скрипт, возвращающий список имен (только firstname) пользователей 
* без повторений в алфавитном порядке*/

USE vk;

-- для начала - заведем несколько записей с одинаковыми именами
UPDATE users 
    SET first_name = 'Alex'
    WHERE id BETWEEN 1 AND 2;
UPDATE users 
    SET first_name = 'Julia'
    WHERE id BETWEEN 14 AND 15;

-- проверим - что получилось
SELECT * FROM users;

-- теперь выберем только уникальные имена по алфавиту
SELECT DISTINCT first_name FROM users ORDER BY first_name;