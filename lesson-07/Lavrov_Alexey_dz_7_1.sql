/* Lavrov Alexey. DZ-7. 
 * 1. Составьте список пользователей users, которые осуществили хотя бы один
 * заказ orders в интернет магазине.
 * =========================================================================*/

-- создание и заполнение БД shop из shop.sql
USE shop;

-- смотрим, что у нас в юзерах
SELECT * FROM users u;

-- т.к. табличка была пустая, то пришлось догенерить в нее 20 записей
-- смотрим, что у нас в заказах
SELECT * FROM orders o;

-- выберем всех польователей, хотя бы с 1 заказом - соединим 2 таблицы,
-- отфильтруем по пользователям и посчитаем кол-во заказов по каждому
SELECT u.id, COUNT(*) AS count_orders, u.name, o.user_id AS order_id  
	FROM users u JOIN orders o ON u.id = o.user_id
	GROUP BY u.id;

-- ну и до кучи выведем пользователей, которые не оформляли заказов
SELECT * FROM users WHERE id NOT IN 
	(SELECT DISTINCT user_id FROM orders);