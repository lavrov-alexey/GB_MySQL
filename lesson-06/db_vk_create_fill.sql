/* Lavrov Alexey.
 * Создание и заполнение таблиц БД vk данными.
 * ==========================================*/

-- создаем БД
DROP DATABASE IF EXISTS vk;
CREATE DATABASE IF NOT EXISTS vk;
USE vk;

-- создаем таблицу пользователей
DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(150) NOT NULL,
    last_name VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    phone CHAR(11) NOT NULL UNIQUE,
    password_hash  CHAR(65) DEFAULT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    INDEX (phone),
    INDEX (email)
);

-- докидываем в нее данные, сгенерированные сервисом
INSERT INTO users VALUES
	(1,"Christine","Hamilton","Mauris.quis.turpis@ullamcorperDuiscursus.co.uk","86808518451","WPA53SXR6VVEHY97AHX2QHTWF43XTA3FYOJG29WAJ5FDGUR54VHK4AHLHG76HOB6G","2021-01-13 23:15:51"),
	(2,"Dillon","Vega","commodo.auctor@feugiattellus.com","83996424887","NTQ20SAY1VPCYP83VQJ0BNULF77OJJ1LKNGY01MUB5WNPPJ35KVO3WTMYQ34JPO5K","2020-12-30 05:50:50"),
	(3,"Phyllis","Spears","pharetra@ligula.net","85336551607","YPT77WLQ8WZEEP28CBT8JWCYD11OSL4ZFAEU57ZGQ2XNHJK82NBT6NQHRC82FWR1J","2020-09-20 11:07:34"),
	(4,"Heather","Henry","at@nequevenenatislacus.org","88045787980","UDP31PYO4OUYLZ46LUW3VKDQW49XKC8QBRFA16VRI5VJNPN95NPS5PCSXK52NMF1W","2021-07-25 19:46:51"),
	(5,"Allegra","Bass","montes.nascetur.ridiculus@eratsemperrutrum.org","85409168326","MYY93KRR4LYUDQ12FMD5DFNNV24PLI4MUXNZ17QEA2YSKGX44YQD4CRMBY19OPR4K","2020-11-20 03:25:59"),
	(6,"Lydia","Grant","tortor.at@eget.org","85229614139","UDV71NFW9EMMPU52MRA0KBNGP78EQL5OYBAQ08APR7DJGHH58LQB8LJMRH16QRZ5T","2021-05-03 07:25:17"),
	(7,"Isaac","Pruitt","sit.amet@mipede.ca","81654481360","KRU77UGE5NXXJX26FTO1YJMLA81XOI9TROED92ZZX2JRBDI82AKN2ALQBC61TSM0I","2021-01-31 19:02:47"),
	(8,"Axel","Carpenter","mauris.erat@pedenonummyut.edu","81589693137","EIJ66ZGI0ISWHF61UOW2SKWYI11JAJ5TLRXR05NKJ1JHSWN50GIC6RSZPO90XIM3N","2021-03-09 00:55:59"),
	(9,"Gavin","Snider","dolor.Fusce@milacinia.net","82540847088","SAJ35MHV5ERIFQ60RMA6GEKHZ73PSQ1YKGSW62ALE5JSQIP98GOG1PDQBF83WJW6Z","2021-09-02 18:20:37"),
	(10,"Flynn","Chambers","pellentesque.Sed@varius.net","86371025942","HXM06BDW2VJGEN53OCG5ZUWTJ06VHR4HLYCP24CFM5PINOE53OXO9YWRBB43WSU5J","2021-03-04 13:35:00"),
	(11,"Ila","Ingram","gravida@ProinmiAliquam.ca","86028079096","QAD02ZIO0XDRMG56TVV1JTSXZ76USU4NWYWB01TWE4QXZJI17JZN8RGGEH36KKE5J","2020-12-08 05:56:27"),
	(12,"Hiroko","Berger","ut.lacus.Nulla@duiSuspendisseac.net","84689593278","WSF57OQY4FIEFP92DMD0XXKIR93XOB9FJZZE66NLU0FDMEX89VOS2BEWYK12KII8P","2021-01-15 00:48:01"),
	(13,"Riley","Carey","Quisque.ornare.tortor@nisiMaurisnulla.com","82657717416","QUE94YHH1XSVAT47DNV0OATTG84HJL9ZCTSD90VMK7PYXQN76JKJ3FGLDK50VIE4I","2021-07-25 08:39:18"),
	(14,"Imogene","Neal","ut.pharetra.sed@feugiat.net","89250266834","NRS46EFM1RJCFB33PPN6GHAGN91SVS2KGHVT49OOD9LYZAQ00APF1LQZVN69OKF4O","2021-06-12 21:20:35"),
	(15,"Noah","Peters","Donec@Sedid.net","83967595343","LCB29WLE2OAPCP59WPO1AUCSN22WWT3FBODF87QYU5WHJPC23KXB8AUWJG83MCA4B","2021-07-21 01:53:04");

-- создаем таблицу профилей пользователей со связью 1:1 с табл. пользователей
DROP TABLE IF EXISTS profiles;
CREATE TABLE IF NOT EXISTS profiles(
    user_id SERIAL PRIMARY KEY,
    gender ENUM('f', 'm', 'x') NOT NULL,
    birthday DATE NOT NULL,
    photo_id BIGINT UNSIGNED,
    country VARCHAR(130),
    city VARCHAR(130),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- докидываем сгенерированные данные
INSERT INTO profiles VALUES
	(1,"f","1985-03-16",36,"Uganda","Glendon"),
	(2,"x","1993-05-17",95,"Montserrat","Codó"),
	(3,"f","1970-02-16",12,"Sudan","Bègles"),
	(4,"m","1980-02-17",71,"Paraguay","Charny"),
	(5,"f","1985-01-16",65,"Aruba","Cromer"),
	(6,"f","1998-04-10",16,"South Africa","Colorno"),
	(7,"m","1977-07-14",67,"South Sudan","Goderich"),
	(8,"f","1974-06-12",84,"Nigeria","Lauder"),
	(9,"x","1993-03-12",30,"Gibraltar","Bhakkar"),
	(10,"f","1984-05-06",32,"Peru","Moignelee"),
	(11,"m","1978-06-22",90,"Thailand","Khuzdar"),
	(12,"f","1974-07-03",5,"Faroe Islands","Cuddapah"),
	(13,"x","1982-01-09",43,"Kazakhstan","Columbus"),
	(14,"m","2000-03-17",92,"Guam","Atlanta"),
	(15,"x","1996-01-25",79,"Libya","Gavorrano");

-- создаем таблицу сообщений
DROP TABLE IF EXISTS messages;
CREATE TABLE IF NOT EXISTS messages (
    id SERIAL PRIMARY KEY,
    from_user_id BIGINT UNSIGNED NOT NULL,
    to_user_id BIGINT UNSIGNED NOT NULL,
    txt TEXT NOT NULL,
    is_delivered BOOL DEFAULT FALSE,
    created_at DATETIME NOT NULL DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX messages_from_user_id_idx (from_user_id),
    INDEX messages_to_user_id_idx (to_user_id),    
    CONSTRAINT fk_messages_from_user_id FOREIGN KEY (from_user_id) REFERENCES users(id),
    CONSTRAINT fk_messages_to_user_id FOREIGN KEY (to_user_id) REFERENCES users(id)
);

-- докидываем сгенерированные данные
INSERT INTO messages VALUES 
	(1,14,7,"mauris sit amet lorem semper auctor.","0","2019-10-22 01:52:09","2021-05-14 10:18:32"),
	(2,6,3,"Fusce aliquet magna a neque. Nullam ut","0","2020-07-28 17:15:55","2021-02-24 14:52:47"),
	(3,13,1,"ornare, elit elit fermentum risus,","0","2020-03-19 09:13:04","2021-04-10 15:57:25"),
	(4,2,4,"ac","1","2020-01-26 04:01:09","2021-06-15 09:11:34"),
	(5,1,8,"lacus. Nulla tincidunt,","1","2019-12-30 17:16:19","2021-05-23 13:30:05"),
	(6,3,14,"consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque","0","2019-09-18 22:52:14","2021-05-24 15:00:47"),
	(7,15,7,"aliquam","1","2020-07-31 17:53:38","2020-10-02 05:59:21"),
	(8,15,12,"neque.","1","2020-01-05 16:25:14","2021-04-03 03:07:59"),
	(9,8,4,"Nam","1","2020-04-25 09:52:10","2021-06-01 00:29:51"),
	(10,4,13,"nascetur ridiculus mus. Aenean eget magna. Suspendisse","0","2020-02-29 09:44:21","2021-08-16 14:26:16"),
	(11,4,4,"imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus,","1","2020-08-01 20:35:18","2020-10-15 11:39:18"),
	(12,5,10,"dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer","1","2019-09-28 12:12:18","2021-05-02 01:35:23"),
	(13,3,12,"Cum sociis","1","2019-11-05 19:32:05","2020-12-23 02:30:58"),
	(14,5,13,"id,","0","2020-07-12 08:33:23","2020-12-04 06:30:53"),
	(15,2,1,"quam. Curabitur vel lectus.","1","2020-07-12 09:45:36","2021-06-28 08:24:44");


DROP TABLE IF EXISTS friend_requests;
CREATE TABLE IF NOT EXISTS friend_requests(
    from_user_id BIGINT UNSIGNED NOT NULL,
    to_user_id BIGINT UNSIGNED NOT NULL,
    accepted BOOL DEFAULT FALSE,
    PRIMARY KEY (from_user_id, to_user_id),
    KEY (from_user_id),
    KEY (to_user_id),
    FOREIGN KEY (from_user_id) REFERENCES users(id),
    FOREIGN KEY (to_user_id) REFERENCES users(id)
);

-- докинем в созданную таблицу сгенерированных данных
INSERT INTO friend_requests VALUES 
	(15,4,"1"),
	(15,10,"1"),
	(15,3,"0"),
	(6,4,"0"),
	(15,5,"1"),
	(9,14,"0"),
	(7,3,"0"),
	(13,7,"0"),
	(4,7,"1"),
	(6,14,"1"),
	(5,3,"1"),
	(9,6,"0"),
	(10,7,"1"),
	(12,11,"1"),
	(11,6,"1");

-- создаем таблицу сообществ
DROP TABLE IF EXISTS communities;
CREATE TABLE IF NOT EXISTS communities(
    id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    description VARCHAR(255),  -- может быть пустым
    admin_id BIGINT UNSIGNED NOT NULL,
    KEY (admin_id), 
    FOREIGN KEY (admin_id) REFERENCES users(id)
);

-- добавим пару сообществ
INSERT INTO communities VALUES
    (DEFAULT, 'GB_Python_1424', 'Group GB Phyton Development 1424', 1),
    (DEFAULT, 'GB_Devops_1731', 'Group GB Devops 1731', 9),
    (DEFAULT, 'GB_Design_1686', 'Group GB Design 1686', 7),
    (DEFAULT, 'Smoking room', 'Talk about the futility of everything...', 5);

-- теперь создаем промежут. таблицу для связи многие ко многим (пользователи и сообщества)
DROP TABLE IF EXISTS communities_users;
CREATE TABLE IF NOT EXISTS communities_users(
    community_id BIGINT UNSIGNED NOT NULL,
    user_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (community_id, user_id),
    KEY (community_id),
    KEY (user_id),
    FOREIGN KEY (community_id) REFERENCES communities(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- закидываем данные
INSERT INTO communities_users VALUES 
	(1,12,"2021-02-07 03:26:24"),
	(4,6,"2021-03-31 20:35:38"),
	(4,3,"2021-06-15 02:45:25"),
	(2,13,"2021-04-07 23:03:05"),
	(2,11,"2021-06-25 22:16:41"),
	(1,3,"2020-11-06 14:28:01"),
	(4,13,"2020-11-30 13:53:00"),
	(1,4,"2021-02-17 00:25:07"),
	(1,6,"2020-12-04 19:55:27"),
	(2,6,"2021-07-24 01:21:06"),
	(3,8,"2021-01-22 03:48:24"),
	(1,14,"2021-08-13 05:04:06"),
	(3,12,"2020-11-04 01:59:31"),
	(3,11,"2021-03-01 01:53:55"),
	(3,10,"2021-06-02 01:30:28");

-- создаем справочник для типов медиа файлов БД нашей "соц. сети"
DROP TABLE IF EXISTS media_types;
CREATE TABLE IF NOT EXISTS media_types(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);

-- немного заполним справочник
INSERT INTO media_types VALUES
    (DEFAULT, 'image'),
    (DEFAULT, 'video'),
    (DEFAULT, 'music'),
    (DEFAULT, 'document'),
    (DEFAULT, 'other');


-- создаем таблицу медиа данных
DROP TABLE IF EXISTS media;
CREATE TABLE IF NOT EXISTS media(
    id SERIAL PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    media_types_id INT UNSIGNED NOT NULL,
    file_name VARCHAR(255) NOT NULL,
    file_size BIGINT UNSIGNED NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    KEY (media_types_id),
    KEY (user_id),
    FOREIGN KEY (media_types_id) REFERENCES media_types(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- докинем сгенерированных данных в медиа
INSERT INTO media VALUES 
	(1,4,1,"ac turpis",875489,"2021-03-13 04:11:36"),
	(2,2,3,"Morbi",875557,"2020-09-14 06:36:26"),
	(3,8,3,"molestie",340418,"2020-09-29 22:11:48"),
	(4,9,5,"massa. Vestibulum accumsan",297549,"2021-04-03 21:45:40"),
	(5,9,4,"vitae sodales",655877,"2021-03-30 15:19:12"),
	(6,10,1,"sed, sapien.",755383,"2021-02-01 20:26:25"),
	(7,8,2,"vulputate",724744,"2020-11-18 16:28:25"),
	(8,10,5,"magnis dis parturient",520269,"2020-10-23 18:09:26"),
	(9,5,2,"Proin mi.",118784,"2020-12-09 20:12:42"),
	(10,11,4,"Sed congue,",734012,"2020-10-29 08:53:49"),
	(11,10,3,"luctus",785907,"2021-03-20 17:33:46"),
	(12,6,5,"malesuada vel, venenatis",658099,"2021-02-21 00:17:26"),
	(13,7,4,"vitae",676797,"2021-03-23 10:53:43"),
	(14,10,3,"ut, nulla. Cras",692952,"2020-11-12 08:09:06"),
	(15,4,2,"quis arcu",544746,"2020-11-20 05:54:38");


-- справочник типов лайков ("на вырост")
DROP TABLE IF EXISTS likes_types;
CREATE TABLE IF NOT EXISTS likes_types(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	-- оценка/хар-ка лайка - нейтаральная 0, отрицательная, положительная (и насколько по шкале)
    rate TINYINT(2) NOT NULL,
    name VARCHAR (50) NOT NULL
);

INSERT INTO likes_types VALUES
	(NULL, -10, 'Bull scheet'),
	(NULL, 0, 'So-so'),
	(NULL, 10, 'Incredable');

	
-- справочник типов целей лайков ("на вырост")
DROP TABLE IF EXISTS likes_type_target;
CREATE TABLE IF NOT EXISTS likes_type_target(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    target VARCHAR(150)
);

INSERT INTO likes_type_target VALUES
    (NULL, 'media'),
    (NULL, 'messages'),
    (NULL, 'users');


-- таблица лайков (в зависимости от типа цели лайка, likes_target_id может 
-- содержать ссылку users, messages, media)
DROP TABLE IF EXISTS likes;
CREATE TABLE IF NOT EXISTS likes(
    id SERIAL PRIMARY KEY,
    likes_type_target_id INT UNSIGNED NOT NULL,
    likes_target_id BIGINT UNSIGNED NOT NULL,
    likes_types_id INT UNSIGNED NOT NULL,
    from_user_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME NOT NULL DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    KEY (likes_target_id),
    KEY (from_user_id),
    FOREIGN KEY (likes_type_target_id) REFERENCES likes_type_target(id),
    FOREIGN KEY (from_user_id) REFERENCES users(id),
    FOREIGN KEY (likes_types_id) REFERENCES likes_types(id)
);

-- генерим и докидываем данные
INSERT INTO likes VALUES 
    (1,2,1,1,8,"2020-06-01 07:31:44","2020-11-20 00:37:58"),
    (2,1,13,2,9,"2020-01-29 22:10:38","2021-08-25 23:52:58"),
    (3,1,6,1,4,"2020-08-21 02:11:38","2020-09-19 10:10:04"),
    (4,2,13,2,10,"2020-04-09 22:51:07","2021-07-08 01:13:17"),
    (5,3,14,2,11,"2020-07-03 00:46:58","2021-05-19 08:38:26"),
    (6,2,10,3,3,"2019-10-12 00:17:47","2021-08-03 01:13:35"),
    (7,1,12,3,13,"2020-01-10 02:56:16","2021-02-23 11:35:32"),
    (8,1,13,3,8,"2020-01-01 19:59:49","2021-07-14 16:37:07"),
    (9,2,11,1,7,"2019-09-03 20:47:18","2021-01-30 00:40:41"),
    (10,1,2,3,7,"2019-12-13 13:49:30","2021-07-31 15:16:01"),
    (11,3,8,2,4,"2020-02-28 06:27:16","2021-01-22 15:42:16"),
    (12,1,5,1,15,"2019-12-20 04:37:00","2020-12-28 12:11:02"),
    (13,2,1,2,6,"2020-07-13 19:21:59","2021-09-04 06:03:51"),
    (14,1,3,1,8,"2020-06-09 00:36:33","2021-04-30 22:28:46"),
    (15,3,7,1,15,"2019-10-17 21:02:50","2020-12-19 18:35:17"),
    (16,3,9,2,7,"2019-10-29 21:06:30","2021-02-14 08:16:57"),
    (17,3,10,1,3,"2019-10-12 04:48:54","2021-07-18 06:03:46"),
    (18,1,7,3,14,"2020-05-02 00:25:08","2021-04-01 20:33:16"),
    (19,1,14,2,1,"2020-06-02 03:30:11","2021-07-20 23:53:55"),
    (20,2,7,3,14,"2020-04-26 00:35:36","2020-10-29 16:45:46"),
    (21,3,12,3,2,"2019-12-28 00:17:42","2021-01-15 09:51:25"),
    (22,3,5,1,4,"2020-07-25 16:58:03","2021-06-21 10:20:00"),
    (23,1,3,2,3,"2020-08-08 09:59:05","2020-11-11 04:24:08"),
    (24,3,14,2,9,"2020-02-28 08:22:17","2021-05-03 14:22:55"),
    (25,3,5,2,1,"2020-03-27 15:41:19","2020-12-18 08:10:57"),
    (26,2,14,1,14,"2020-08-18 19:16:43","2021-05-26 23:11:16"),
    (27,1,5,3,7,"2020-03-30 04:01:44","2020-11-01 15:29:23"),
    (28,3,3,1,8,"2019-11-03 07:25:33","2021-06-20 03:37:40"),
    (29,3,6,3,11,"2019-10-01 10:36:46","2021-08-23 15:38:00"),
    (30,3,13,2,11,"2020-07-08 22:21:40","2020-09-07 14:37:01"),
    (31,2,3,3,1,"2020-02-09 07:20:13","2020-10-30 22:10:28"),
    (32,1,10,1,6,"2020-03-16 21:59:48","2020-12-24 06:27:38"),
    (33,2,12,2,9,"2019-09-07 07:08:07","2020-11-25 10:34:28"),
    (34,2,5,3,2,"2019-10-06 09:39:57","2021-06-30 16:32:02"),
    (35,3,12,3,12,"2019-10-03 17:25:32","2021-01-15 14:25:41"),
    (36,2,1,2,1,"2019-11-19 23:03:44","2020-12-26 17:27:31"),
    (37,3,10,2,3,"2020-04-18 10:56:02","2021-04-12 04:28:56"),
    (38,3,9,3,4,"2019-12-25 12:44:27","2021-07-04 14:51:10"),
    (39,2,4,3,5,"2020-02-26 22:25:02","2021-01-16 00:11:02"),
    (40,3,4,1,14,"2019-09-21 16:42:08","2021-03-06 07:30:21"),
    (41,2,7,1,15,"2020-04-30 23:07:41","2020-12-04 03:21:44"),
    (42,3,1,3,1,"2019-10-03 13:47:06","2021-06-27 01:28:37"),
    (43,3,11,1,2,"2020-08-02 13:02:43","2021-01-04 14:19:34"),
    (44,2,10,1,3,"2020-08-25 21:46:31","2021-05-20 20:05:14"),
    (45,3,4,2,2,"2020-06-18 21:48:48","2020-09-24 13:47:03"),
    (46,2,13,3,15,"2020-02-14 11:44:47","2021-05-01 12:29:57"),
    (47,1,4,2,11,"2020-04-11 22:55:11","2021-03-13 12:47:03"),
    (48,1,5,3,15,"2020-01-11 07:58:49","2021-06-06 00:03:40"),
    (49,1,6,2,4,"2020-02-06 00:58:08","2021-01-05 03:08:06"),
    (50,2,13,3,5,"2020-02-22 02:36:39","2021-07-19 08:46:13");
