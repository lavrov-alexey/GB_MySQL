-- создаем базу данных (с проверкой на существование)
CREATE DATABASE IF NOT EXISTS example;

-- проверяем, что она появилась
SHOW DATABASES;

-- подключаемся к созданной БД
USE example

-- создаем таблицу с 2 столбцами по ТЗ
CREATE TABLE IF NOT EXISTS users (id INT, name VARCHAR(50));

-- проверяем, что таблица появилась в нашей БД
SHOW TABLES;

-- проверяем описание созданных полей в таблице users
DESCRIBE users;

-- докинем в БД немного данных
INSERT INTO users VALUES
    (1, 'Vladimir Putin'),
    (2, 'Sergey Schoygu'),
    (3, 'Elena Kovalenko'),
    (4, 'Kirill Ivanov');

-- проверим данные в таблице
SELECT * FROM users;
