/* Lavrov Alexey. DZ-7. 
 * 2. Выведите список товаров products и разделов catalogs, который соответствует товару.
 * =====================================================================================*/

USE shop;

-- выводим товары, к которым цепляем каталог
SELECT 
	p.id, 
	c.name AS catalog_name, 
	p.name AS product_name, 
	p.description AS product_description,
	p.price 
	FROM 
		products p 
		JOIN catalogs c 
		ON p.catalog_id = c.id;