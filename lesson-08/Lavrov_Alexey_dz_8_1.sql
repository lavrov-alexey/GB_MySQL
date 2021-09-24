/* Lavrov Alexey. DZ-8. 
 * 1. Пусть задан некоторый пользователь. Из всех пользователей соц. сети найдите человека,
 * который больше всех общался с выбранным пользователем (написал ему сообщений).
 * =================================================================================*/

USE vk;

-- назначим "избранным" пользователя id = 7
SET @choosen_user = 7;
SELECT @choosen_user;

-- посмотрим - кто в принципе писал нашему избранному
SELECT * FROM messages WHERE to_user_id = @choosen_user;

-- получилось, что всего 2 человека (по результатам загрузки из db_vk_create_fill.sql), 
-- для наших изысканий - маловато, будем генерить доп. данные в таблицу messages
INSERT INTO messages 
    VALUES 
    (NULL,11,8,"tincidunt. Donec vitae erat vel pede blandit","1","2013-06-07 04:59:35","2019-10-16 18:20:28"),
    (NULL,10,6,"ut eros non enim commodo hendrerit. Donec","1","2019-04-10 04:48:07","2021-06-09 17:49:37"),
    (NULL,10,9,"mi lorem, vehicula et, rutrum eu, ultrices","1","2012-05-31 01:31:43","2017-08-01 00:46:59"),
    (NULL,3,7,"nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus","0","2013-05-08 14:19:07","2016-05-19 18:28:52"),
    (NULL,7,1,"Duis gravida. Praesent eu nulla at sem molestie","1","2014-06-16 03:15:51","2018-09-11 00:51:19"),
    (NULL,3,10,"iaculis enim, sit amet ornare","1","2017-08-21 12:49:28","2017-12-03 01:49:57"),
    (NULL,9,7,"erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam","1","2016-04-28 20:26:34","2016-08-16 03:03:22"),
    (NULL,7,8,"lobortis risus. In","0","2014-08-18 23:42:13","2020-03-28 20:45:00"),
    (NULL,6,8,"est, congue a, aliquet vel,","1","2015-01-02 16:13:00","2019-02-02 06:01:21"),
    (NULL,5,3,"vitae semper egestas,","0","2013-10-20 22:58:30","2016-08-24 13:53:34"),
    (NULL,11,2,"metus. Aenean sed","0","2020-01-07 21:50:37","2017-08-09 05:50:28"),
    (NULL,5,10,"amet, dapibus id, blandit at, nisi. Cum sociis natoque","0","2015-02-23 09:49:41","2021-04-01 14:10:13"),
    (NULL,7,8,"lorem. Donec elementum, lorem ut aliquam iaculis,","1","2012-12-28 19:40:31","2020-10-15 02:34:51"),
    (NULL,11,1,"aliquet libero. Integer in magna. Phasellus dolor","1","2016-06-21 10:26:48","2016-01-22 03:10:27"),
    (NULL,2,8,"felis. Nulla tempor","0","2017-03-12 10:31:50","2019-02-07 21:23:08"),
    (NULL,7,10,"Cras dolor dolor, tempus non,","1","2012-06-15 02:29:46","2019-07-06 07:03:25"),
    (NULL,6,5,"accumsan convallis, ante lectus convallis est, vitae sodales nisi","1","2011-12-12 03:41:02","2018-09-19 12:37:27"),
    (NULL,4,8,"Nam tempor diam dictum sapien. Aenean massa. Integer vitae","1","2016-10-13 08:07:09","2019-01-07 22:44:48"),
    (NULL,2,9,"ac metus vitae velit","0","2020-05-07 03:36:40","2018-09-26 23:11:37"),
    (NULL,5,8,"nonummy ut, molestie in, tempus eu, ligula. Aenean","1","2017-08-20 04:38:23","2021-07-08 23:10:25"),
    (NULL,11,3,"ornare lectus justo eu arcu. Morbi","1","2012-06-10 09:05:50","2019-11-20 14:52:19"),
    (NULL,8,11,"Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu.","0","2019-12-01 00:28:32","2018-05-06 09:45:19"),
    (NULL,3,4,"metus urna convallis erat, eget","0","2015-08-31 14:41:42","2020-01-25 15:44:22"),
    (NULL,2,6,"et, eros. Proin ultrices. Duis volutpat nunc sit","0","2017-03-12 10:08:48","2020-02-03 15:38:48"),
    (NULL,4,8,"Donec est mauris, rhoncus id,","0","2017-09-23 06:57:30","2020-10-10 14:07:14"),
    (NULL,11,11,"Donec porttitor tellus non magna. Nam ligula elit, pretium","0","2011-12-24 03:25:52","2016-07-04 17:31:17"),
    (NULL,8,9,"tempor diam dictum sapien. Aenean massa. Integer vitae nibh.","0","2015-02-18 23:15:12","2016-07-24 09:50:34"),
    (NULL,1,7,"Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus.","1","2014-01-30 11:01:45","2018-02-01 07:46:05"),
    (NULL,11,3,"velit. Sed malesuada augue","0","2013-12-26 23:41:30","2019-04-15 23:49:32"),
    (NULL,5,3,"lorem, eget mollis lectus pede et risus. Quisque libero lacus,","0","2017-09-29 12:21:40","2018-09-25 07:43:08"),
    (NULL,1,3,"mattis velit justo nec ante. Maecenas","1","2013-10-27 07:39:46","2018-10-29 08:23:31"),
    (NULL,11,2,"ut dolor dapibus gravida.","1","2019-03-25 12:31:18","2020-07-30 09:21:34"),
    (NULL,7,10,"metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus","1","2020-03-25 23:09:24","2019-08-13 03:25:30"),
    (NULL,5,1,"tellus eu augue porttitor interdum. Sed auctor","1","2013-12-23 00:33:16","2016-12-30 00:38:47"),
    (NULL,4,3,"blandit. Nam nulla magna,","0","2017-04-22 11:31:07","2016-12-09 10:31:17"),
    (NULL,4,3,"eu, euismod ac, fermentum vel, mauris. Integer","0","2016-12-10 22:01:31","2020-09-07 06:28:18"),
    (NULL,3,8,"non, bibendum sed, est. Nunc laoreet lectus quis","0","2013-05-29 09:04:09","2018-06-08 01:26:45"),
    (NULL,10,9,"elementum sem, vitae aliquam","0","2013-03-07 10:35:28","2017-11-05 04:14:14"),
    (NULL,9,7,"neque. Nullam ut nisi","1","2013-12-28 02:26:06","2016-05-14 00:32:15"),
    (NULL,9,4,"et ipsum cursus vestibulum. Mauris magna.","0","2019-11-05 02:47:38","2015-12-13 04:57:40"),
    (NULL,7,11,"dolor sit amet, consectetuer adipiscing elit. Curabitur","0","2020-07-16 11:00:16","2021-07-28 14:32:31"),
    (NULL,7,8,"hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim.","0","2015-07-17 23:32:54","2018-10-26 08:27:49"),
    (NULL,6,6,"iaculis quis, pede. Praesent eu dui. Cum","0","2013-12-08 13:08:24","2019-09-01 01:50:03"),
    (NULL,9,1,"luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce","1","2019-01-05 12:29:23","2016-05-09 07:13:58"),
    (NULL,9,10,"mollis dui, in sodales elit","0","2010-12-27 21:14:16","2018-06-30 05:21:44"),
    (NULL,9,8,"ipsum ac mi eleifend egestas. Sed pharetra, felis","1","2016-12-27 23:19:24","2018-09-23 22:19:52"),
    (NULL,4,10,"dictum augue malesuada malesuada.","1","2014-06-16 01:28:54","2018-07-08 12:58:36"),
    (NULL,11,4,"commodo auctor velit. Aliquam nisl. Nulla eu neque","1","2011-09-03 16:46:03","2019-01-23 09:20:43"),
    (NULL,4,3,"Duis risus odio,","1","2013-04-15 21:58:54","2018-06-03 12:47:17"),
    (NULL,11,7,"aliquam eros turpis","0","2019-01-03 18:56:20","2017-03-25 02:54:35"),
    (NULL,1,2,"Integer in magna. Phasellus dolor","0","2014-09-20 17:01:25","2019-01-11 01:49:01"),
    (NULL,4,2,"arcu. Vestibulum ante ipsum primis in faucibus orci luctus","0","2016-03-05 10:25:53","2020-08-24 22:15:39"),
    (NULL,5,5,"rutrum. Fusce dolor","1","2019-07-09 21:56:35","2019-10-07 07:25:58"),
    (NULL,7,1,"erat nonummy ultricies ornare, elit elit fermentum","1","2016-06-13 20:46:23","2016-08-20 23:08:32"),
    (NULL,6,10,"pede, nonummy ut, molestie in, tempus eu, ligula. Aenean","1","2020-01-13 01:41:22","2019-02-27 04:30:54"),
    (NULL,9,2,"lectus sit amet luctus vulputate, nisi sem","1","2014-05-27 01:52:02","2020-04-19 09:51:47"),
    (NULL,6,10,"et, lacinia vitae, sodales","0","2013-01-17 01:42:06","2015-09-05 13:28:55"),
    (NULL,6,9,"at, nisi. Cum sociis natoque penatibus","1","2019-01-08 06:19:52","2019-10-26 23:47:42"),
    (NULL,6,6,"nec, eleifend non, dapibus","1","2016-10-31 12:02:39","2020-08-16 13:10:03"),
    (NULL,1,3,"accumsan laoreet ipsum. Curabitur consequat, lectus sit","1","2017-04-30 16:59:47","2019-02-24 08:17:22"),
    (NULL,7,10,"erat nonummy ultricies ornare, elit","1","2018-01-25 18:43:04","2017-06-06 05:20:08"),
    (NULL,11,8,"porttitor tellus non magna. Nam ligula elit, pretium et, rutrum","0","2016-08-03 14:50:02","2016-01-31 19:16:54"),
    (NULL,1,6,"magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu","0","2014-09-06 18:17:57","2020-04-06 16:57:40"),
    (NULL,3,10,"orci lobortis augue","0","2011-10-06 18:56:58","2017-04-13 15:38:07"),
    (NULL,3,6,"sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla","1","2012-11-17 11:42:45","2017-02-06 00:21:09"),
    (NULL,1,3,"sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem","1","2011-11-02 17:52:26","2020-11-03 16:22:54"),
    (NULL,6,11,"mus. Donec dignissim magna a tortor. Nunc commodo auctor","1","2010-11-14 20:03:04","2021-03-20 01:01:20"),
    (NULL,4,7,"luctus lobortis. Class aptent","1","2013-03-29 20:03:42","2018-10-30 06:59:46"),
    (NULL,7,10,"ligula tortor, dictum eu, placerat eget, venenatis","0","2012-08-25 05:36:02","2017-02-26 02:20:07"),
    (NULL,4,6,"Duis sit amet diam","1","2016-03-08 07:57:48","2020-01-09 18:12:45"),
    (NULL,7,11,"amet massa. Quisque porttitor","1","2011-01-09 00:43:42","2017-07-22 21:36:03"),
    (NULL,2,8,"euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget","1","2014-08-17 14:53:56","2021-09-06 04:52:01"),
    (NULL,1,7,"Donec vitae erat","1","2019-07-31 16:43:11","2019-12-24 17:03:38"),
    (NULL,10,9,"sem, vitae aliquam eros turpis non enim. Mauris quis","1","2019-06-04 17:32:33","2021-03-18 08:11:57"),
    (NULL,2,6,"ornare. In faucibus. Morbi","1","2013-05-11 09:24:18","2015-12-28 06:54:52"),
    (NULL,4,5,"augue ut lacus.","0","2014-07-26 05:47:57","2017-03-26 06:49:06"),
    (NULL,4,11,"habitant morbi tristique","1","2011-04-18 20:28:19","2016-03-23 20:52:29"),
    (NULL,1,6,"mauris, rhoncus id, mollis","1","2018-12-03 15:12:39","2018-08-06 23:16:20"),
    (NULL,2,11,"nec, malesuada ut, sem.","1","2018-12-12 01:21:02","2019-02-06 07:10:42"),
    (NULL,3,11,"gravida molestie arcu. Sed eu nibh","0","2011-04-10 15:15:35","2015-12-22 19:29:14"),
    (NULL,2,8,"suscipit nonummy. Fusce","0","2013-04-24 11:52:03","2021-03-25 03:11:21"),
    (NULL,4,1,"nonummy. Fusce fermentum","0","2012-08-02 08:24:49","2018-06-20 07:29:41"),
    (NULL,4,11,"nunc sed pede. Cum sociis natoque penatibus et magnis","1","2017-01-02 19:57:59","2021-06-20 20:21:37"),
    (NULL,10,1,"sagittis felis. Donec tempor, est ac mattis semper, dui lectus","1","2016-08-12 21:08:29","2017-01-30 03:48:36"),
    (NULL,5,9,"eu, placerat eget,","0","2012-01-17 11:57:19","2021-01-18 18:08:12"),
    (NULL,3,10,"enim. Nunc ut erat. Sed nunc est,","1","2019-10-03 16:48:40","2020-03-26 11:54:42"),
    (NULL,6,7,"lobortis quis, pede. Suspendisse","1","2015-10-19 20:03:31","2021-06-29 11:24:48"),
    (NULL,9,8,"blandit congue. In","1","2011-05-23 06:32:00","2020-10-30 00:10:58"),
    (NULL,9,10,"lacus. Cras interdum. Nunc sollicitudin","1","2017-09-07 18:38:35","2016-08-16 06:30:08"),
    (NULL,9,8,"vitae, aliquet nec, imperdiet nec, leo. Morbi neque","1","2011-11-12 02:02:09","2021-01-20 20:28:50"),
    (NULL,6,4,"elit fermentum risus, at fringilla","0","2011-06-11 13:27:54","2016-02-25 09:48:38"),
    (NULL,4,11,"consectetuer adipiscing elit.","1","2015-07-18 09:01:08","2018-01-10 07:15:46"),
    (NULL,10,3,"ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit","1","2019-09-06 21:08:07","2019-05-16 23:08:52"),
    (NULL,8,4,"et netus et malesuada fames ac turpis egestas. Fusce","0","2013-01-30 14:10:16","2019-08-22 17:22:23"),
    (NULL,4,5,"sed dictum eleifend, nunc risus varius orci, in consequat","1","2016-03-22 07:18:36","2017-07-27 14:31:00"),
    (NULL,5,8,"quam. Curabitur vel lectus. Cum","0","2014-01-17 23:39:38","2019-07-10 17:53:33"),
    (NULL,8,5,"facilisis eget, ipsum. Donec sollicitudin adipiscing ligula.","0","2012-07-12 18:10:09","2018-08-21 12:07:27"),
    (NULL,9,4,"fermentum arcu. Vestibulum ante ipsum primis in","1","2017-04-14 05:57:07","2018-12-23 10:16:24"),
    (NULL,11,6,"diam eu dolor egestas rhoncus. Proin nisl sem, consequat","1","2017-03-02 19:27:03","2018-03-25 17:19:53"),
    (NULL,5,6,"arcu. Vestibulum ut eros non enim commodo","1","2012-04-11 06:57:45","2018-03-17 12:45:35");

-- ну вот - теперь гораздо лучше
SELECT * FROM messages WHERE to_user_id = @choosen_user;

-- находим максимальное количество сообщений, отправленных "избранному"
SET @max_cnt_msg =
(SELECT COUNT(*) AS count_messages FROM messages 
    WHERE to_user_id = @choosen_user 
    GROUP BY from_user_id 
    ORDER BY count_messages 
    DESC LIMIT 1);

SELECT @max_cnt_msg; 

-- находим id пользователей, которые отправили максимальное 
-- кол-во сообщений "избранному"
SELECT 
	COUNT(*) AS count_messages, 
	from_user_id 
	FROM messages WHERE to_user_id = @choosen_user
    GROUP BY from_user_id 
    HAVING count_messages = @max_cnt_msg;

-- соединяем данные о пользователях из таблиц users и profiles
SELECT 
    u.id,
    CONCAT(u.last_name, ' ', u.first_name) AS user_name,
    u.email,
    u.phone,
    CASE(p.gender)
            WHEN 'm' THEN 'male'
            WHEN 'f' THEN 'female'
            WHEN 'x' THEN 'uncertain'
        END AS gender,
    p.city,
    p.country 
    FROM users u JOIN profiles p ON u.id = p.user_id;

-- теперь к найденным id "спаммеров" для нашего "избранного" цепляем данные
SELECT 
	ch_usr_id.count_messages,
	ch_usr_id.from_user_id,
	CONCAT(u.last_name, ' ', u.first_name) AS name,
	CASE(p.gender)
	    WHEN 'm' THEN 'male'
	    WHEN 'f' THEN 'female'
	    WHEN 'x' THEN 'uncertain'
    END AS gender,
    p.country,
    p.city,
	u.email,
	u.phone
	FROM 
    (SELECT 
        COUNT(*) AS count_messages, 
        from_user_id 
        FROM messages WHERE to_user_id = @choosen_user
        GROUP BY from_user_id 
        HAVING count_messages = @max_cnt_msg
        ORDER BY count_messages DESC) AS ch_usr_id
    JOIN
        users u
    ON ch_usr_id.from_user_id = u.id
   	JOIN
   		profiles p 
   	ON ch_usr_id.from_user_id = p.user_id;
