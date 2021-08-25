-- вызываем утилиту для снятия дампа с БД example из п.2.2 ДЗ
\! mysqldump example > 210823_dump_example.sql

-- создаем новую БД, в которую будем равзорячивать дамп и подключаемся к ней
CREATE DATABASE IF NOT EXISTS sample;
USE sample;

-- разворачиваем БД из дампа
\. 210823_dump_example.sql

-- для проверки работы скрипта - выводим БД, таблицы, данные
SHOW DATABASES;
SHOW TABLES;
DESCRIBE users;
SELECT * FROM sample.users;
