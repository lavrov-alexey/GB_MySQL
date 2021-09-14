/* Lavrov Alexey. DZ-5. 
 * 5.1.1. Пусть в таблице users поля created_at и updated_at оказались незаполненными.
 * Заполните их текущими датой и временем.
 * =================================================================================*/

-- судя по тому, что в БД vk в таблице users нет поля updated_at, речь видимо о БД shop
USE shop;

-- для начала смотрим, что у нас в таблице
SELECT * FROM users;

-- очищаем поля с датами
UPDATE users SET created_at = NULL, updated_at = NULL;

-- поля "зачищены"
SELECT * FROM users;

-- теперь записываем в них текущие дату и время
UPDATE users SET created_at = NOW(), updated_at = NOW();

-- проверяем результат работы
SELECT * FROM users;