/* Lavrov Alexey. DZ-3. Создание и наполнение БД vk.
 * =================================================*/

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
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (1,"Christine","Hamilton","Mauris.quis.turpis@ullamcorperDuiscursus.co.uk","86808518451","WPA53SXR6VVEHY97AHX2QHTWF43XTA3FYOJG29WAJ5FDGUR54VHK4AHLHG76HOB6G","2021-01-13 23:15:51");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (2,"Dillon","Vega","commodo.auctor@feugiattellus.com","83996424887","NTQ20SAY1VPCYP83VQJ0BNULF77OJJ1LKNGY01MUB5WNPPJ35KVO3WTMYQ34JPO5K","2020-12-30 05:50:50");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (3,"Phyllis","Spears","pharetra@ligula.net","85336551607","YPT77WLQ8WZEEP28CBT8JWCYD11OSL4ZFAEU57ZGQ2XNHJK82NBT6NQHRC82FWR1J","2020-09-20 11:07:34");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (4,"Heather","Henry","at@nequevenenatislacus.org","88045787980","UDP31PYO4OUYLZ46LUW3VKDQW49XKC8QBRFA16VRI5VJNPN95NPS5PCSXK52NMF1W","2021-07-25 19:46:51");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (5,"Allegra","Bass","montes.nascetur.ridiculus@eratsemperrutrum.org","85409168326","MYY93KRR4LYUDQ12FMD5DFNNV24PLI4MUXNZ17QEA2YSKGX44YQD4CRMBY19OPR4K","2020-11-20 03:25:59");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (6,"Lydia","Grant","tortor.at@eget.org","85229614139","UDV71NFW9EMMPU52MRA0KBNGP78EQL5OYBAQ08APR7DJGHH58LQB8LJMRH16QRZ5T","2021-05-03 07:25:17");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (7,"Isaac","Pruitt","sit.amet@mipede.ca","81654481360","KRU77UGE5NXXJX26FTO1YJMLA81XOI9TROED92ZZX2JRBDI82AKN2ALQBC61TSM0I","2021-01-31 19:02:47");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (8,"Axel","Carpenter","mauris.erat@pedenonummyut.edu","81589693137","EIJ66ZGI0ISWHF61UOW2SKWYI11JAJ5TLRXR05NKJ1JHSWN50GIC6RSZPO90XIM3N","2021-03-09 00:55:59");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (9,"Gavin","Snider","dolor.Fusce@milacinia.net","82540847088","SAJ35MHV5ERIFQ60RMA6GEKHZ73PSQ1YKGSW62ALE5JSQIP98GOG1PDQBF83WJW6Z","2021-09-02 18:20:37");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (10,"Flynn","Chambers","pellentesque.Sed@varius.net","86371025942","HXM06BDW2VJGEN53OCG5ZUWTJ06VHR4HLYCP24CFM5PINOE53OXO9YWRBB43WSU5J","2021-03-04 13:35:00");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (11,"Ila","Ingram","gravida@ProinmiAliquam.ca","86028079096","QAD02ZIO0XDRMG56TVV1JTSXZ76USU4NWYWB01TWE4QXZJI17JZN8RGGEH36KKE5J","2020-12-08 05:56:27");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (12,"Hiroko","Berger","ut.lacus.Nulla@duiSuspendisseac.net","84689593278","WSF57OQY4FIEFP92DMD0XXKIR93XOB9FJZZE66NLU0FDMEX89VOS2BEWYK12KII8P","2021-01-15 00:48:01");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (13,"Riley","Carey","Quisque.ornare.tortor@nisiMaurisnulla.com","82657717416","QUE94YHH1XSVAT47DNV0OATTG84HJL9ZCTSD90VMK7PYXQN76JKJ3FGLDK50VIE4I","2021-07-25 08:39:18");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (14,"Imogene","Neal","ut.pharetra.sed@feugiat.net","89250266834","NRS46EFM1RJCFB33PPN6GHAGN91SVS2KGHVT49OOD9LYZAQ00APF1LQZVN69OKF4O","2021-06-12 21:20:35");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (15,"Noah","Peters","Donec@Sedid.net","83967595343","LCB29WLE2OAPCP59WPO1AUCSN22WWT3FBODF87QYU5WHJPC23KXB8AUWJG83MCA4B","2021-07-21 01:53:04");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (16,"Briar","Garza","ante@Nunclaoreetlectus.net","89689495264","FKN36UDR3FDDCT60DZL3BZAYA90SWM0BRGFK60WHG1DJDYT98QON8XPVIB12ZMS8U","2020-09-24 00:32:05");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (17,"Olga","Burns","ultricies.dignissim.lacus@nullaat.net","88807600589","BOV32DNA2SOVDK27KXW1ZADLA40JCB6ZIWGP20AQA5GQXCN68GBK5TFXPX99RDI3M","2021-06-20 13:07:37");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (18,"Dylan","Snider","odio@noncursus.org","88955471822","JVC24JNC9ZRLXB05GBK8XGGLS84XCW8NOVTO81FHF2KKDHE29OVF5PSSEV64HUJ8U","2021-06-10 11:01:53");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (19,"Isabelle","Lang","lorem.ut@egetvolutpatornare.org","82607565055","DIQ68TQH3ZZPNE25WEA5RZKUL14FEB1MBQJV47VGC8AQXLI83OJJ2HUGZJ51PXU1S","2020-09-23 10:03:04");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (20,"Orli","Zimmerman","amet.risus@magna.edu","82060467177","AWD53PIB0XJBDS64ZDY4WZMFH19FOT8WTPZF43NPF9CCKIB83APU2LZHIZ90VNF7U","2021-08-25 21:02:08");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (21,"Jennifer","Herman","vel.convallis@pedeSuspendisse.org","87985116570","PSF70IAJ2HTYDF95QWH6LKXCR07CHG5KDPHH77WVC0WTLLP49WFI0GEIJQ66CUI9K","2020-09-09 23:30:19");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (22,"Shelley","Glover","ut.erat@orci.org","89227515850","ORO14RIX1BWLZY02WJU2VGRID40DAU5MTIGB49GPG2PFIJP19OHU5RAQKO30OAO5G","2021-08-20 03:09:55");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (23,"Fitzgerald","Holman","pede.sagittis.augue@augue.ca","82445621673","IBS22YJH7TZWOI25RHE9EWSXS66AXR1XDHKR22UHR3UQQCQ44QIJ1ZELLW99OJM1I","2021-06-10 12:17:17");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (24,"Marny","Bush","nibh.enim.gravida@inconsectetuer.com","81595195299","UNR02ZLS4BOHDS62HPN7UVDVH82WDJ1YODZZ83QTH9RNSNX11EMX1SKNJA35SVC3M","2021-03-27 21:01:11");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (25,"Sonya","Franklin","erat.volutpat.Nulla@dolordapibus.co.uk","89623204654","YSF15UPT3IQBLW78VSR3NVGPG23QCS1WIIYW08AQO9QTJMP79JGI9LVKLV42AIH3Y","2021-04-06 10:28:56");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (26,"Wesley","Fitzpatrick","non@Maecenas.net","86467352419","CVP42RZJ8GORRO83HXW7IOTAK67LLA5UZQVF98FGS3WTDRH68NJK1XQXRL02RQU1T","2021-04-15 15:10:58");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (27,"Christopher","Hill","tellus.eu.augue@dapibusidblandit.com","83168173499","ITA01ORC5PINAN52UUO7PGZHW01VCX0VQVBM06ASR3STOQY62JEW8WZNXI81NMI1C","2021-08-08 04:19:15");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (28,"Baker","Thornton","risus@velitCras.edu","89985878253","LEL95KNT8WLHHR34UPR1CQEAU27NQE7DQOPF22UCD1DADYU68YZU9DAGXI95DMT2R","2021-03-25 02:26:59");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (29,"Sierra","Suarez","pede.ultrices@nibhQuisque.co.uk","81442818595","SMT67ZUP1GJJDE89SCL0HABLT44KHR3IPHET62GFL0XRAVN08XYA8DYEAI05VEV1Z","2020-10-10 07:36:23");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (30,"Quail","Rosales","velit@lobortisquam.net","86927167660","YLL14TYL8DSVAJ11FBU8EOYBB97NWJ5XUJYW21TJK3ZDNZM22QMJ8CKHTW68HTQ1R","2021-05-30 11:46:10");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (31,"Thane","Williamson","ipsum.Suspendisse@dolor.net","85998079005","OIG41OBU2IPMQD23PVG4VMINF31BJI1ZQBZN53JPJ2MLOUW66NKE4REDYE41TGV8W","2021-03-17 05:43:01");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (32,"Raymond","Delgado","lobortis@sitamet.edu","87832695051","KJG17NXR9KTLXI24IJZ3OWFOM10AXY2UNKAE57CZP4AOEHM72RMM6HDEBP42EGU3Z","2021-02-15 20:10:49");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (33,"Drake","Ward","dolor@idante.net","81683506460","IBN70NPG8UAVNF63TUS7XKKDH82RFC5KXFZS08KVI2JDEYS85BPC8JLRUJ16MNJ1V","2020-09-27 20:56:43");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (34,"Christen","Haley","sociis@iaculislacus.org","83262496858","VNQ45SIU9VWXTZ15DTZ1IRIII85KEO3CBNEV26TIR0BJGFU10XBZ3USHWP27HRZ6G","2020-12-14 23:09:45");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (35,"Curran","Peck","id.blandit.at@nibh.ca","83099266684","RQQ61HPX2OLJXV79MCC9UTIBL14QIQ8OHJNU95VLB3NGTVV57IEZ1AJNTU56EYA7A","2021-02-03 22:40:56");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (36,"Danielle","Lloyd","sed.leo.Cras@semegetmassa.org","84237401502","UDE03SBD4DCUNS26QFG1GBMIO10GXY8AMOXX97DWN2HXKOR55UZT3HGMBS96QMH7Y","2021-03-26 05:00:24");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (37,"Germane","Mclean","ipsum.leo@id.org","83604117655","LFJ49BTV4HFQTV19BYS0HZIZT93DBU1PHDIR26LOQ8WZLMU38HHR7GSCHF90TGE2H","2020-10-12 11:57:20");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (38,"Vladimir","Horton","ad.litora@acmi.net","81731326012","MUX62UHB1WFPXK51SYM1AAFHR22CVB3DVYMS31HKM6DAVQH50FYU9LNVQR47FBO6B","2020-12-27 08:35:48");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (39,"Dexter","Dickson","purus.sapien.gravida@Proin.org","87008733267","NCE72XJL4NLVLB37UQM1CZOFU61ZHA7CJIOT47ALT2DWYZC82BPO5MLUAZ17TMC1E","2021-08-09 22:12:57");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (40,"Bruno","Gomez","a.dui@risusDonec.net","89023578191","KNT03MZI7OJIRZ53JNF7DIKXT21ZTG2EWRGS55LDB2UCNSM38LOR6ULEUJ90EUZ5E","2021-05-19 09:36:57");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (41,"Alec","Macias","facilisis@Nunc.net","88431506521","MOV87KPO7WHIEW87MVH9DXIQR79JDH0QBYVO01EZB5HQFOW64GQR0MONVI81PED5F","2021-03-29 10:50:41");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (42,"Yuli","Glenn","purus.sapien.gravida@adipiscinglacus.net","87665705389","GJR03LHV4RQMMH61BTX4IZSPI18YCT9MZXRI19ITN6GEGBE48SVT3GLOQW55VSR7R","2021-01-13 12:22:18");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (43,"Neil","Edwards","ut@Aliquamfringilla.com","81654405100","UQX72DVG4DICFX92YIC8FGWVB35XIY9WUVFH69SJD0PYNFO54WHH4PXEHU55BQT0Y","2021-02-20 04:55:43");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (44,"Chester","Martinez","neque.pellentesque@hendreritconsectetuer.com","89146246595","WNJ36HGQ9MUNQV45AQX0AJFRT71WON8SFVLX87GBJ2XCGYH56AIS3NJSMV05ZPQ8F","2021-08-21 05:58:49");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (45,"Nina","Davis","est.vitae@veliteusem.net","83497733375","YWR75PSH1GSSRT80VTJ9CAFRI44TBN2BOUNV99BNC7PVWNP34CGE0AIWGS98BSY7A","2021-03-30 09:11:41");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (46,"Isadora","Patton","Phasellus.elit.pede@interdumfeugiatSed.edu","80118087168","EJE85HVK9ANTCE11TLZ7RHZJX49AXB1TQDOG67ELN9KDYXQ40NOP0LMLJH55UUW5R","2021-04-27 13:54:35");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (47,"Odessa","Snow","mauris@sollicitudinadipiscingligula.ca","81595818248","YQD29KLR7PNRIY00XMY1ESADF65SZU0XFKUW54KKG1TORDS82MKO5FWYXA46RKI0Z","2021-05-14 05:37:33");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (48,"Chaney","Ferrell","risus.Donec.egestas@ornarelectus.ca","82317145779","BEW13XXC3NWIXI58JIQ2HVDQN32VDS4GHTSE82BOM6DLHLE75WRT8LWCUJ80SPX2T","2021-01-19 03:35:07");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (49,"Cairo","Walker","lectus@InloremDonec.ca","82710972463","KOW06EJE2UYBVR58JGS8UKRJT00UDH8TBYPH28OWB9XYMMG48XKF2EZELI20ICQ6C","2021-04-26 19:12:12");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (50,"Gregory","Morton","tellus.justo.sit@liberoProin.org","83648412407","YSL84BCY4UDJLW77UVY9DOMGS86LJK2CMZTL64MSA4TUHPH78XAI5BFJII55RUF1R","2020-11-19 06:49:39");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (51,"Wang","Snyder","risus.Donec.egestas@quamelementumat.com","86511988690","TJF24GYM7IRTQD37KXQ6PXUHC02YRD2MHZIC57VBJ9EMQNF58ICY4YEEWM56LXK0M","2020-11-19 17:44:18");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (52,"Bertha","Rivas","libero.at@enimNuncut.ca","89232570663","IES97LFG9HGUCC60QTB9CCVQA62MHY6FEDOJ34WBB7AWYZD38LPD5NLXGD12SZS1U","2021-02-02 20:59:20");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (53,"Porter","Baldwin","sapien@dapibusid.net","89531197204","PQM99RKA5NMKKD13EHA8VXOKW52MVM8ECFOY58JIX1EEDXC94XSU1LTGTQ02SPD5V","2021-04-28 04:26:43");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (54,"Cheyenne","Bush","vitae.aliquet@intempus.org","81799922535","FGT90MDY8AIPJS65UVJ4XKBBT47EBS9LAOHH25DPQ0LYXEX93ZWR3WLRHP53NFB3Q","2020-09-07 08:11:30");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (55,"Linus","Tucker","et.tristique.pellentesque@Aliquamnec.com","83710079144","WKF37NZV3GJJQR74SPC4JHJZA28HWC2UNBIA33YEQ0ZMKFQ36VRT7WEJQK19HDH8G","2021-06-25 13:22:03");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (56,"Cruz","Kent","dis@nequeNullamnisl.net","88483703169","WZG58PCI6KEKAL08MOJ8MNONG62CMW3BSOOC19QCA6KSJNH95ADC6EUDJP59YOB7K","2020-11-13 15:24:57");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (57,"Hasad","Gentry","felis.Nulla.tempor@tinciduntDonec.com","80199411149","AIY55GCW6KDKIR18OCF6NJOOP29HAR4ZQLSU71DYP0DVWQY82WAC9NXRPQ21UCG9X","2021-04-11 08:57:06");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (58,"Sloane","Shepard","faucibus.orci@et.co.uk","88759271157","ZOF75ATB2OKISF11GBP6XPIJK28TRH0BTHPS56ODV8DLWOT23YIC8CNGYQ05NRA2A","2021-05-18 14:32:40");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (59,"Shellie","Prince","turpis@loremipsum.co.uk","85819451140","CWK55PUQ3CFTPY04JCJ9YBGUT26TKI9YPKKW05NSB7HHOAU13FCF8UMHVO60GEA6D","2021-06-30 01:32:51");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (60,"Ashely","Walton","Cras.vehicula.aliquet@libero.com","84516602703","YEK66KMD5TLDSX13YHL7RUJKY72KBY4ZYOZX63ALT6DXTUE48EBM4ILCKZ91LJP9N","2020-10-05 04:31:18");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (61,"Teagan","Raymond","lectus.pede@consequatpurusMaecenas.ca","84572770112","XHJ69RSE2SFCXR80OVL5APYZO71ITR5NOLFY52WYL0OPYGR91GUO1BOOMA31YQT8X","2021-08-16 01:16:06");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (62,"Walter","Franks","tempor.erat@a.net","87729042524","ZCG98RQQ7QRSDH08ZDN6KMGAX12IBD5MYZPP49ZHX6TPTME35CDF5PXZID01BFV0N","2021-02-09 01:01:33");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (63,"Penelope","Alvarado","augue@nisidictum.ca","88457810020","OJL33OHG0PERSV02GDE9RSUWI12VZT8VNGSE18WMP1NPVBY81YLB0UZDXU57XOL2O","2021-08-07 07:32:40");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (64,"Sarah","Good","lobortis@fermentum.co.uk","84951166165","DMA20PMY9LFDIG74FMX3ZXQDV71KVY5SSGCX00HKJ6DZYPG41LHO9JUZUX01UUJ9W","2020-09-05 06:25:13");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (65,"Cruz","Joyner","condimentum.eget.volutpat@nulla.co.uk","82706884039","VIN28ABT1VWCOH00JDP7UMKLE90QZG1CTAWJ89OUG3WHWWW89BQH7CUTWS60HBC9Z","2021-01-25 00:30:40");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (66,"Galena","Carter","accumsan@nunc.net","83578869135","WFI60LBN3PSWYI10SNK3MIBMV99OWH9FIYBM42OEI0KFNVS66CPX1SMXYX49MXL5T","2021-07-30 16:11:46");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (67,"Hamish","Aguilar","mauris@turpisegestas.co.uk","84868624362","SUQ84RMF6LMQJQ58PDM8OCKQL92DKF7NLPRK40PKH3NBWWI94HTT6DSSGB16UMF3X","2020-12-26 01:50:33");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (68,"Amela","Farmer","libero@congueturpisIn.net","81592735084","PIG23ZYS9SEBFZ29FNS1UPLZC18JJY2BUMTS35KHQ2LHKIG92RYR3YSQWL08IRI9W","2021-03-05 11:58:41");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (69,"Neve","Mccarty","ac.mattis@odioa.edu","88516866439","STZ31OJA5RPRER38QAF3DEIZI37OQZ6YEHGO52BWA3FDJCH94ITB9NPQXO68IAV6W","2021-02-09 06:47:30");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (70,"Moana","Bentley","ridiculus@laciniamattis.com","83964792077","YSY82ORX7ZTDLW90QGF7UMFRH37OPW6NIYBA48QGG4IJTEN29HCK0NSJMX41YQS1D","2020-09-28 19:20:15");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (71,"Wyatt","Lewis","dapibus.quam@dolorquamelementum.org","86262447254","UBC15WMU6WEJUR51OSY6SNPAU15GNQ4ZJMRT54LIQ4UFTKJ30KJW2CTLSD14BEU8H","2021-05-31 14:00:17");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (72,"Flynn","Barnett","laoreet.posuere.enim@sedconsequatauctor.org","81464940024","IAB09UNJ1QJPGM81OWM5DTJJO12JOJ2AQOLW12VKM4VKEEQ84QAV2ESRKC03XZI8J","2020-10-30 22:46:02");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (73,"Hannah","Burnett","Cras.vulputate@elitEtiam.org","86664421478","DIB75WDE8CDULC67RVN4CVXCZ98OCZ1PANBS71SKT4JCQGJ76SGH0DWGRA70IDD6C","2020-09-24 20:18:15");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (74,"Patrick","Peters","egestas.rhoncus@nectempusscelerisque.edu","89312121515","NFP23QKC1CFPWR70YVL3KYUMT17FWK4CWCFM59UOZ4XSNEB76HDU2QFCAI65VSJ0J","2021-08-12 04:42:37");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (75,"Dakota","Mcclure","ac.tellus@nisi.ca","85351772210","QRT83DVS7XWGPR19ZUK7EGEWF35FEN4ZEKVD46HCI2CTYVD90HPH6UFBMQ13GIG2J","2020-11-21 16:29:28");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (76,"Brynn","Gill","dolor@idmollis.com","80484010194","ZFU82XPA9JKJIV75HJL0HAZCT26JJC9FPPFQ54WZN6VRNOD92SGS3GZHLF99GBD4B","2020-11-01 23:49:35");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (77,"Hiram","Reese","Nulla@ornarefacilisiseget.ca","80691540899","LRP63IQE7EPZIF93IVY1PFDIZ49VMZ2PSPZO38ALH0AENXA62JJW2JHZQR36FYR8P","2020-10-23 00:01:53");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (78,"Karly","Castillo","Fusce.aliquet.magna@Quisque.org","87771572372","FCH85JLG8QRAHL59XEQ0KZDXA83NHC5NLEIF52YDP3GZAOO87ETS5MXSHA41YET3G","2021-07-17 20:24:57");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (79,"Reuben","Austin","dolor@dictummagna.edu","81236062887","LVK23DMN7SFAKY14GPK4PUZKA18ELQ3HBHXE41JVI1BXHHD60FGC2AGPGN07JPN9K","2021-03-24 11:05:05");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (80,"Malik","Palmer","semper.et@erategetipsum.org","81643837136","BEH79LVX2FCPEI34IEY0BYVHY13ZRJ8VXUVO21UFM3IFQWL72KIK4JRSID03AYH1K","2021-05-29 04:06:10");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (81,"Rhiannon","Tyson","vitae@ac.ca","83774031933","KME00UNM3DHFRF94HJZ5UNDVR36HSV5QZTDH42EHZ8PMBKE61JAM8CCNKR02OIN3C","2021-05-30 18:49:54");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (82,"Lyle","Lee","elementum.lorem@Aenean.net","80868309369","QXL79OTK8UMWPB95PCM1MHZRV38GCD0SCPFB67AXJ2BRQUR63YHC9QPPWQ12PVE4D","2021-07-25 03:24:52");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (83,"Patience","Duke","et.ipsum.cursus@Curabitur.edu","85847835211","RSV09HXR3CRZXT41KKG1EJGDO78WGH5UREEN30FHF1BJVUR09BNH7DQINQ55OTZ0T","2021-09-01 18:15:50");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (84,"Flynn","Valentine","Suspendisse.sed.dolor@cursus.org","83017716603","OKW23TPZ2DUHIS57ZSQ3SEGYS70XNN7LAGKZ75HJP4CLBFF50LWS4IINHD67DNR7E","2021-02-27 16:09:06");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (85,"Mason","Wilkins","nisi.magna.sed@Donecsollicitudin.com","83694932553","LMM05VVP2BTUMK85WFH8WJTRN19BFQ2KNEWN89MHP2YAUIP82QTH0UNYWQ69ZHR9U","2020-10-31 22:41:01");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (86,"Judith","Hahn","sapien.Cras.dolor@euneque.edu","87334697499","AUP35TJZ0MAWHR45LLO1ENSPS96KIB8PAVZW15AAK1PCIIT50EGK2AFXGZ25NOB8O","2020-09-12 07:49:48");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (87,"Travis","Beach","adipiscing.enim.mi@augueid.edu","89121494622","LZJ46HWE6TOJSU02UFE0ZAELT52MWH1TZVSW37QPK7GXQUH34BCO1WJBZK62GXX8X","2021-05-04 19:41:22");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (88,"Damian","Oneill","erat.Etiam@Etiam.com","83876334756","CKN40IKN8BEYWZ19XZJ8CARYF69EAK6OWBEO07QFI1QBSSY94GUG5UDBBT32MQX3F","2020-12-21 19:23:06");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (89,"Eugenia","Hammond","lorem.eu.metus@Integersem.com","82991160906","LRC37QWV9XWXLM59KZP4BBHIB97FND8MKGKF78HXW8WUVWT73FFF3YTIVV17WCE6P","2020-12-31 21:49:10");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (90,"Samantha","Hodges","per.conubia.nostra@ipsumPhasellus.co.uk","86402605955","FGP04EWV1ZLLFA87HDM5QVXOY26BKH2XZIGQ32JPU1XHSGO87HCC7IIQXE28PXM1Y","2021-03-04 01:20:00");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (91,"Grady","Carey","consequat.nec@luctus.edu","89677689723","IFO08MIZ7OBAYF55NFB2ABUKF73SAV1LTBOF58CBH9OUBRU22FFL3ITRMZ51YTN7U","2021-05-23 17:10:12");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (92,"Tad","Gillespie","lorem.ac.risus@ligula.org","83713034360","DBH77ETG1LDYMM00QCK9AAYBO82OYZ3OEIAS20TJF4FBWCV58VUJ0TGHCP38CDT8F","2021-08-10 23:47:25");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (93,"Mohammad","Cantrell","ut@vestibulumnec.org","87379499746","BKF39ZRG8RMDZB22SZD2DWXZG52UQR1URQJS59VSY3CKZSB45NDU5LSGCG37CBZ8S","2021-01-25 16:35:44");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (94,"May","Butler","tellus.non.magna@convallisestvitae.net","83262025048","IAP00OUC7ZKPQG91CVE3TPZXR67FNN5HWAYV04IFC1WYSWV51VVQ3XJIUW37NYL4L","2020-09-03 10:49:15");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (95,"Halee","Hines","auctor.odio@imperdieteratnonummy.co.uk","86125960661","UIS89AFM8KMGRN09NYN7WGXZQ72GBS7KICFI93XYN1YKCXA82XSF3KNSCQ09LTA5F","2021-05-22 17:19:02");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (96,"Samuel","Tyson","tempus@scelerisquenequeNullam.ca","85150731375","BEV22LJI8XJZPW23CTZ7QNGRU52XWE7ICQTL10XUQ1PXRMR12YEW0CCBTH10LDJ9T","2021-08-30 17:30:39");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (97,"Igor","Rosario","Aliquam.ornare@Donec.org","89750895146","KAP87WEX8MKVMI70XAT3VSTYC33VFS7RGCMV01CFA6ZHSVQ54DAJ2FFRWX65YHQ3W","2020-09-22 00:32:47");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (98,"Xena","French","Duis.dignissim@tinciduntorciquis.com","85414412961","QQT52FNU9TTRWN73MWB8UWKZE43FBQ9ESIFR02DEV0KFIDW37PNL1GOIAU31QGY4T","2020-12-09 20:29:39");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (99,"Ignacia","Manning","risus@tempor.co.uk","88051721761","WXP81EEV4FUAMX72GZR6BWWOX50NSQ7LFOKJ05PXH1QIFCM92JTF0QRVDD15QLY9O","2021-04-07 22:28:47");
INSERT INTO `users` (`id`,`first_name`,`last_name`,`email`,`phone`,`password_hash`,`created_at`) VALUES (100,"Idola","Whitley","aliquam.enim.nec@mollisInteger.ca","82284986970","UCU14KVS9WWMYX45RMI9ZELIQ39NOL0QDBUL06VKE2KOGYA13MAC9ZMLLZ42DYO3X","2021-08-22 23:04:38");


-- создаем таблицу профилей пользователей со связью 1:1 с табл. пользователей
DROP TABLE IF EXISTS profiles;
CREATE TABLE IF NOT EXISTS profiles(
    user_id SERIAL PRIMARY KEY, -- SERIAL = BIGINT UNSIGNED AUTO_INCREMENT NOT NULL
    gender ENUM('f', 'm', 'x') NOT NULL,
    birthday DATE NOT NULL,
    photo_id BIGINT UNSIGNED,
    country VARCHAR(130),
    city VARCHAR(130),
    -- имя внешнего ключа здесь не задаем (будет автоматом назначено СУБД)
    FOREIGN KEY (user_id) REFERENCES users(id) -- ON DELETE CASCADE ON UPDATE CASCADE
);

-- докидываем сгенерированные данные
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (1,"f","1985-03-16",36,"Uganda","Glendon");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (2,"x","1993-05-17",95,"Montserrat","Codó");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (3,"f","1970-02-16",12,"Sudan","Bègles");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (4,"m","1980-02-17",71,"Paraguay","Charny");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (5,"f","1985-01-16",65,"Aruba","Cromer");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (6,"f","1998-04-10",16,"South Africa","Colorno");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (7,"m","1977-07-14",67,"South Sudan","Goderich");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (8,"f","1974-06-12",84,"Nigeria","Lauder");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (9,"x","1993-03-12",30,"Gibraltar","Bhakkar");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (10,"f","1984-05-06",32,"Peru","Moignelee");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (11,"m","1978-06-22",90,"Thailand","Khuzdar");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (12,"f","1974-07-03",5,"Faroe Islands","Cuddapah");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (13,"x","1982-01-09",43,"Kazakhstan","Columbus");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (14,"m","2000-03-17",92,"Guam","Atlanta");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (15,"x","1996-01-25",79,"Libya","Gavorrano");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (16,"x","1978-05-15",76,"Estonia","Coldstream");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (17,"f","1975-06-05",26,"Japan","Altach");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (18,"m","1973-07-04",55,"Svalbard and Jan Mayen Islands","Mazenzele");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (19,"m","2001-07-11",49,"Nigeria","Pointe-aux-Trembles");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (20,"m","1994-04-11",97,"Romania","Binjai");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (21,"f","2006-01-30",78,"Pakistan","Visso");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (22,"m","1991-07-23",48,"Italy","Gooik");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (23,"x","1967-12-24",58,"Togo","Rancagua");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (24,"f","1978-07-18",71,"Singapore","Zirl");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (25,"m","2005-04-13",49,"South Georgia and The South Sandwich Islands","Spruce Grove");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (26,"m","1971-05-31",79,"Armenia","Southaven");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (27,"f","1989-06-10",6,"Nauru","Teodoro Schmidt");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (28,"m","1994-02-02",58,"Turks and Caicos Islands","Katsina");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (29,"m","1969-05-14",73,"Equatorial Guinea","Naperville");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (30,"x","1992-10-09",89,"Andorra","Coihaique");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (31,"x","1974-06-10",47,"Czech Republic","Jambi");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (32,"x","1966-08-20",61,"Brunei","Heppenheim");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (33,"m","1991-02-06",49,"Heard Island and Mcdonald Islands","Turgutlu");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (34,"x","1989-05-16",96,"French Guiana","Adana");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (35,"m","1972-03-10",79,"Poland","Tielrode");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (36,"x","1975-09-21",45,"United States","Balashikha");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (37,"x","2005-03-08",29,"Bermuda","Episcopia");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (38,"f","1994-02-28",42,"Martinique","Mount Isa");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (39,"m","1987-05-08",32,"Tonga","Dera Bugti");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (40,"f","1987-05-31",56,"Seychelles","Falun");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (41,"f","1974-09-20",68,"Malawi","Soria");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (42,"f","1969-04-14",71,"Northern Mariana Islands","Les Bulles");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (43,"m","1966-08-28",85,"Malaysia","March");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (44,"m","1984-08-01",73,"Laos","Gandhinagar");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (45,"m","1986-01-28",45,"Namibia","Besançon");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (46,"x","1983-03-24",53,"Uzbekistan","Gorakhpur");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (47,"x","1986-04-03",82,"Haiti","Fochabers");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (48,"m","1985-02-01",99,"Qatar","Spijkenisse");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (49,"m","1967-07-31",4,"Croatia","Mandela");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (50,"f","1999-08-01",75,"Portugal","Tocopilla");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (51,"x","1983-11-18",99,"Finland","Pettineo");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (52,"x","1978-03-03",5,"Cuba","Hatfield");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (53,"f","1977-10-27",90,"Ecuador","Turrialba");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (54,"x","1999-05-05",49,"Mozambique","Cerami");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (55,"m","2002-05-01",25,"Suriname","Yeongju");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (56,"x","1992-05-29",64,"Indonesia","Santa Flavia");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (57,"x","1989-02-22",4,"Svalbard and Jan Mayen Islands","Sant'Angelo a Fasanella");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (58,"x","1994-08-03",42,"Bermuda","Orilla");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (59,"x","1994-09-05",71,"Georgia","Cairns");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (60,"m","1989-09-07",66,"Ethiopia","Nampa");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (61,"f","2004-02-20",76,"Saint Martin","San Juan (San Juan de Tibás)");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (62,"f","1970-05-17",9,"Cook Islands","Airdrie");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (63,"x","1997-02-07",87,"Macao","Moricone");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (64,"x","1991-12-25",84,"British Indian Ocean Territory","Amroha");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (65,"f","1977-04-17",11,"French Guiana","Tidore");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (66,"m","1967-10-07",93,"Chile","Malartic");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (67,"x","1977-03-10",17,"Bonaire, Sint Eustatius and Saba","Dawson Creek");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (68,"f","1983-01-11",59,"Israel","Ashburton");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (69,"m","1981-01-05",44,"Saudi Arabia","Santa Cruz");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (70,"m","1971-05-16",12,"Macao","Ramenskoye");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (71,"x","1967-05-06",25,"Grenada","Pali");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (72,"x","1997-05-06",1,"Saint Helena, Ascension and Tristan da Cunha","Middlesbrough");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (73,"m","2001-08-23",17,"Tonga","Tongerlo");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (74,"x","2000-11-25",82,"San Marino","Ujjain");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (75,"m","1980-07-11",41,"Canada","Sambuca Pistoiese");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (76,"m","2005-11-26",21,"Sri Lanka","Izmir");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (77,"f","1990-01-11",66,"Montenegro","Dover");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (78,"x","1969-06-20",94,"Libya","Marchihue");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (79,"f","1995-02-07",40,"Cape Verde","Renca");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (80,"m","1980-07-04",3,"Austria","Lota");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (81,"x","1984-07-18",85,"Ethiopia","Neeroeteren");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (82,"f","1980-08-12",9,"Somalia","Wadgassen");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (83,"f","2004-07-26",86,"Iceland","Vigo");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (84,"m","1986-08-21",77,"Iran","Ladispoli");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (85,"f","1987-01-02",58,"Anguilla","Groß-Gerau");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (86,"m","1972-05-02",28,"Swaziland","Wolfenbüttel");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (87,"x","1973-01-07",96,"Zimbabwe","Cavaso del Tomba");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (88,"f","2005-01-16",53,"Lebanon","Beveren");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (89,"x","2003-09-23",60,"Bahamas","Montgomery");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (90,"m","1971-08-25",25,"Japan","Chaitén");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (91,"f","1986-12-14",90,"Montenegro","Ammanford");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (92,"x","1974-12-24",15,"Vanuatu","Nandyal");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (93,"m","1981-01-30",22,"Gibraltar","Akron");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (94,"m","1983-04-16",9,"Guadeloupe","Dedovsk");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (95,"m","1987-10-16",71,"Guinea","Crystal Springs");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (96,"m","1988-01-20",86,"Montserrat","Valcourt");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (97,"f","1993-08-06",44,"Zambia","Cunco");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (98,"f","1973-05-04",61,"Oman","Rockford");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (99,"x","2005-04-20",16,"Micronesia","Córdoba");
INSERT INTO `profiles` (`user_id`,`gender`,`birthday`,`photo_id`,`country`,`city`) VALUES (100,"f","2000-10-24",47,"South Sudan","Barrancabermeja");

-- создаем таблицу сообщений
DROP TABLE IF EXISTS messages;
CREATE TABLE IF NOT EXISTS messages (
    id SERIAL PRIMARY KEY,
    from_user_id BIGINT UNSIGNED NOT NULL, -- должно быть того же типа, как и тот, на кот. ссылается
    to_user_id BIGINT UNSIGNED NOT NULL,
    txt TEXT NOT NULL,
    is_delivered BOOL DEFAULT FALSE,
    created_at DATETIME NOT NULL DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX messages_from_user_id_idx (from_user_id),  -- имя индекса здесь задаем сами (не отдаем на откуп СУБД)
    INDEX messages_to_user_id_idx (to_user_id),    
    -- добавляем ограничения (с заданными именами) в виде внешних ключей к id пользователей (отправителя и получателя)
    -- префикс в имени "fk_" - необязательный, но желательный для внешних ключей
    CONSTRAINT fk_messages_from_user_id FOREIGN KEY (from_user_id) REFERENCES users(id),
    CONSTRAINT fk_messages_to_user_id FOREIGN KEY (to_user_id) REFERENCES users(id)
);

-- докидываем сгенерированные данные
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (1,61,64,"ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius.","1","2020-10-28 01:22:05","2020-12-04 11:26:42");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (2,34,83,"sit amet ornare lectus","1","2020-02-23 10:12:23","2020-04-19 16:18:16");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (3,71,73,"mattis velit justo","1","2020-05-15 06:03:32","2020-03-16 18:03:37");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (4,44,60,"neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu","1","2020-10-29 18:00:55","2021-03-29 14:28:20");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (5,91,27,"eget lacus. Mauris non dui","0","2021-03-04 01:19:37","2020-05-23 04:45:24");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (6,94,100,"id nunc interdum feugiat. Sed nec","0","2020-09-13 23:35:29","2020-12-09 11:25:03");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (7,90,54,"lorem, luctus ut, pellentesque eget, dictum placerat,","0","2020-05-09 01:26:54","2021-05-09 17:53:38");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (8,76,39,"a, aliquet vel, vulputate eu, odio. Phasellus at augue id","0","2020-11-29 03:02:05","2021-07-25 14:59:19");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (9,76,33,"eget, volutpat ornare, facilisis","0","2020-09-27 12:13:58","2021-06-28 01:13:46");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (10,88,42,"Nunc commodo auctor velit. Aliquam","0","2021-01-22 18:32:10","2021-01-20 00:07:41");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (11,74,29,"ac mattis ornare, lectus","0","2021-05-04 05:29:41","2020-07-09 12:48:46");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (12,2,18,"dolor quam, elementum at,","1","2020-05-31 13:55:39","2021-06-14 06:39:12");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (13,25,74,"sit amet massa. Quisque porttitor eros","0","2020-02-03 14:10:15","2020-09-03 20:46:15");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (14,12,76,"placerat, augue. Sed molestie. Sed id risus quis diam luctus","0","2020-12-07 19:34:32","2020-02-04 11:26:44");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (15,74,32,"dolor vitae dolor. Donec fringilla.","1","2021-01-29 08:47:06","2020-07-29 05:21:37");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (16,4,87,"dui, semper et, lacinia vitae,","1","2020-11-07 10:52:20","2020-05-11 16:19:28");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (17,29,73,"massa. Vestibulum accumsan neque","1","2020-11-26 02:32:23","2020-02-07 10:50:37");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (18,33,50,"nec metus facilisis lorem tristique","0","2020-12-07 00:42:54","2021-07-12 17:24:55");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (19,68,17,"eu nibh vulputate mauris","1","2020-09-15 16:11:39","2021-04-20 09:55:21");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (20,50,43,"sit amet ultricies sem magna nec quam. Curabitur vel lectus.","1","2021-05-11 02:32:24","2020-01-08 11:18:31");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (21,69,27,"auctor, nunc nulla vulputate dui, nec tempus mauris erat","0","2020-05-24 11:06:25","2020-11-24 07:52:05");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (22,47,33,"Duis elementum, dui quis","1","2020-10-06 11:39:17","2021-03-04 01:10:47");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (23,69,58,"sollicitudin adipiscing ligula.","1","2020-08-06 15:38:54","2020-07-19 12:11:13");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (24,30,48,"lectus rutrum urna,","0","2020-05-07 01:34:18","2021-03-28 21:23:22");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (25,80,39,"feugiat placerat velit. Quisque varius. Nam porttitor","0","2021-06-14 08:18:06","2021-05-29 13:23:27");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (26,63,93,"Nam ligula elit, pretium et, rutrum","0","2020-03-07 04:09:06","2021-07-11 02:39:02");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (27,73,76,"ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor","0","2020-10-02 10:38:30","2020-10-05 13:35:22");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (28,56,66,"egestas ligula. Nullam feugiat placerat","0","2020-09-26 16:42:43","2020-05-13 14:53:09");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (29,13,49,"consectetuer euismod est arcu ac orci. Ut semper pretium neque.","0","2021-05-23 16:52:21","2020-10-22 15:06:19");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (30,42,25,"ipsum. Curabitur consequat, lectus sit amet","1","2020-01-10 03:27:02","2020-11-28 01:41:41");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (31,11,49,"nunc. In at pede. Cras","0","2021-04-29 05:50:44","2021-03-23 19:36:28");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (32,59,92,"vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros","1","2020-09-04 01:13:55","2020-08-30 03:25:15");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (33,70,12,"rhoncus. Nullam velit dui, semper","0","2020-06-14 01:32:31","2020-05-01 04:11:00");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (34,12,29,"tortor. Nunc commodo","0","2020-07-25 04:18:07","2020-05-12 23:15:23");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (35,76,25,"tempor bibendum. Donec felis orci, adipiscing","1","2020-11-29 09:41:25","2020-11-24 05:47:46");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (36,72,26,"Nullam enim. Sed","0","2021-08-10 09:21:46","2020-01-23 18:33:46");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (37,38,86,"amet diam eu dolor egestas","0","2021-04-22 00:24:53","2020-03-28 04:26:06");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (38,74,40,"justo eu arcu. Morbi sit amet","1","2021-02-07 18:05:55","2020-04-08 07:42:24");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (39,45,11,"elit, pellentesque a, facilisis non, bibendum sed, est.","0","2020-12-19 16:04:02","2020-10-18 05:23:25");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (40,2,81,"ornare tortor at risus.","1","2021-05-20 13:52:00","2020-07-26 19:48:39");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (41,88,66,"Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem","1","2021-04-23 07:12:18","2021-02-19 06:03:09");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (42,23,12,"porttitor interdum. Sed auctor odio a purus.","0","2021-05-29 23:52:23","2021-02-02 16:21:38");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (43,68,99,"dui. Suspendisse ac metus vitae","0","2021-07-10 19:53:40","2020-07-24 01:43:14");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (44,81,53,"ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate,","0","2020-11-01 09:50:52","2020-09-05 14:58:24");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (45,18,82,"in felis. Nulla tempor augue ac ipsum. Phasellus","1","2021-03-07 15:08:07","2021-01-12 04:29:21");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (46,78,77,"Quisque nonummy ipsum non arcu. Vivamus sit","0","2021-03-14 10:50:28","2020-01-17 09:51:20");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (47,7,52,"eu, accumsan sed, facilisis vitae,","1","2020-05-20 02:36:55","2020-02-19 15:02:46");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (48,9,25,"pharetra, felis eget varius ultrices,","0","2020-11-13 02:23:00","2020-08-05 06:26:26");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (49,97,78,"mus. Aenean eget magna. Suspendisse","0","2020-09-05 10:27:17","2021-06-24 00:23:39");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (50,11,40,"Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla","1","2020-03-02 16:12:04","2020-10-11 01:31:21");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (51,95,1,"egestas ligula. Nullam feugiat placerat","1","2020-04-22 03:42:00","2020-07-01 11:37:58");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (52,29,36,"libero. Donec consectetuer mauris","0","2020-11-02 00:59:55","2021-07-11 19:23:01");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (53,5,73,"commodo auctor velit. Aliquam nisl.","1","2020-03-03 06:23:25","2021-08-09 12:37:18");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (54,26,41,"quis arcu vel quam dignissim pharetra.","0","2020-04-06 06:25:35","2020-06-28 06:17:01");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (55,57,58,"pede, nonummy ut, molestie in,","0","2021-04-14 15:12:22","2020-08-04 20:33:41");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (56,78,34,"scelerisque dui. Suspendisse ac metus vitae velit egestas","0","2020-09-12 01:50:55","2020-05-22 00:47:02");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (57,91,47,"Donec elementum, lorem ut aliquam iaculis, lacus pede","0","2020-05-30 10:21:45","2021-09-01 08:02:31");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (58,54,7,"tellus justo sit amet","1","2021-02-22 06:05:22","2020-04-01 15:48:13");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (59,13,6,"vestibulum lorem, sit amet","1","2020-04-11 07:32:31","2021-06-05 22:15:18");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (60,58,17,"vitae mauris sit","0","2021-08-14 14:28:17","2021-05-12 05:34:53");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (61,10,85,"suscipit, est ac facilisis facilisis, magna tellus faucibus","0","2020-10-22 18:44:31","2021-04-17 09:25:46");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (62,92,59,"egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed","0","2021-04-26 07:16:29","2020-09-02 22:31:28");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (63,5,85,"ridiculus mus. Proin vel arcu eu odio tristique pharetra.","0","2021-04-05 21:22:49","2021-01-13 03:32:44");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (64,84,78,"Nunc ut erat. Sed nunc","1","2021-01-02 16:15:52","2020-03-28 13:41:23");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (65,27,15,"consectetuer adipiscing elit. Etiam laoreet, libero et","0","2021-02-25 17:28:39","2021-08-06 01:02:20");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (66,19,96,"tellus, imperdiet non, vestibulum nec, euismod in,","0","2020-02-10 01:52:22","2020-03-02 15:20:36");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (67,51,19,"vel turpis. Aliquam adipiscing lobortis risus. In mi","0","2021-01-13 02:23:57","2021-06-24 12:24:11");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (68,77,92,"purus. Nullam scelerisque neque sed","1","2020-10-17 21:39:03","2020-12-23 22:32:44");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (69,97,26,"aliquam arcu. Aliquam","0","2021-06-04 23:11:40","2020-01-06 02:43:02");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (70,13,98,"ut quam vel sapien imperdiet ornare.","1","2021-08-24 19:18:04","2020-10-18 05:58:23");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (71,71,70,"commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur","1","2021-03-27 13:44:18","2020-04-17 04:02:33");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (72,67,31,"varius orci, in consequat enim diam vel","1","2020-10-23 14:43:32","2020-08-09 09:32:33");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (73,41,74,"lectus quis massa. Mauris","1","2021-06-20 08:49:16","2020-08-15 17:05:01");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (74,75,82,"ullamcorper. Duis at lacus. Quisque purus sapien, gravida non,","1","2021-04-05 11:36:35","2021-05-20 00:26:09");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (75,89,8,"ultrices. Duis volutpat","1","2020-12-01 20:08:34","2021-01-20 00:46:07");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (76,35,75,"amet metus. Aliquam","0","2021-08-14 11:19:04","2021-07-27 11:38:28");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (77,52,39,"Nulla eu neque pellentesque massa lobortis ultrices.","1","2021-06-01 03:27:54","2020-01-30 05:45:16");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (78,85,49,"aliquet vel, vulputate eu, odio.","0","2020-10-18 21:42:15","2021-06-23 04:51:18");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (79,74,59,"pede. Praesent eu","1","2020-06-17 11:58:35","2020-06-22 01:07:13");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (80,13,53,"consequat, lectus sit amet luctus vulputate, nisi","0","2021-08-27 03:07:59","2020-09-22 19:07:26");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (81,70,48,"augue malesuada malesuada. Integer id magna et ipsum cursus","1","2020-10-22 05:18:27","2021-08-29 22:29:48");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (82,62,92,"id, erat. Etiam vestibulum massa","0","2020-05-26 19:56:55","2021-04-16 23:05:51");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (83,6,97,"eu enim. Etiam","0","2020-08-31 11:12:59","2020-09-14 16:16:27");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (84,50,61,"vitae aliquam eros","1","2021-02-24 10:00:17","2020-02-05 10:33:29");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (85,71,93,"risus. Morbi metus. Vivamus euismod","1","2021-08-18 16:53:52","2020-09-03 03:08:48");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (86,25,67,"Phasellus nulla. Integer vulputate,","0","2020-03-31 23:53:39","2020-11-29 21:05:52");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (87,63,64,"suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in","1","2021-04-14 08:06:00","2020-07-18 10:45:03");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (88,98,16,"lorem. Donec elementum, lorem ut aliquam iaculis,","0","2021-07-26 18:01:31","2020-07-30 06:00:14");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (89,5,88,"volutpat. Nulla facilisis. Suspendisse","1","2020-12-12 21:56:28","2020-11-11 11:34:31");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (90,87,35,"egestas lacinia. Sed congue, elit sed consequat","1","2021-01-02 10:50:15","2020-08-01 09:31:25");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (91,15,30,"massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius","1","2020-10-29 02:20:36","2020-05-14 15:29:32");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (92,24,1,"tincidunt dui augue eu","0","2020-04-29 20:57:52","2021-03-28 15:40:58");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (93,87,4,"magna. Phasellus dolor elit, pellentesque a, facilisis non,","1","2020-03-04 11:05:58","2020-05-01 15:05:33");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (94,28,20,"elementum, lorem ut aliquam iaculis,","1","2020-06-15 21:22:46","2021-08-18 12:29:44");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (95,54,7,"magna tellus faucibus leo, in lobortis tellus justo sit","1","2021-01-12 05:05:35","2021-01-13 17:12:35");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (96,57,79,"nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim.","0","2020-12-08 11:12:03","2020-02-09 09:15:55");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (97,42,57,"lorem lorem, luctus ut, pellentesque","1","2020-01-22 07:54:52","2021-04-13 11:58:56");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (98,99,29,"aliquam eros turpis non enim.","0","2020-11-21 17:18:52","2020-06-19 03:38:51");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (99,78,74,"vestibulum. Mauris magna.","0","2021-01-26 01:39:41","2021-07-12 10:47:45");
INSERT INTO `messages` (`id`,`from_user_id`,`to_user_id`,`txt`,`is_delivered`,`created_at`,`updated_at`) VALUES (100,86,4,"Mauris ut quam vel","1","2021-08-09 12:24:38","2020-05-16 09:45:29");


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
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (93,96,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (16,40,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (82,33,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (22,21,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (67,40,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (99,14,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (98,74,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (98,26,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (11,31,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (63,74,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (58,33,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (57,61,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (3,23,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (93,31,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (41,70,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (52,100,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (21,67,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (18,92,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (23,17,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (100,6,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (4,45,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (40,40,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (61,45,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (77,36,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (41,19,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (81,83,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (50,81,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (66,2,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (63,52,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (55,17,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (40,92,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (56,20,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (62,94,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (62,41,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (20,6,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (10,14,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (80,21,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (62,61,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (92,73,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (3,51,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (26,35,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (95,50,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (95,87,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (60,81,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (80,45,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (46,82,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (30,10,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (16,86,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (70,41,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (69,18,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (41,91,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (82,42,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (34,49,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (58,46,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (92,39,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (14,9,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (15,27,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (88,38,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (37,11,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (14,70,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (35,29,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (89,52,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (18,42,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (51,16,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (67,36,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (35,97,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (80,13,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (74,77,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (49,15,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (82,36,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (51,32,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (39,26,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (46,51,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (49,26,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (94,22,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (1,49,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (64,50,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (60,87,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (69,53,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (24,17,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (32,44,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (65,22,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (29,84,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (86,16,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (38,67,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (34,95,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (4,98,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (93,54,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (81,82,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (84,37,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (24,94,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (72,6,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (29,71,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (22,97,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (88,4,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (59,58,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (85,100,"1");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (73,48,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (66,4,"0");
INSERT INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (34,65,"1");

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
    (DEFAULT, 'GB_Devops_1731', 'Group GB Devops 1731', 66),
    (DEFAULT, 'GB_Design_1686', 'Group GB Design 1686', 13),
    (DEFAULT, 'Smoking room', 'Talk about the futility of everything...', 69);

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

-- сгенерим 50 строк, т.к. не все пользователи могут состоять в группах
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (2,77,"2021-02-15 05:12:29");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (3,51,"2021-03-11 20:52:36");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (1,92,"2021-03-22 13:51:33");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (3,43,"2020-11-28 03:32:47");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (4,89,"2021-01-09 14:47:39");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (3,37,"2021-01-07 11:33:53");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (4,58,"2021-01-29 02:04:45");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (3,67,"2021-06-04 15:27:45");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (2,29,"2020-10-29 15:00:53");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (2,15,"2021-01-23 15:10:37");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (3,36,"2021-07-29 15:28:23");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (1,68,"2021-05-19 23:59:58");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (4,49,"2020-09-25 12:57:33");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (3,38,"2020-11-24 20:26:59");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (1,27,"2021-02-10 15:52:02");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (3,72,"2021-05-25 18:11:31");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (4,12,"2021-07-01 10:27:05");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (3,84,"2021-01-05 22:54:02");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (2,83,"2020-09-04 10:33:15");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (2,46,"2021-06-09 16:47:31");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (3,29,"2021-06-24 06:00:03");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (2,99,"2021-03-02 16:57:56");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (1,99,"2021-04-24 02:37:22");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (2,87,"2021-04-15 15:24:28");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (1,57,"2021-04-11 14:03:15");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (1,14,"2021-04-30 08:21:47");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (2,14,"2021-07-22 09:02:37");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (4,35,"2020-12-14 21:11:36");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (2,4,"2021-05-22 05:16:58");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (2,42,"2021-01-06 00:00:40");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (4,77,"2021-02-05 08:19:44");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (2,7,"2020-10-22 10:26:23");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (1,93,"2020-11-17 08:59:57");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (4,1,"2021-05-12 06:44:19");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (4,95,"2020-11-04 10:23:42");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (4,74,"2021-02-17 03:29:06");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (1,18,"2021-06-21 18:16:22");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (1,13,"2021-06-09 17:17:07");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (1,59,"2021-03-26 06:31:01");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (3,48,"2021-08-04 22:10:20");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (2,24,"2021-06-11 00:26:40");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (3,78,"2021-04-11 10:05:34");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (1,51,"2020-11-18 09:08:47");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (4,87,"2020-09-17 00:06:41");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (1,20,"2020-10-02 05:31:53");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (2,45,"2020-10-16 17:43:34");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (3,89,"2020-10-05 10:01:42");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (1,96,"2020-09-22 03:32:06");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (4,86,"2021-01-24 11:00:15");
INSERT INTO `communities_users` (`community_id`,`user_id`,`created_at`) VALUES (3,66,"2020-11-11 19:45:48");

-- создаем справочник для типов медиа файлов БД нашей "соц. сети"
DROP TABLE IF EXISTS media_types;
CREATE TABLE IF NOT EXISTS media_types(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,  -- типов будет не так много, поэтому не BIGINT
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
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (1,55,3,"feugiat placerat",229905,"2021-05-18 07:23:24");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (2,63,5,"ultricies",832181,"2020-08-16 01:49:30");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (3,87,1,"vulputate ullamcorper magna.",183411,"2020-02-19 23:48:11");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (4,76,2,"quis",888272,"2019-12-27 15:05:24");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (5,94,4,"auctor",922434,"2020-05-25 18:36:12");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (6,44,3,"mi",617880,"2020-11-25 16:57:49");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (7,47,5,"sodales",810544,"2021-04-04 05:07:58");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (8,97,5,"lorem ipsum",55310,"2020-01-12 12:30:01");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (9,26,4,"dictum sapien.",388668,"2021-07-18 06:25:00");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (10,73,2,"dui,",216835,"2020-01-13 14:18:24");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (11,69,3,"mi fringilla mi",658725,"2020-06-07 12:13:42");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (12,97,1,"lacus,",339892,"2019-10-19 05:12:32");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (13,3,5,"Etiam bibendum fermentum",682636,"2021-03-12 12:03:05");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (14,49,2,"porttitor scelerisque neque.",4036,"2020-04-10 05:44:04");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (15,3,5,"euismod et,",293875,"2021-02-24 01:59:20");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (16,90,1,"pede nec",804320,"2021-03-08 09:45:48");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (17,48,5,"sem elit, pharetra",936619,"2021-02-24 19:15:31");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (18,26,1,"fermentum",29115,"2020-08-03 15:13:37");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (19,92,3,"massa. Integer",996002,"2020-09-23 08:20:04");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (20,23,4,"neque vitae semper",255723,"2020-11-22 04:51:43");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (21,21,3,"enim, condimentum eget,",269449,"2020-03-06 14:05:09");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (22,42,4,"consectetuer ipsum nunc",544523,"2020-11-18 09:10:19");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (23,25,4,"Proin dolor. Nulla",817364,"2021-06-28 22:59:56");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (24,6,1,"montes, nascetur",164956,"2019-12-12 15:51:40");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (25,35,2,"erat, in",758480,"2021-07-21 22:42:15");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (26,26,4,"ornare",603149,"2020-11-17 13:09:13");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (27,83,5,"lobortis ultrices. Vivamus",54477,"2021-04-14 19:53:11");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (28,89,4,"ac sem",719131,"2021-02-11 06:33:30");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (29,67,4,"Suspendisse tristique",771555,"2019-12-23 08:03:35");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (30,54,1,"lorem eu metus.",670387,"2020-10-01 03:54:23");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (31,32,2,"molestie tortor nibh",858046,"2019-12-14 21:30:05");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (32,18,3,"auctor non, feugiat",724935,"2020-09-02 21:32:30");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (33,4,2,"fringilla",474534,"2021-05-01 20:40:19");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (34,100,5,"nec tempus mauris",986087,"2021-08-13 00:05:03");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (35,79,3,"vestibulum massa rutrum",450188,"2021-01-01 01:46:28");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (36,84,1,"Suspendisse non",58082,"2020-07-23 19:52:09");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (37,65,1,"a",512382,"2019-11-04 07:59:23");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (38,82,1,"tempor",360592,"2021-06-04 10:42:51");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (39,67,4,"consectetuer, cursus et,",383103,"2020-07-10 18:07:19");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (40,79,5,"facilisis",308579,"2020-05-08 11:07:11");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (41,82,5,"ad",522049,"2020-08-26 04:36:21");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (42,14,3,"convallis, ante lectus",175324,"2021-05-19 04:19:48");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (43,73,5,"Nunc lectus",224715,"2021-03-29 19:29:23");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (44,94,3,"turpis",277340,"2021-05-29 05:03:59");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (45,3,5,"semper",664141,"2021-01-19 00:58:47");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (46,57,2,"molestie dapibus ligula.",291171,"2021-08-22 22:23:06");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (47,78,1,"nibh. Donec est",494815,"2020-01-28 11:37:34");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (48,38,3,"dolor",394196,"2019-12-01 13:33:13");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (49,33,4,"facilisis non, bibendum",228990,"2020-03-15 14:34:52");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (50,58,1,"dictum eu,",329994,"2021-02-02 23:36:02");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (51,60,2,"nunc,",897004,"2021-07-26 03:59:01");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (52,21,1,"convallis convallis",432489,"2019-09-07 08:25:34");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (53,42,4,"ut",541629,"2021-06-01 20:14:48");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (54,13,5,"gravida mauris ut",675274,"2020-08-01 14:29:28");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (55,12,3,"in sodales",932386,"2021-08-16 22:23:47");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (56,46,1,"pellentesque a, facilisis",916764,"2019-11-01 14:08:12");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (57,50,5,"lacus. Aliquam",701395,"2021-08-23 07:36:24");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (58,71,1,"sed sem egestas",262221,"2020-02-02 15:41:15");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (59,22,1,"nisi.",156934,"2021-02-28 09:35:36");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (60,47,4,"Donec nibh",232611,"2021-01-28 05:12:24");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (61,48,2,"nunc sed",1736,"2020-12-03 23:24:29");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (62,22,3,"senectus",482988,"2020-03-26 04:33:36");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (63,2,3,"fringilla ornare placerat,",799123,"2020-05-22 18:11:17");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (64,86,3,"tellus non",509164,"2021-02-15 22:26:49");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (65,82,3,"euismod urna. Nullam",482427,"2021-04-12 00:38:03");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (66,18,2,"nascetur ridiculus mus.",604788,"2021-06-25 01:26:06");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (67,65,2,"commodo at, libero.",361372,"2020-03-01 08:33:09");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (68,1,2,"ornare, facilisis eget,",769981,"2020-07-09 13:39:46");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (69,59,1,"ullamcorper magna.",785569,"2020-05-21 08:20:51");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (70,58,5,"consequat",794932,"2021-05-25 07:01:18");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (71,58,1,"ornare",677779,"2019-12-08 09:46:00");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (72,8,2,"lacus,",50676,"2020-09-25 08:21:11");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (73,85,1,"nec",144652,"2021-02-02 12:34:15");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (74,75,2,"a",258884,"2021-07-20 21:36:39");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (75,76,3,"vulputate, posuere",943447,"2020-11-04 23:30:33");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (76,67,1,"lorem ut aliquam",250773,"2020-11-28 09:04:30");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (77,3,4,"Nunc mauris. Morbi",248799,"2020-09-27 11:31:44");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (78,37,4,"Aenean egestas hendrerit",568381,"2020-07-03 03:33:03");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (79,54,1,"a",40683,"2020-09-27 07:04:25");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (80,2,2,"Ut tincidunt orci",222393,"2021-01-01 03:22:00");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (81,13,2,"elit, pellentesque",792342,"2021-01-10 10:47:39");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (82,28,3,"Nunc sed",189914,"2021-01-01 09:17:27");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (83,39,1,"orci. Donec",695380,"2021-04-01 22:38:55");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (84,61,5,"orci lobortis augue",991469,"2019-09-04 20:26:44");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (85,68,2,"ac sem ut",120685,"2021-04-25 05:35:54");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (86,85,2,"montes, nascetur",996577,"2020-03-21 23:22:34");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (87,25,2,"at pretium aliquet,",799673,"2020-06-04 08:07:26");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (88,28,4,"ipsum",278566,"2021-05-28 08:58:42");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (89,96,2,"aliquet molestie tellus.",884198,"2021-06-10 12:28:09");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (90,77,5,"et libero. Proin",758851,"2020-01-01 08:57:51");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (91,55,5,"sodales elit erat",862973,"2020-05-18 10:11:14");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (92,82,1,"placerat. Cras",654563,"2021-06-13 21:50:36");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (93,38,2,"Duis gravida. Praesent",902057,"2020-03-30 21:24:47");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (94,80,4,"sit amet,",535854,"2020-06-17 23:57:02");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (95,62,2,"tempor arcu. Vestibulum",628753,"2020-03-05 12:04:20");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (96,83,3,"aliquet. Phasellus fermentum",827533,"2019-11-05 13:17:06");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (97,55,4,"adipiscing",169783,"2020-06-19 04:44:40");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (98,54,1,"interdum. Curabitur dictum.",694001,"2020-10-24 12:08:29");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (99,39,4,"ut",910020,"2020-03-03 16:29:02");
INSERT INTO `media` (`id`,`user_id`,`media_types_id`,`file_name`,`file_size`,`created_at`) VALUES (100,3,5,"ultricies adipiscing, enim",431871,"2020-01-15 21:17:12");


/****************************************************************************************************
 * п.2 ДЗ к 3-му занятию - добавляем в базу функциональность для лайков медиа, постов и пользователей
****************************************************************************************************/

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

	
-- справочник целей лайков ("на вырост")
DROP TABLE IF EXISTS likes_target;
CREATE TABLE IF NOT EXISTS likes_target(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    target VARCHAR(150)
);

INSERT INTO likes_target VALUES
    (NULL, 'media'),
    (NULL, 'messages'),
    (NULL, 'users');

    
-- таблица лайков
DROP TABLE IF EXISTS likes;
CREATE TABLE IF NOT EXISTS likes(
    id SERIAL PRIMARY KEY,
    likes_target_id INT UNSIGNED NOT NULL,
    likes_types_id INT UNSIGNED NOT NULL,
    from_user_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME NOT NULL DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    KEY (likes_target_id),
    KEY (from_user_id),
    FOREIGN KEY (likes_target_id) REFERENCES likes_target(id),
    FOREIGN KEY (from_user_id) REFERENCES users(id),
    FOREIGN KEY (likes_types_id) REFERENCES likes_types(id)
);

-- генерим и докидываем данные
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (1,3,3,82,"2017-09-18 15:22:06","2021-02-04 07:52:41");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (2,2,3,6,"2019-06-03 03:24:53","2020-04-30 02:41:53");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (3,2,3,77,"2018-02-06 15:54:16","2020-05-31 10:55:08");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (4,2,3,95,"2019-06-10 21:23:40","2020-04-16 12:08:45");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (5,3,2,96,"2019-06-08 12:21:12","2021-02-10 23:38:35");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (6,2,1,60,"2018-04-26 21:39:30","2019-10-29 07:35:43");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (7,3,1,57,"2019-07-11 16:51:57","2021-08-22 10:13:20");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (8,3,2,66,"2018-06-03 17:25:14","2020-04-12 02:09:27");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (9,2,1,23,"2018-02-12 18:01:00","2021-01-11 10:22:02");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (10,2,3,1,"2018-11-22 06:45:12","2020-01-05 08:53:44");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (11,3,1,6,"2018-01-03 05:17:42","2020-10-05 22:29:13");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (12,2,3,44,"2017-10-15 18:43:39","2021-06-15 07:29:15");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (13,1,3,88,"2018-01-06 10:42:42","2021-01-05 17:59:52");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (14,1,3,29,"2018-12-30 03:53:02","2020-02-25 20:56:37");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (15,2,1,84,"2018-04-27 02:29:41","2020-06-12 19:50:54");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (16,3,1,85,"2019-09-01 06:16:46","2021-04-06 10:24:56");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (17,2,3,71,"2017-10-01 07:35:05","2020-11-29 23:31:49");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (18,3,3,58,"2018-08-16 22:12:31","2021-02-12 17:59:06");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (19,2,2,17,"2019-08-29 06:52:40","2021-01-03 08:58:04");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (20,1,2,67,"2018-05-18 23:10:20","2020-06-16 12:39:08");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (21,1,1,71,"2018-01-01 10:32:09","2021-06-09 14:04:35");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (22,3,3,10,"2018-09-03 10:48:08","2021-06-20 00:54:30");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (23,2,3,80,"2017-09-18 18:40:43","2020-02-17 14:06:38");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (24,1,2,68,"2019-01-09 03:28:32","2020-10-09 05:17:35");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (25,3,1,4,"2018-05-19 06:58:58","2021-02-04 03:48:52");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (26,1,2,72,"2019-02-15 08:09:37","2020-04-14 11:44:57");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (27,1,1,34,"2019-01-08 13:48:31","2021-05-04 03:08:56");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (28,1,3,8,"2017-11-30 22:11:58","2019-10-09 03:31:20");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (29,2,2,2,"2018-10-16 13:12:17","2020-11-04 23:46:04");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (30,1,1,79,"2017-11-22 23:49:57","2020-11-16 10:45:14");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (31,3,1,23,"2019-06-17 10:32:16","2021-04-23 11:11:15");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (32,2,3,7,"2019-08-02 07:09:21","2020-05-02 01:43:25");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (33,2,2,53,"2018-08-01 07:01:19","2020-02-07 09:14:56");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (34,3,1,77,"2018-07-29 09:52:28","2019-12-24 23:51:31");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (35,3,3,3,"2018-07-16 07:44:43","2019-11-15 21:14:35");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (36,1,3,32,"2018-06-27 11:06:09","2020-06-24 20:00:18");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (37,3,3,80,"2019-04-06 03:32:34","2021-04-20 17:38:50");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (38,2,3,43,"2019-07-29 16:16:10","2021-07-17 08:08:12");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (39,1,2,25,"2017-09-16 09:45:24","2021-05-30 14:41:53");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (40,2,2,50,"2018-10-22 09:25:24","2019-11-05 03:52:28");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (41,3,2,94,"2019-04-25 11:30:55","2020-01-04 19:13:52");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (42,3,3,18,"2018-06-01 15:35:16","2020-02-01 11:42:30");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (43,2,1,100,"2019-06-10 23:47:12","2020-09-13 01:51:29");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (44,3,2,48,"2019-07-27 13:46:20","2021-05-05 23:30:01");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (45,1,1,30,"2018-01-12 16:32:43","2021-06-27 02:52:22");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (46,1,2,7,"2019-03-07 11:33:04","2021-02-12 20:33:59");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (47,1,2,70,"2019-04-28 02:33:28","2019-09-05 14:41:11");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (48,3,2,94,"2019-03-26 22:18:19","2021-07-31 22:44:18");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (49,3,3,86,"2017-09-14 15:56:46","2020-01-25 14:36:06");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (50,1,1,45,"2018-01-06 09:04:43","2020-09-18 03:59:42");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (51,1,3,18,"2018-05-09 13:51:24","2020-05-21 12:20:04");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (52,3,1,2,"2018-05-13 10:17:25","2021-05-31 18:11:50");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (53,1,2,8,"2019-06-28 16:23:54","2019-12-14 18:27:28");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (54,1,3,8,"2017-10-01 10:55:58","2019-10-15 05:25:13");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (55,2,2,83,"2019-01-12 05:25:13","2020-11-09 02:03:45");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (56,3,1,61,"2017-10-04 11:40:30","2019-10-29 04:32:55");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (57,2,1,35,"2017-10-19 00:50:59","2019-11-30 19:57:30");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (58,3,2,31,"2019-05-06 18:30:16","2020-02-12 08:44:54");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (59,3,2,21,"2017-11-17 05:30:59","2020-01-11 11:10:04");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (60,3,3,69,"2018-09-15 20:42:07","2019-09-22 13:45:13");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (61,3,3,21,"2018-03-05 17:06:46","2020-10-24 19:33:53");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (62,2,2,33,"2018-06-30 19:44:02","2020-06-07 11:38:30");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (63,1,3,46,"2019-02-21 23:42:17","2019-10-29 13:35:16");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (64,3,3,14,"2018-05-12 04:26:07","2020-09-12 04:41:27");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (65,1,2,22,"2018-09-22 21:18:58","2021-04-21 15:46:47");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (66,3,2,57,"2019-01-12 21:12:28","2021-05-15 23:51:20");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (67,2,1,78,"2018-07-28 20:59:01","2019-10-03 03:50:38");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (68,2,2,85,"2018-11-18 22:47:47","2021-02-27 09:46:21");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (69,3,2,100,"2019-04-24 00:03:31","2021-02-24 03:40:03");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (70,1,2,44,"2018-02-26 16:39:23","2020-12-29 16:11:34");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (71,2,3,24,"2019-05-19 16:30:25","2020-02-12 01:10:16");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (72,1,3,74,"2018-10-17 11:42:47","2021-06-07 18:02:34");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (73,2,2,46,"2019-06-14 20:07:15","2021-02-24 22:31:00");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (74,3,3,79,"2017-09-30 04:04:50","2019-09-02 20:28:51");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (75,1,1,74,"2017-11-14 19:28:43","2019-10-22 02:17:42");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (76,2,2,12,"2018-02-02 00:06:20","2020-05-29 05:16:52");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (77,1,1,50,"2018-09-23 03:22:31","2019-12-31 16:49:11");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (78,1,1,57,"2019-02-11 17:39:01","2019-11-14 08:03:48");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (79,3,1,78,"2017-09-27 15:01:47","2020-10-11 16:57:05");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (80,3,3,62,"2018-09-26 13:52:54","2021-06-16 02:41:51");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (81,3,1,79,"2019-08-01 18:52:40","2021-01-02 20:20:29");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (82,3,1,39,"2018-03-24 22:53:58","2020-02-17 12:50:29");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (83,3,3,67,"2019-04-10 04:10:35","2020-04-24 00:36:00");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (84,2,1,86,"2019-08-16 20:18:39","2020-01-31 10:18:48");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (85,2,1,57,"2017-09-15 23:57:04","2021-07-02 07:00:06");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (86,1,2,4,"2018-10-18 06:42:22","2020-04-24 19:12:41");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (87,3,2,93,"2017-10-24 15:01:47","2021-08-30 18:29:21");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (88,2,3,24,"2018-04-09 19:22:15","2019-11-23 17:47:38");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (89,2,3,97,"2019-06-07 23:35:58","2019-10-07 16:48:13");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (90,1,1,24,"2019-05-18 22:55:57","2019-11-27 18:02:55");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (91,2,2,79,"2017-11-09 21:49:37","2020-11-13 11:16:38");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (92,3,2,98,"2018-02-13 09:45:44","2019-12-05 11:06:26");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (93,3,1,14,"2018-10-22 10:11:05","2020-04-22 11:00:26");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (94,1,1,80,"2018-04-12 01:31:37","2020-05-03 16:24:56");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (95,2,3,36,"2019-04-21 00:15:01","2021-02-05 20:26:41");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (96,2,3,21,"2018-01-21 10:44:32","2021-04-01 05:03:36");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (97,1,2,25,"2018-02-28 09:53:01","2019-09-21 00:43:53");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (98,1,1,10,"2019-05-26 14:46:29","2020-10-04 06:00:56");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (99,3,2,20,"2018-07-24 07:52:24","2020-08-13 08:55:01");
INSERT INTO `likes` (`id`,`likes_target_id`,`likes_types_id`,`from_user_id`,`created_at`,`updated_at`) VALUES (100,1,3,63,"2018-03-15 12:27:12","2019-11-07 00:05:37");
