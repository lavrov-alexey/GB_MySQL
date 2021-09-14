/* Lavrov Alexey. DZ-5. 
 * 5.2.3. (по желанию) Подсчитайте произведение чисел в столбце
 * value таблицы 
 * =============================================================*/

USE shop

/*
 * Агрегатной функции для произведения, как я понимаю, нет, поэтому
 * используем свойство: логарифм произведения равен сумме логарифмов, 
 * если применить обратную к натуральному логарифму (Ln) функцию 
 * экспоненты (exp), то получим искомое произведение.
 * */

-- для примера (результат округлим в связи с возникающими 
-- погрешностями вычислений с плав. запятой)
SELECT ROUND(2*3*4*5) AS multiplication;
SELECT ROUND(exp(ln(2*3*4*5))) AS multiplication;
SELECT ROUND(exp(ln(2) + ln(3) + ln(4) + ln(5))) AS multiplication;

-- ну и "к нашим баранам"
SELECT 
	COUNT(*) AS cnt_values,
	SUM(LN(value)) AS sum_ln,
	ROUND(EXP(SUM(LN(value)))) AS multiplication
	FROM storehouses_products
	WHERE value > 0;
	
-- для проверки прикинем произведение в экселе - итог совпал
SELECT value FROM storehouses_products;