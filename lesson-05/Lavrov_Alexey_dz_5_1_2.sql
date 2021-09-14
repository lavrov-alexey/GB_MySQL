/* Lavrov Alexey. DZ-5. 
 * 5.1.2. Таблица users была неудачно спроектирована. Записи created_at и updated_at были
 * заданы типом VARCHAR и в них долгое время помещались значения в формате "20.10.2017 8:10".
 * Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения.
 * =================================================================================*/

USE shop;

-- проверим описание таблицы users (видим, что формат полей у нас при генерации был DATETIME)
DESCRIBE users;

-- таким образом, для начала нам нужно изменить формат поля для на VARCAHAR
SELECT * FROM users;

ALTER TABLE users 
    MODIFY COLUMN created_at VARCHAR(30), 
    MODIFY COLUMN updated_at VARCHAR(30); 

-- проверим - типы изменились, данные - на месте
DESCRIBE users;
SELECT * FROM users;

-- Теперь попробуем сгенерировать случайные даты от 01.01.1970 до настоящего момента
-- текущий момент в UNIX-формате (кол-во секунд с 01.01.1970) до указанной даты
SELECT unix_timestamp(NOW());

/* используем встроенный рандомайзер (генерит числа от 0 до 1 (не включая 1))
 * и умножим на текущее значение времени в UNIX-формате, чтобы получить случайную 
 * дату и время, результат округлим до целого */
SELECT ROUND(rand() * UNIX_TIMESTAMP(NOW()));

-- теперь полученный результат преобразуем в обычный формат DATETIME
SELECT FROM_UNIXTIME(rand() * UNIX_TIMESTAMP(NOW()));

-- тоже самое, только приводим данные к формату по ТЗ типа "20.10.2017 8:10".
SELECT FROM_UNIXTIME(rand() * UNIX_TIMESTAMP(NOW()), '%Y.%m.%d %H:%i');

/*Для генерации данных в диапазоне, между start (возьмем birthday + 10 лет) и end (текущая) датами, 
 * и с учетом, что RAND() возвращает от 0 до 1 – нам нужно сделать (end - start), что даст искомый 
 * интервал в секундах, сдвинуть интервал в начало периода и перевести в формат DATETIME. 
 * Вот так: (end - start) * RAND + start 
 * */
SELECT 
    birthday_at, 
    FROM_UNIXTIME((UNIX_TIMESTAMP(NOW()) - UNIX_TIMESTAMP(birthday_at + INTERVAL 10 YEAR)) * RAND() 
        + UNIX_TIMESTAMP(birthday_at + INTERVAL 10 YEAR), '%Y.%m.%d %H:%i') AS gen_created_at 
    FROM users;

-- пишем в поле created_at сгенерированные случайные даты и смотрим, что получилось
UPDATE users
    SET created_at = FROM_UNIXTIME((UNIX_TIMESTAMP(NOW()) - UNIX_TIMESTAMP(birthday_at + INTERVAL 10 YEAR)) 
        * RAND() + UNIX_TIMESTAMP(birthday_at + INTERVAL 10 YEAR), '%Y.%m.%d %H:%i');
SELECT * FROM users;

-- по логике - для поля updated_at по аналогии сгенерим даты с момента created_at до текущего момента 
SELECT 
    birthday_at,
    created_at,
    FROM_UNIXTIME((UNIX_TIMESTAMP(NOW()) - UNIX_TIMESTAMP(created_at)) * RAND() 
        + UNIX_TIMESTAMP(created_at), '%Y.%m.%d %H:%i') AS gen_updated_at 
    FROM users;
    
-- ну и запишем теперь эти даты собственно в updated_at
UPDATE users
    SET updated_at = FROM_UNIXTIME((UNIX_TIMESTAMP(NOW()) - UNIX_TIMESTAMP(created_at)) 
        * RAND() + UNIX_TIMESTAMP(created_at), '%Y.%m.%d %H:%i');
SELECT * FROM users;

-- ну а теперь переходим собственно к выполнению ТЗ ))
/*Таблица users была неудачно спроектирована. Записи created_at и updated_at были
 * заданы типом VARCHAR и в них долгое время помещались значения в формате "20.10.2017 8:10".
 * Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения.*/

ALTER TABLE users
    MODIFY COLUMN created_at DATETIME DEFAULT NOW(),
    MODIFY COLUMN updated_at DATETIME DEFAULT NOW();

-- проверяем описание таблицы 
DESCRIBE users;

-- проверяем сохранность данных в полях
SELECT * FROM users;