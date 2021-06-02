DROP DATABASE IF EXISTS `sql_school`;
CREATE DATABASE `sql_school`;
USE `sql_school`;

CREATE TABLE `room`
(
	`room_num` int NOT NULL UNIQUE,
    `capacity` int DEFAULT NULL,
    `type` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`room_num`)
);
INSERT IGNORE INTO `room`  VALUES (100,35,"Aenean");
INSERT IGNORE INTO `room`  VALUES (101,44,"vel,");
INSERT IGNORE INTO `room`  VALUES (102,41,"nibh.");
INSERT IGNORE INTO `room`  VALUES (103,43,"feugiat");
INSERT IGNORE INTO `room`  VALUES (104,44,"mattis.");
INSERT IGNORE INTO `room`  VALUES (105,43,"Class");
INSERT IGNORE INTO `room`  VALUES (106,40,"placerat.");
INSERT IGNORE INTO `room`  VALUES (107,32,"urna");
INSERT IGNORE INTO `room`  VALUES (108,32,"non");
INSERT IGNORE INTO `room`  VALUES (109,47,"lorem,");
INSERT IGNORE INTO `room`  VALUES (110,38,"mi");
INSERT IGNORE INTO `room`  VALUES (111,23,"vitae");
INSERT IGNORE INTO `room`  VALUES (112,35,"ut,");
INSERT IGNORE INTO `room`  VALUES (113,26,"non");
INSERT IGNORE INTO `room`  VALUES (114,45,"elit.");
INSERT IGNORE INTO `room`  VALUES (115,39,"at,");
INSERT IGNORE INTO `room`  VALUES (116,23,"commodo");
INSERT IGNORE INTO `room`  VALUES (117,48,"risus.");
INSERT IGNORE INTO `room`  VALUES (118,49,"dolor");
INSERT IGNORE INTO `room`  VALUES (119,38,"ac");
INSERT IGNORE INTO `room`  VALUES (120,20,"vel,");
INSERT IGNORE INTO `room`  VALUES (121,36,"Suspendisse");
INSERT IGNORE INTO `room`  VALUES (122,22,"enim");
INSERT IGNORE INTO `room`  VALUES (123,47,"tortor");
INSERT IGNORE INTO `room`  VALUES (124,25,"elit.");
INSERT IGNORE INTO `room`  VALUES (125,34,"mattis");
INSERT IGNORE INTO `room`  VALUES (126,49,"mi.");
INSERT IGNORE INTO `room`  VALUES (127,25,"vel");
INSERT IGNORE INTO `room`  VALUES (128,35,"porttitor");
INSERT IGNORE INTO `room`  VALUES (129,34,"Donec");
INSERT IGNORE INTO `room`  VALUES (130,46,"non,");
INSERT IGNORE INTO `room`  VALUES (131,39,"In");
INSERT IGNORE INTO `room`  VALUES (132,31,"in");
INSERT IGNORE INTO `room`  VALUES (133,49,"ultrices.");
INSERT IGNORE INTO `room`  VALUES (134,23,"id,");
INSERT IGNORE INTO `room`  VALUES (135,48,"ac");
INSERT IGNORE INTO `room`  VALUES (136,30,"tempor");
INSERT IGNORE INTO `room`  VALUES (137,39,"dolor.");
INSERT IGNORE INTO `room`  VALUES (138,21,"Nam");
INSERT IGNORE INTO `room`  VALUES (139,46,"non,");
INSERT IGNORE INTO `room`  VALUES (140,25,"et");
INSERT IGNORE INTO `room`  VALUES (141,46,"dapibus");
INSERT IGNORE INTO `room`  VALUES (142,42,"vulputate");
INSERT IGNORE INTO `room`  VALUES (143,38,"Sed");
INSERT IGNORE INTO `room`  VALUES (144,34,"ac");
INSERT IGNORE INTO `room`  VALUES (145,25,"eu");
INSERT IGNORE INTO `room`  VALUES (146,25,"quam.");
INSERT IGNORE INTO `room`  VALUES (147,34,"elit");
INSERT IGNORE INTO `room`  VALUES (148,46,"risus.");
INSERT IGNORE INTO `room`  VALUES (149,33,"lacus.");
INSERT IGNORE INTO `room`  VALUES (150,45,"elit");
INSERT IGNORE INTO `room`  VALUES (151,44,"porttitor");
INSERT IGNORE INTO `room`  VALUES (152,47,"nunc");
INSERT IGNORE INTO `room`  VALUES (153,37,"dis");
INSERT IGNORE INTO `room`  VALUES (154,50,"sed");
INSERT IGNORE INTO `room`  VALUES (155,30,"magna");
INSERT IGNORE INTO `room`  VALUES (156,40,"laoreet");
INSERT IGNORE INTO `room`  VALUES (157,21,"parturient");
INSERT IGNORE INTO `room`  VALUES (158,23,"gravida");
INSERT IGNORE INTO `room`  VALUES (159,40,"Vivamus");
INSERT IGNORE INTO `room`  VALUES (160,26,"enim");
INSERT IGNORE INTO `room`  VALUES (161,28,"habitant");
INSERT IGNORE INTO `room`  VALUES (162,36,"ligula");
INSERT IGNORE INTO `room`  VALUES (163,47,"et");
INSERT IGNORE INTO `room`  VALUES (164,43,"scelerisque");
INSERT IGNORE INTO `room`  VALUES (165,44,"turpis.");
INSERT IGNORE INTO `room`  VALUES (166,23,"odio.");
INSERT IGNORE INTO `room`  VALUES (167,37,"blandit");
INSERT IGNORE INTO `room`  VALUES (168,39,"ut");
INSERT IGNORE INTO `room`  VALUES (169,29,"sem");
INSERT IGNORE INTO `room`  VALUES (170,41,"arcu.");
INSERT IGNORE INTO `room`  VALUES (171,25,"lorem,");
INSERT IGNORE INTO `room`  VALUES (172,38,"massa.");
INSERT IGNORE INTO `room`  VALUES (173,39,"Duis");
INSERT IGNORE INTO `room`  VALUES (174,26,"Phasellus");
INSERT IGNORE INTO `room`  VALUES (175,40,"arcu.");
INSERT IGNORE INTO `room`  VALUES (176,44,"Nulla");
INSERT IGNORE INTO `room`  VALUES (177,38,"quis");
INSERT IGNORE INTO `room`  VALUES (178,29,"risus.");
INSERT IGNORE INTO `room`  VALUES (179,25,"mollis.");
INSERT IGNORE INTO `room`  VALUES (180,27,"facilisis");
INSERT IGNORE INTO `room`  VALUES (181,36,"luctus");
INSERT IGNORE INTO `room`  VALUES (182,37,"sit");
INSERT IGNORE INTO `room`  VALUES (183,20,"euismod");
INSERT IGNORE INTO `room`  VALUES (184,33,"nulla");
INSERT IGNORE INTO `room`  VALUES (185,24,"quam.");
INSERT IGNORE INTO `room`  VALUES (186,46,"nec,");
INSERT IGNORE INTO `room`  VALUES (187,22,"pede.");
INSERT IGNORE INTO `room`  VALUES (188,20,"Integer");
INSERT IGNORE INTO `room`  VALUES (189,37,"Donec");
INSERT IGNORE INTO `room`  VALUES (190,41,"parturient");
INSERT IGNORE INTO `room`  VALUES (191,45,"In");
INSERT IGNORE INTO `room`  VALUES (192,39,"diam");
INSERT IGNORE INTO `room`  VALUES (193,47,"dolor");
INSERT IGNORE INTO `room`  VALUES (194,22,"hendrerit");
INSERT IGNORE INTO `room`  VALUES (195,45,"enim.");
INSERT IGNORE INTO `room`  VALUES (196,28,"dui,");
INSERT IGNORE INTO `room`  VALUES (197,25,"interdum");
INSERT IGNORE INTO `room`  VALUES (198,47,"Nam");
INSERT IGNORE INTO `room`  VALUES (199,27,"ac");

CREATE TABLE `staff` 
(
  `staff_id` int NOT NULL UNIQUE,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `position` varchar(45) NOT NULL,
  `office` int NOT NULL, 
  `birth_date` date DEFAULT NULL,
  `gender` varchar(1) CHECK (`gender` ='M' OR `gender` = 'F') ,
  `ethnicity` varchar(45) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zip` int DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `supervisor` INT DEFAULT NULL,
  FOREIGN KEY (`supervisor`) REFERENCES `staff`(`staff_id`), 
  FOREIGN KEY (`office`) REFERENCES `room`(`room_num`), 
  PRIMARY KEY (`staff_id`)
);

INSERT IGNORE INTO `staff`  VALUES (3000,"Cassidy","Hamish","PP",142,"1979-10-24 ","F","aliquet","832-323 Lacinia Road","Tuscaloosa","AL","36903","(421) 676-7597","consectetuer@rhoncusDonec.co.uk",3000);
INSERT IGNORE INTO `staff`  VALUES (3001,"Ramona","Jasmine","VP",102,"2019-09-26 ","M","semper","832-9155 Mollis. Avenue","Aurora","CO","85233","(494) 628-1368","libero.est@Donecdignissimmagna.com",3001);
INSERT IGNORE INTO `staff`  VALUES (3002,"Colin","Aspen","AD",124,"2013-02-01 ","F","nunc","265-3321 Arcu. Avenue","Saint Paul","MN","21773","(506) 270-3286","facilisis@auctor.net",3010);
INSERT IGNORE INTO `staff`  VALUES (3003,"Claudia","Rhea","HR",131,"1994-09-29 ","F","eu","P.O. Box 981, 5779 Lorem Rd.","Anchorage","AK","99982","(869) 196-3558","ut@diamatpretium.net",3001);
INSERT IGNORE INTO `staff`  VALUES (3004,"Griffin","Shannon","HR",197,"1972-12-06 ","M","accumsan","1569 Ut Street","Ketchikan","AK","99695","(266) 287-5579","Fusce.diam@nequeetnunc.edu",3003);
INSERT IGNORE INTO `staff`  VALUES (3005,"Allen","Magee","AD",100,"2005-05-24 ","M","sociosqu","P.O. Box 251, 4880 Venenatis Rd.","Newark","DE","94266","(484) 997-5778","litora.torquent.per@nullaIntegerurna.org",3013);
INSERT IGNORE INTO `staff`  VALUES (3006,"Kirby","Adrienne","HR",148,"1979-04-23 ","M","amet","Ap #967-9609 Nunc Rd.","Honolulu","HI","36678","(509) 268-8423","non@facilisiSedneque.edu",3013);
INSERT IGNORE INTO `staff`  VALUES (3007,"Hannah","Leila","OTHER",100,"2008-05-10 ","M","ac","Ap #115-3050 Odio Road","Tampa","FL","70742","(446) 959-5850","id.risus.quis@utcursus.com",3013);
INSERT IGNORE INTO `staff`  VALUES (3008,"Zahir","Marsden","AD",108,"2003-06-27 ","M","Proin","944-7752 Integer Av.","Juneau","AK","99807","(872) 691-4204","Lorem.ipsum.dolor@feugiattelluslorem.com",3019);
INSERT IGNORE INTO `staff`  VALUES (3009,"Marshall","Bradley","OTHER",113,"1977-04-18 ","F","velit","917-5314 Tincidunt Rd.","Fayetteville","AR","71651","(957) 469-7703","non.sollicitudin.a@odioNaminterdum.edu",3014);
INSERT IGNORE INTO `staff`  VALUES (3010,"Oscar","Hayden","OTHER",165,"1995-09-17 ","F","sit","P.O. Box 810, 9294 Semper Street","Jacksonville","FL","63160","(450) 140-7013","tellus@eunulla.org",3001);
INSERT IGNORE INTO `staff`  VALUES (3011,"Erasmus","Desirae","OTHER",135,"2003-02-07 ","F","interdum.","2536 Lorem, Street","Lakewood","CO","83600","(860) 812-4866","Maecenas.libero.est@liberomaurisaliquam.net",3002);
INSERT IGNORE INTO `staff`  VALUES (3012,"Stella","Brent","HR",134,"1992-08-29 ","F","ipsum.","189-8704 Velit. Rd.","Naperville","IL","15759","(920) 458-3315","neque.Nullam@nequeMorbiquis.com",3014);
INSERT IGNORE INTO `staff`  VALUES (3013,"Adrienne","Iris","OTHER",129,"1970-07-07 ","M","libero.","P.O. Box 382, 1497 Interdum St.","Broken Arrow","OK","31840","(247) 456-2477","montes@molestiein.org",3012);
INSERT IGNORE INTO `staff`  VALUES (3014,"Emma","Caesar","HR",190,"1977-05-31 ","F","lectus","374-3662 Vitae Ave","Bloomington","MN","56914","(534) 741-9365","nunc@vitaesodalesnisi.net",3001);
INSERT IGNORE INTO `staff`  VALUES (3015,"Alexis","Meredith","AD",132,"2016-05-10 ","F","Etiam","P.O. Box 963, 1532 Luctus. Rd.","Clarksville","TN","73254","(181) 151-5724","arcu.Vestibulum.ante@cursus.net",3007);
INSERT IGNORE INTO `staff`  VALUES (3016,"Audra","Forrest","OTHER",122,"2009-08-30 ","F","ut","Ap #995-7562 Sed Avenue","Jonesboro","AR","71361","(961) 397-2829","tellus.non.magna@iaculis.edu",3010);
INSERT IGNORE INTO `staff`  VALUES (3017,"Mary","Kirestin","AD",156,"2000-12-23 ","M","nunc","868-5466 Tempor Rd.","Atlanta","GA","51827","(724) 273-4453","Suspendisse.eleifend.Cras@Curabiturconsequat.ca",3011);
INSERT IGNORE INTO `staff`  VALUES (3018,"Brennan","Shana","OTHER",119,"2017-02-07 ","F","Donec","Ap #671-2859 Metus. Av.","Springfield","MA","66833","(836) 305-4972","eget.varius@velit.ca",3013);
INSERT IGNORE INTO `staff`  VALUES (3019,"Keelie","Emerson","HR",149,"2018-04-03 ","F","aliquet","P.O. Box 750, 6495 In Rd.","Racine","WI","61230","(620) 425-2976","consequat.dolor.vitae@Phasellus.net",3015);
INSERT IGNORE INTO `staff`  VALUES (3020,"Zenaida","Dillon","AD",169,"2012-05-12 ","F","ac,","974-7955 Mi Rd.","Cheyenne","WY","93215","(796) 959-9013","non@In.edu",3009);
INSERT IGNORE INTO `staff`  VALUES (3021,"Kieran","Carla","HR",138,"2010-07-11 ","F","condimentum.","Ap #491-2080 Cursus, St.","Chattanooga","TN","30420","(510) 693-7485","hendrerit.a@dui.com",3018);
INSERT IGNORE INTO `staff`  VALUES (3022,"Tate","Jamal","AD",177,"2001-08-10 ","F","orci,","Ap #368-4272 Ullamcorper. Rd.","Sandy","UT","86089","(407) 480-5739","sit@convallis.ca",3010);
INSERT IGNORE INTO `staff`  VALUES (3023,"Juliet","Colby","OTHER",137,"1985-03-02 ","M","odio.","Ap #658-2448 Duis Avenue","North Las Vegas","NV","55076","(977) 812-2367","mauris@Duisrisus.org",3009);
INSERT IGNORE INTO `staff`  VALUES (3024,"Bruno","Justin","OTHER",165,"1986-01-28 ","M","eu","143-1875 A Rd.","Georgia","GA","16769","(227) 639-5314","sed.libero.Proin@nisi.ca",3008);
INSERT IGNORE INTO `staff`  VALUES (3025,"Ora","Emi","HR",170,"2013-03-29 ","F","nulla.","7076 Pellentesque Rd.","Rockford","IL","28009","(532) 975-5507","tempus.risus@Sed.org",3003);
INSERT IGNORE INTO `staff`  VALUES (3026,"Kareem","Hedy","HR",184,"2003-01-31 ","M","neque.","221-9238 Hendrerit Rd.","Fort Smith","AR","72312","(434) 278-6525","magna.Ut@ideratEtiam.co.uk",3019);
INSERT IGNORE INTO `staff`  VALUES (3027,"Kadeem","Keegan","HR",167,"1972-01-05 ","F","eget","P.O. Box 506, 3335 Sodales Ave","Harrisburg","PA","40505","(373) 677-8210","montes@urnaUt.ca",3003);
INSERT IGNORE INTO `staff`  VALUES (3028,"Zeph","Robert","AD",145,"2017-05-13 ","M","tempor","2797 Ullamcorper Street","Fort Collins","CO","10685","(650) 628-9145","a.purus@eutellus.com",3002);
INSERT IGNORE INTO `staff`  VALUES (3029,"Cooper","Hammett","HR",153,"1972-10-31 ","F","ac","921-4608 A, Ave","Helena","MT","82415","(201) 292-7322","ante.iaculis@Donec.ca",3019);
INSERT IGNORE INTO `staff`  VALUES (3030,"Kasper","Odette","OTHER",185,"2006-08-31 ","M","mauris","524-6638 Aliquam St.","Lawton","OK","74034","(190) 946-1365","Aliquam.ultrices.iaculis@commodohendreritDonec.org",3015);
INSERT IGNORE INTO `staff`  VALUES (3031,"Vladimir","Branden","HR",171,"1975-03-17 ","F","quis","9547 In Rd.","Fairbanks","AK","99551","(681) 624-9367","luctus.vulputate.nisi@montesnasceturridiculus.edu",3001);
INSERT IGNORE INTO `staff`  VALUES (3032,"Julie","Jane","HR",183,"2007-11-11 ","M","nascetur","P.O. Box 979, 8504 Ornare. Rd.","San Jose","CA","96205","(958) 552-8135","egestas.Aliquam@risusQuisquelibero.org",3005);
INSERT IGNORE INTO `staff`  VALUES (3033,"Lareina","Dexter","AD",181,"1991-06-02 ","M","eu","Ap #568-3724 Molestie Avenue","Montgomery","AL","36331","(221) 222-6557","egestas.ligula.Nullam@pharetrased.ca",3002);
INSERT IGNORE INTO `staff`  VALUES (3034,"Stone","Kiona","OTHER",141,"1970-06-15 ","M","vel,","745-5551 Vehicula Street","Hilo","HI","44820","(377) 260-1626","lorem.eget.mollis@etmagnaPraesent.org",3010);
INSERT IGNORE INTO `staff`  VALUES (3035,"Wing","Maris","AD",125,"1993-12-10 ","M","sapien.","2706 Montes, Ave","Austin","TX","80358","(540) 855-8624","scelerisque.neque@leoVivamus.com",3000);
INSERT IGNORE INTO `staff`  VALUES (3036,"India","Carl","HR",199,"1997-10-06 ","M","nulla.","5985 Vestibulum. Ave","Bellevue","NE","11941","(271) 228-0610","vel.est@penatibusetmagnis.org",3006);
INSERT IGNORE INTO `staff`  VALUES (3037,"Lenore","Richard","AD",149,"1983-09-28 ","F","a","752-2631 Fringilla, Av.","Atlanta","GA","86928","(155) 814-3782","blandit.enim@nisl.com",3004);
INSERT IGNORE INTO `staff`  VALUES (3038,"Grady","Davis","OTHER",132,"1996-10-03 ","F","vulputate","604-4511 Eget, Rd.","Dover","DE","81158","(103) 886-4960","magna.a.tortor@magnisdis.ca",3011);
INSERT IGNORE INTO `staff`  VALUES (3039,"Amos","Quinlan","OTHER",128,"2015-09-02 ","F","lorem","P.O. Box 160, 598 Per Av.","Erie","PA","57716","(797) 784-5379","eget@nonmassanon.com",3017);
INSERT IGNORE INTO `staff`  VALUES (3040,"Phyllis","Winifred","HR",184,"1977-05-12 ","F","Quisque","Ap #923-2949 Quam Rd.","Missoula","MT","90379","(833) 158-0874","Proin.non.massa@iaculis.co.uk",3009);
INSERT IGNORE INTO `staff`  VALUES (3041,"Melodie","Gisela","AD",101,"2003-04-04 ","M","consectetuer","Ap #885-1523 Lobortis Street","Olympia","WA","87072","(638) 158-5887","mus.Aenean.eget@Curabituregestas.ca",3000);
INSERT IGNORE INTO `staff`  VALUES (3042,"Porter","Chastity","HR",101,"1987-04-11 ","M","in","P.O. Box 910, 6869 In, Rd.","Dallas","TX","31667","(222) 266-8054","neque@Pellentesque.com",3016);
INSERT IGNORE INTO `staff`  VALUES (3043,"William","Blair","OTHER",115,"1977-04-27 ","M","aliquam","640-204 Etiam Street","Norfolk","VA","77271","(888) 187-8984","neque.pellentesque.massa@molestie.org",3010);
INSERT IGNORE INTO `staff`  VALUES (3044,"Iona","Herrod","HR",199,"2005-05-12 ","F","neque","Ap #692-9876 Mauris Street","Stamford","CT","74524","(749) 288-4785","volutpat@sedorcilobortis.edu",3011);
INSERT IGNORE INTO `staff`  VALUES (3045,"Rajah","Renee","HR",164,"1986-03-20 ","F","ut","751-4126 Gravida. Rd.","Biloxi","MS","51665","(441) 831-3831","molestie.tellus.Aenean@feugiatnec.ca",3007);
INSERT IGNORE INTO `staff`  VALUES (3046,"Rahim","Hilel","HR",160,"1983-11-09 ","M","lacus.","2027 Cursus, St.","Meridian","ID","23496","(631) 849-6793","Cum.sociis@penatibus.com",3002);
INSERT IGNORE INTO `staff`  VALUES (3047,"Kane","Carly","OTHER",112,"1991-03-27 ","M","nulla","Ap #523-5531 Sed Rd.","Clarksville","TN","71230","(877) 107-7564","dui@Donec.co.uk",3013);
INSERT IGNORE INTO `staff`  VALUES (3048,"Lacota","Fay","OTHER",128,"2012-01-29 ","M","enim","245-7717 Lacus. Ave","Austin","TX","98461","(940) 286-1434","fringilla.purus@liberolacus.org",3006);
INSERT IGNORE INTO `staff`  VALUES (3049,"Josephine","Austin","AD",141,"1997-08-04 ","M","parturient","Ap #323-7292 Facilisis Road","Rochester","MN","41566","(804) 751-7747","rutrum.magna.Cras@anteMaecenasmi.com",3013);



CREATE TABLE `teacher` 
(
  `teacher_id` int NOT NULL UNIQUE,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `office` int NOT NULL, 
  `birth_date` date DEFAULT NULL,
  `gender` varchar(1) CHECK (`gender` ='M' OR `gender` = 'F') ,
  `ethnicity` varchar(45) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zip` int DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
   `supervisor` INT DEFAULT NULL,
   FOREIGN KEY (`office`) REFERENCES `room`(`room_num`),
   FOREIGN KEY (`supervisor`) REFERENCES `staff`(`staff_id`), 
   PRIMARY KEY (`teacher_id`)
);

INSERT IGNORE INTO `teacher`  VALUES (2000,"Gloria","Xenos",192,"1999-11-05 ","F","Donec","Ap #154-4443 Ut Rd.","Montpelier","VT","40464","(225) 822-9438","Ut@ornare.ca",3013);
INSERT IGNORE INTO `teacher`  VALUES (2001,"Jennifer","Iola",167,"1977-12-26 ","M","tempus","7709 Ut Avenue","Portland","OR","79446","(431) 779-1078","ante.blandit@lectusNullamsuscipit.ca",3008);
INSERT IGNORE INTO `teacher`  VALUES (2002,"Kendall","Olga",155,"2015-02-28 ","M","dictum","Ap #389-8476 Eget, Avenue","Cedar Rapids","IA","36856","(195) 788-9612","dictum.eleifend@velitegetlaoreet.org",3008);
INSERT IGNORE INTO `teacher`  VALUES (2003,"Jerry","Maya",164,"1980-02-13 ","F","Cras","Ap #354-6357 Lorem, Ave","Bellevue","NE","87720","(818) 137-0201","aliquam.arcu.Aliquam@quispede.com",3000);
INSERT IGNORE INTO `teacher`  VALUES (2004,"Lilah","Judith",100,"1973-11-21 ","M","nec","Ap #152-5208 Pede. Rd.","Bowling Green","KY","69328","(165) 218-1977","eget@vehicula.org",3019);
INSERT IGNORE INTO `teacher`  VALUES (2005,"Aubrey","Casey",109,"1991-08-08 ","F","mollis","3964 Et Av.","Billings","MT","50393","(173) 753-5541","orci@arcuvel.org",3017);
INSERT IGNORE INTO `teacher`  VALUES (2006,"Merritt","Stacy",139,"2012-07-08 ","F","urna.","300-5835 Aliquet. Avenue","Colchester","VT","61653","(124) 369-3037","lorem@cubiliaCurae.net",3019);
INSERT IGNORE INTO `teacher`  VALUES (2007,"Lester","Quamar",158,"1990-11-16 ","F","magna.","553-3145 Tincidunt St.","Chandler","AZ","85569","(685) 460-1942","volutpat@euismod.co.uk",3015);
INSERT IGNORE INTO `teacher`  VALUES (2008,"Florence","Kasper",102,"1993-03-21 ","F","lectus.","P.O. Box 427, 7206 Neque. Street","Rockford","IL","36227","(395) 681-3510","erat.Etiam@egestaslacinia.edu",3010);
INSERT IGNORE INTO `teacher`  VALUES (2009,"Hamilton","Tucker",128,"2017-03-07 ","M","litora","Ap #384-2338 Mauris Ave","Stamford","CT","81712","(821) 610-5591","consectetuer.adipiscing@elementum.com",3014);
INSERT IGNORE INTO `teacher`  VALUES (2010,"Elvis","Nina",131,"1993-01-25 ","F","nec","778-5910 Ante Ave","Honolulu","HI","39851","(701) 855-3187","mauris@pedeCumsociis.com",3015);
INSERT IGNORE INTO `teacher`  VALUES (2011,"Maryam","Cherokee",103,"2002-05-22 ","M","Maecenas","P.O. Box 810, 7524 Lectus Road","Kaneohe","HI","96476","(274) 223-6083","vitae.odio@NullafacilisisSuspendisse.ca",3005);
INSERT IGNORE INTO `teacher`  VALUES (2012,"Amal","Doris",158,"1975-10-04 ","M","vulputate","P.O. Box 524, 5415 Sem. Road","Lincoln","NE","46332","(533) 779-9825","pede.Cras@aliquetmetus.co.uk",3003);
INSERT IGNORE INTO `teacher`  VALUES (2013,"John","Winter",178,"1978-11-17 ","M","lobortis","P.O. Box 695, 6449 Mauris Ave","Flint","MI","85465","(736) 799-3068","sit.amet.diam@semegestasblandit.org",3007);
INSERT IGNORE INTO `teacher`  VALUES (2014,"Ann","Gloria",103,"1991-09-14 ","M","ac","P.O. Box 996, 6684 Nunc St.","Henderson","NV","99368","(583) 676-1992","vitae.velit.egestas@fermentumfermentumarcu.net",3004);
INSERT IGNORE INTO `teacher`  VALUES (2015,"Chaney","Harrison",118,"2019-06-02 ","M","egestas","P.O. Box 909, 6526 Ut Av.","Houston","TX","11699","(219) 922-8020","ornare.egestas.ligula@vestibulumnequesed.ca",3018);
INSERT IGNORE INTO `teacher`  VALUES (2016,"Akeem","Savannah",117,"2008-06-16 ","F","eu,","Ap #486-303 Sagittis Av.","Independence","MO","35039","(791) 400-4988","placerat.eget@nec.com",3006);
INSERT IGNORE INTO `teacher`  VALUES (2017,"Orlando","Basil",156,"1986-03-10 ","F","adipiscing","P.O. Box 430, 9854 Morbi Ave","Biloxi","MS","64624","(736) 285-7246","id.erat@sem.edu",3005);
INSERT IGNORE INTO `teacher`  VALUES (2018,"Molly","Carissa",184,"2007-05-07 ","M","Vestibulum","6649 Nunc Av.","Montpelier","VT","24924","(444) 941-5481","ipsum.primis@tellusPhaselluselit.co.uk",3005);
INSERT IGNORE INTO `teacher`  VALUES (2019,"Aquila","Tad",155,"2009-09-20 ","M","In","Ap #891-118 Nam Street","Rutland","VT","13857","(782) 793-7364","convallis.est@pede.com",3011);

CREATE TABLE `parent` 
(
  `parent_id` int NOT NULL UNIQUE,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `ethnicity` varchar(45) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zip` int DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`parent_id`)
);

INSERT IGNORE INTO `parent`  VALUES (4000,"Emmanuel","Todd","1980-12-02","M","ultrices.","928 Arcu. Road","Saint Paul","MN","41610","(443) 692-1783","iaculis.nec@parturientmontesnascetur.co.uk");
INSERT IGNORE INTO `parent`  VALUES (4001,"Amena","Juliet","1978-08-05","F","lorem,","P.O. Box 782, 8059 Non Rd.","Wichita","KS","80806","(140) 771-0299","Nunc.sed@semper.edu");
INSERT IGNORE INTO `parent`  VALUES (4002,"Arthur","Rhonda","1994-01-21","M","ut","9538 Vivamus Ave","Casper","WY","50726","(226) 683-0596","Nunc.sed.orci@estmauris.net");
INSERT IGNORE INTO `parent`  VALUES (4003,"Damian","Emery","1963-12-29","M","sem,","761-2072 Purus. Rd.","Boston","MA","89636","(999) 738-8472","bibendum.fermentum.metus@semper.ca");
INSERT IGNORE INTO `parent`  VALUES (4004,"Nicholas","Ferdinand","1967-03-05","M","massa","9005 Etiam Road","Las Vegas","NV","71388","(688) 610-4116","consequat.nec.mollis@duinectempus.co.uk");
INSERT IGNORE INTO `parent`  VALUES (4005,"Shelby","Colleen","1979-07-11","F","feugiat","4191 Eu Avenue","Racine","WI","47874","(816) 721-8722","Sed.neque.Sed@Donecatarcu.net");
INSERT IGNORE INTO `parent`  VALUES (4006,"Kennedy","Beck","1976-06-22","M","imperdiet","763-9211 Felis, Av.","Fort Collins","CO","98648","(157) 216-5597","ultrices.iaculis@orciUtsemper.edu");
INSERT IGNORE INTO `parent`  VALUES (4007,"Denton","Lionel","1992-06-05","F","imperdiet","524-7256 Ultrices Rd.","Joliet","IL","25574","(277) 839-1746","erat.volutpat@lectus.ca");
INSERT IGNORE INTO `parent`  VALUES (4008,"Beatrice","Tana","1987-03-13","M","sagittis.","Ap #298-3133 Magna St.","Bear","DE","23351","(277) 459-7528","molestie@aliquetmagnaa.ca");
INSERT IGNORE INTO `parent`  VALUES (4009,"Ariel","Acton","1993-08-20","M","ipsum.","P.O. Box 634, 2110 Eget Rd.","Duluth","MN","32725","(598) 833-1658","sit@amet.co.uk");
INSERT IGNORE INTO `parent`  VALUES (4010,"Maile","Cairo","1967-10-06","F","risus","734-2483 Magna. Rd.","Kapolei","HI","26213","(462) 575-5229","Integer.urna.Vivamus@eros.com");
INSERT IGNORE INTO `parent`  VALUES (4011,"Myra","Iliana","1962-09-19","M","nec","350-5731 Metus. St.","Reading","PA","88102","(955) 282-1455","montes.nascetur.ridiculus@iaculislacus.com");
INSERT IGNORE INTO `parent`  VALUES (4012,"Brent","Anthony","1994-01-25","F","at","P.O. Box 209, 3873 Facilisis St.","Augusta","GA","32213","(827) 757-2997","velit@adipiscing.co.uk");
INSERT IGNORE INTO `parent`  VALUES (4013,"Marvin","Aladdin","1961-09-27","M","ridiculus","564-7905 Risus Avenue","Spokane","WA","60226","(684) 903-1243","et.rutrum@fringillamilacinia.org");
INSERT IGNORE INTO `parent`  VALUES (4014,"Nelle","Nola","1978-06-29","F","facilisi.","Ap #257-2093 Malesuada Rd.","Essex","VT","37623","(403) 268-4808","euismod.in.dolor@laoreetposuere.com");
INSERT IGNORE INTO `parent`  VALUES (4015,"Forrest","Susan","1986-06-15","F","tincidunt","820-689 Id Rd.","Lexington","KY","16796","(377) 904-4658","Duis.mi.enim@suscipitest.edu");
INSERT IGNORE INTO `parent`  VALUES (4016,"Nathan","Shaine","1971-06-15","M","lobortis","8771 Duis Ave","South Portland","ME","31784","(900) 667-2758","mi@Maurisvestibulumneque.org");
INSERT IGNORE INTO `parent`  VALUES (4017,"Lael","Kelly","1987-08-01","F","vel","Ap #252-1569 Dignissim Road","Harrisburg","PA","24361","(409) 909-7768","erat.eget.tincidunt@natoquepenatibus.ca");
INSERT IGNORE INTO `parent`  VALUES (4018,"Abra","Penelope","1984-07-19","M","vulputate","6688 Semper, Street","Hartford","CT","36897","(194) 304-3029","auctor.odio@acfacilisis.org");
INSERT IGNORE INTO `parent`  VALUES (4019,"Velma","Kieran","1993-11-28","F","ut","Ap #664-1804 Nec Av.","Fort Smith","AR","71397","(509) 397-2886","Sed@facilisis.co.uk");
INSERT IGNORE INTO `parent`  VALUES (4020,"Alfreda","Seth","1965-02-12","M","Nunc","343-6947 Interdum. Avenue","Cambridge","MA","25875","(124) 262-5760","scelerisque.dui.Suspendisse@sit.org");
INSERT IGNORE INTO `parent`  VALUES (4021,"Haviva","Patience","1979-04-01","M","fringilla","P.O. Box 818, 8866 Lorem Av.","Olathe","KS","12652","(430) 434-5623","mattis.Cras@veliteget.net");
INSERT IGNORE INTO `parent`  VALUES (4022,"Igor","Lydia","1979-06-20","F","ipsum.","8750 Nunc St.","West Jordan","UT","74649","(195) 954-7743","et.malesuada.fames@elementum.com");
INSERT IGNORE INTO `parent`  VALUES (4023,"Helen","Cassady","1961-09-16","F","diam","P.O. Box 830, 9949 Malesuada Avenue","Cedar Rapids","IA","22391","(231) 110-1430","semper.cursus.Integer@posuerecubilia.org");
INSERT IGNORE INTO `parent`  VALUES (4024,"Armand","Sonia","1970-12-09","F","ipsum","Ap #710-3274 Ligula Ave","West Jordan","UT","12254","(568) 927-1771","eget@imperdietornare.org");
INSERT IGNORE INTO `parent`  VALUES (4025,"Desirae","Zeus","1981-10-08","F","consectetuer","Ap #812-4604 Tempor Rd.","Allentown","PA","45983","(214) 839-6073","Nunc.commodo.auctor@eu.co.uk");
INSERT IGNORE INTO `parent`  VALUES (4026,"Penelope","Jermaine","1962-01-14","F","lorem,","3546 Blandit Rd.","Rockford","IL","45674","(456) 906-3393","tempor.augue.ac@aliquetsemut.edu");
INSERT IGNORE INTO `parent`  VALUES (4027,"Holly","Germane","1970-07-30","M","eleifend","4203 Dictum Avenue","Joliet","IL","58131","(983) 297-5981","sem.egestas.blandit@pede.co.uk");
INSERT IGNORE INTO `parent`  VALUES (4028,"Kareem","Logan","1990-05-08","F","id,","2938 Iaculis Av.","Butte","MT","19076","(595) 424-1723","nascetur@consequat.ca");
INSERT IGNORE INTO `parent`  VALUES (4029,"Channing","Logan","1963-11-25","M","molestie","6596 Neque. Street","Kaneohe","HI","15855","(827) 444-1415","nisi@atlacus.net");
INSERT IGNORE INTO `parent`  VALUES (4030,"Daphne","Nayda","1989-06-15","F","a,","Ap #511-9417 Ipsum. Street","Saint Paul","MN","57084","(464) 342-0388","justo@luctuslobortis.com");
INSERT IGNORE INTO `parent`  VALUES (4031,"Hamish","Cyrus","1977-08-11","M","Ut","896-2499 Mus. Avenue","Omaha","NE","84938","(322) 412-4413","Fusce.dolor@vestibulum.co.uk");
INSERT IGNORE INTO `parent`  VALUES (4032,"Paula","Patience","1971-12-11","F","Proin","P.O. Box 350, 2987 Quisque St.","Southaven","MS","49119","(654) 737-5587","nec.mollis@ipsumSuspendissesagittis.net");
INSERT IGNORE INTO `parent`  VALUES (4033,"Quinn","Cleo","1981-11-27","M","sociosqu","P.O. Box 299, 2726 Quis, Av.","Honolulu","HI","10507","(775) 629-0283","et.magnis.dis@Maecenas.org");
INSERT IGNORE INTO `parent`  VALUES (4034,"Gillian","Paloma","1987-08-06","M","eget","Ap #585-4520 Erat, Ave","Seattle","WA","34757","(994) 575-7322","volutpat@egetlacus.com");
INSERT IGNORE INTO `parent`  VALUES (4035,"Carolyn","Nyssa","1990-07-01","F","sagittis","9794 Proin St.","Springdale","AR","71438","(152) 235-4447","sem@lobortis.com");
INSERT IGNORE INTO `parent`  VALUES (4036,"Blair","Carson","1980-01-12","M","odio.","P.O. Box 265, 2295 Aliquet Rd.","Cincinnati","OH","57859","(658) 834-9980","sit@Integeraliquamadipiscing.com");
INSERT IGNORE INTO `parent`  VALUES (4037,"Lacy","Carly","1965-05-01","F","egestas.","222-6652 Pellentesque St.","Springfield","IL","61684","(337) 711-1997","ad.litora.torquent@semut.edu");
INSERT IGNORE INTO `parent`  VALUES (4038,"Keaton","Cain","1976-12-21","F","molestie.","Ap #330-1754 Nec, Avenue","Fresno","CA","92887","(813) 894-2814","nec@Nullaeuneque.com");
INSERT IGNORE INTO `parent`  VALUES (4039,"Willa","Elvis","1993-12-17","F","placerat,","666-968 Curabitur Rd.","Cleveland","OH","32149","(699) 916-9578","magnis@pede.edu");
INSERT IGNORE INTO `parent`  VALUES (4040,"John","Akeem","1966-12-21","F","ipsum","7936 Nam Av.","Gresham","OR","87830","(662) 177-4835","felis@sit.com");
INSERT IGNORE INTO `parent`  VALUES (4041,"Katelyn","Barbara","1986-02-06","F","erat.","6477 In Street","Chandler","AZ","86177","(201) 497-4626","Nullam.enim@Quisque.co.uk");
INSERT IGNORE INTO `parent`  VALUES (4042,"Brian","Vincent","1971-07-05","M","in,","P.O. Box 635, 4980 Suspendisse Avenue","Houston","TX","68122","(846) 321-3321","pharetra.sed.hendrerit@tinciduntnuncac.com");
INSERT IGNORE INTO `parent`  VALUES (4043,"William","Alexandra","1965-09-26","M","nec","634-224 Ac Ave","Wilmington","DE","15733","(374) 876-9513","ac@turpisegestasAliquam.edu");
INSERT IGNORE INTO `parent`  VALUES (4044,"Delilah","Eden","1984-06-18","M","elit,","P.O. Box 396, 8372 Nunc Street","Rutland","VT","98502","(307) 457-8999","elit.Curabitur@rutrumFusce.edu");
INSERT IGNORE INTO `parent`  VALUES (4045,"Clementine","Phoebe","1978-04-01","F","non,","Ap #356-6577 Erat. Avenue","Bellevue","WA","39622","(175) 219-7985","eu.nibh@tellus.net");
INSERT IGNORE INTO `parent`  VALUES (4046,"Zoe","Breanna","1992-05-07","F","nunc","P.O. Box 795, 8015 Pede. Street","Annapolis","MD","48346","(522) 721-1952","vel.quam.dignissim@velpede.co.uk");
INSERT IGNORE INTO `parent`  VALUES (4047,"Haviva","Ciara","1986-10-18","M","erat","P.O. Box 920, 7443 Risus, Street","West Valley City","UT","62513","(379) 531-9423","ipsum@augue.com");
INSERT IGNORE INTO `parent`  VALUES (4048,"Amity","Tiger","1985-05-01","M","amet","P.O. Box 516, 7889 Sed Avenue","Columbia","MO","74636","(294) 227-8089","amet.ante.Vivamus@malesuadaut.ca");
INSERT IGNORE INTO `parent`  VALUES (4049,"Wang","Marvin","1969-04-11","M","aliquam","Ap #175-1022 At, Rd.","Shreveport","LA","36450","(362) 138-1584","ullamcorper.nisl@mauriserateget.net");
INSERT IGNORE INTO `parent`  VALUES (4050,"Brynn","MacKensie","1977-03-17","M","nec","P.O. Box 730, 7757 Curae; Avenue","Rockville","MD","37869","(597) 476-8836","mi.felis@augue.edu");
INSERT IGNORE INTO `parent`  VALUES (4051,"Solomon","Akeem","1983-01-01","F","sed,","Ap #866-2093 Lorem Avenue","San Diego","CA","95203","(679) 345-7107","Mauris@vulputateullamcorpermagna.edu");
INSERT IGNORE INTO `parent`  VALUES (4052,"Reuben","Blythe","1972-05-17","F","turpis","416-3694 Facilisis Av.","Casper","WY","76611","(338) 118-0363","et.magnis@scelerisquesedsapien.org");
INSERT IGNORE INTO `parent`  VALUES (4053,"Macaulay","Gwendolyn","1969-09-21","M","odio.","Ap #155-3917 Eu, Ave","Dover","DE","82600","(141) 856-0646","rutrum.urna.nec@risus.ca");
INSERT IGNORE INTO `parent`  VALUES (4054,"Ferdinand","Barbara","1967-06-07","M","diam","P.O. Box 156, 4291 Vehicula Street","Juneau","AK","99725","(760) 667-0247","orci.Donec@maurisIntegersem.net");
INSERT IGNORE INTO `parent`  VALUES (4055,"Denise","Maisie","1968-05-25","M","lacus.","P.O. Box 571, 4674 Augue Street","Bangor","ME","24608","(110) 999-7885","feugiat.metus.sit@euerat.ca");
INSERT IGNORE INTO `parent`  VALUES (4056,"Alec","Violet","1989-07-06","M","nascetur","P.O. Box 719, 606 Lectus St.","Joliet","IL","69114","(318) 151-9782","eros.nec@amalesuadaid.net");
INSERT IGNORE INTO `parent`  VALUES (4057,"Daphne","Riley","1972-12-08","M","posuere","7713 Mus. St.","Racine","WI","75198","(153) 378-8938","Aliquam.nisl.Nulla@arcu.ca");
INSERT IGNORE INTO `parent`  VALUES (4058,"Lynn","Sandra","1962-08-24","F","risus.","391-4193 Ultrices Rd.","Topeka","KS","18734","(591) 884-5748","vestibulum.neque@Namac.co.uk");
INSERT IGNORE INTO `parent`  VALUES (4059,"Yeo","Quemby","1974-03-10","F","taciti","P.O. Box 106, 2610 Neque Avenue","Bridgeport","CT","43590","(450) 773-8355","nulla@suscipitnonummyFusce.ca");
INSERT IGNORE INTO `parent`  VALUES (4060,"Ivor","Orson","1974-04-07","F","Mauris","Ap #679-6779 Morbi St.","Pocatello","ID","24291","(465) 569-6552","fringilla.porttitor.vulputate@idante.net");
INSERT IGNORE INTO `parent`  VALUES (4061,"Xenos","Moses","1994-03-19","M","vel","405-1998 Suspendisse Street","Hillsboro","OR","60486","(312) 868-8721","molestie.pharetra@Cumsociis.net");
INSERT IGNORE INTO `parent`  VALUES (4062,"Quinn","Xantha","1987-04-06","M","et","6746 Egestas. Ave","Columbia","MO","27257","(154) 116-0832","ac.facilisis.facilisis@lacusCras.ca");
INSERT IGNORE INTO `parent`  VALUES (4063,"Noelle","Cathleen","1972-03-18","F","vel","185-9972 In Rd.","Mobile","AL","36917","(141) 291-0513","velit.dui.semper@euismodurnaNullam.com");
INSERT IGNORE INTO `parent`  VALUES (4064,"Xavier","Raja","1993-06-27","M","nascetur","835-2920 Quisque Avenue","Los Angeles","CA","91667","(922) 741-8988","iaculis.odio@Donec.org");
INSERT IGNORE INTO `parent`  VALUES (4065,"Kibo","Martin","1977-09-16","M","dui.","P.O. Box 672, 5017 Nullam Street","Aurora","CO","52528","(674) 654-4688","arcu@ipsumcursus.ca");
INSERT IGNORE INTO `parent`  VALUES (4066,"Roth","Alisa","1985-07-03","F","sem","P.O. Box 172, 9040 Sed Ave","Gaithersburg","MD","65004","(402) 666-8133","Vivamus.euismod.urna@Namacnulla.edu");
INSERT IGNORE INTO `parent`  VALUES (4067,"Fatima","Hilel","1974-01-14","F","a","570-4571 Egestas. Rd.","Norfolk","VA","15459","(637) 174-0093","Sed.congue@dictumProin.edu");
INSERT IGNORE INTO `parent`  VALUES (4068,"Jolene","Phillip","1970-11-01","M","Vivamus","414-4624 Erat St.","Salt Lake City","UT","85029","(256) 180-1050","nulla.Integer.urna@utmolestiein.org");
INSERT IGNORE INTO `parent`  VALUES (4069,"Dawn","Nadine","1967-07-27","M","imperdiet","290-5474 Ut Avenue","Frankfort","KY","42059","(432) 851-4327","molestie@metus.net");
INSERT IGNORE INTO `parent`  VALUES (4070,"Tatum","Harrison","1971-02-04","F","semper","206-9115 Lobortis. Ave","Salt Lake City","UT","16514","(716) 875-1240","arcu.ac.orci@sedhendrerita.co.uk");
INSERT IGNORE INTO `parent`  VALUES (4071,"Ivory","Devin","1964-04-14","M","Vivamus","947-6313 Maecenas Street","Annapolis","MD","62792","(546) 568-2914","placerat.velit.Quisque@feugiat.net");
INSERT IGNORE INTO `parent`  VALUES (4072,"Allen","Barry","1979-10-02","F","Sed","4094 Nostra, Avenue","Frederick","MD","49699","(125) 547-4088","blandit@urnaconvallis.edu");
INSERT IGNORE INTO `parent`  VALUES (4073,"Leandra","Mannix","1985-03-21","M","nibh","937-4629 Placerat Avenue","Madison","WI","49413","(632) 264-3017","Morbi.quis@Ut.edu");
INSERT IGNORE INTO `parent`  VALUES (4074,"Aretha","Florence","1979-05-06","M","sagittis.","Ap #817-6586 Malesuada St.","Portland","ME","26881","(818) 574-5797","magnis@convallis.co.uk");
INSERT IGNORE INTO `parent`  VALUES (4075,"Gavin","Arden","1967-12-29","F","interdum.","P.O. Box 892, 4644 Magna. Rd.","Bellevue","WA","72485","(301) 281-7922","elit.Aliquam@nisi.net");
INSERT IGNORE INTO `parent`  VALUES (4076,"Avram","Wallace","1993-05-15","F","gravida","P.O. Box 967, 924 Dignissim. Rd.","Kenosha","WI","30313","(396) 631-5841","justo.sit.amet@adipiscingelitAliquam.com");
INSERT IGNORE INTO `parent`  VALUES (4077,"Venus","Xavier","1968-03-03","F","eu","655-537 Lorem. Avenue","Olathe","KS","10997","(454) 190-9261","justo.Praesent.luctus@leoinlobortis.ca");
INSERT IGNORE INTO `parent`  VALUES (4078,"Darrel","Kaye","1980-09-17","F","ultricies","1779 Varius Rd.","Hillsboro","OR","40445","(260) 521-0720","Integer.urna.Vivamus@mi.com");
INSERT IGNORE INTO `parent`  VALUES (4079,"Zenia","Leigh","1995-01-02","M","et","1906 Quisque Rd.","Minneapolis","MN","94165","(131) 236-3744","sapien@tinciduntpede.ca");





CREATE TABLE `student` 
(
  `student_id` int NOT NULL UNIQUE,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `level` int CHECK (`level` <=5 AND `level` >0),
  `teacher_id`int NOT NULL, FOREIGN KEY (`teacher_id`) REFERENCES `teacher`(`teacher_id`),
  `parent_id` int NOT NULL, FOREIGN KEY (`parent_id`) REFERENCES `parent`(`parent_id`),
  `ave_grade` int DEFAULT NULL CHECK (`ave_grade` <=100 AND `ave_grade`>=0), 
  `birth_date` date DEFAULT NULL,
  `gender` varchar(1) CHECK (`gender` ='M' OR `gender` = 'F') ,
  `ethnicity` varchar(45) DEFAULT NULL, 
  PRIMARY KEY (`student_id`)
);

INSERT IGNORE INTO `student`  VALUES (1000,"Grady","Colorado",4,2003,4008,11,"2011-01-03 ","F","risus");
INSERT IGNORE INTO `student`  VALUES (1001,"Ori","Jocelyn",1,2000,4064,85,"2011-03-21 ","F","egestas");
INSERT IGNORE INTO `student`  VALUES (1002,"Sydnee","Montana",1,2016,4031,90,"2009-10-20 ","M","Cras");
INSERT IGNORE INTO `student`  VALUES (1003,"Carl","Aristotle",1,2015,4069,22,"2010-07-25 ","M","ante");
INSERT IGNORE INTO `student`  VALUES (1004,"Harlan","Isaiah",3,2008,4050,10,"2012-04-18 ","F","dapibus");
INSERT IGNORE INTO `student`  VALUES (1005,"Linus","Brian",3,2001,4012,58,"2008-06-14 ","M","mauris.");
INSERT IGNORE INTO `student`  VALUES (1006,"Shellie","Vance",4,2003,4066,86,"2012-08-02 ","M","dolor.");
INSERT IGNORE INTO `student`  VALUES (1007,"Jacob","Garrett",4,2016,4040,68,"2011-03-04 ","F","ante");
INSERT IGNORE INTO `student`  VALUES (1008,"Price","Kenyon",5,2011,4037,7,"2012-07-13 ","M","Suspendisse");
INSERT IGNORE INTO `student`  VALUES (1009,"Coby","Germane",3,2012,4048,73,"2008-11-17 ","M","dolor.");
INSERT IGNORE INTO `student`  VALUES (1010,"Shaine","Martin",5,2012,4065,57,"2009-12-12 ","F","in");
INSERT IGNORE INTO `student`  VALUES (1011,"Mallory","Lane",3,2005,4007,81,"2012-04-07 ","M","pede");
INSERT IGNORE INTO `student`  VALUES (1012,"Regan","Nichole",2,2004,4073,9,"2011-08-08 ","F","aliquet");
INSERT IGNORE INTO `student`  VALUES (1013,"Ethan","Hop",4,2018,4034,98,"2008-05-28 ","M","rutrum.");
INSERT IGNORE INTO `student`  VALUES (1014,"Clarke","Isaac",2,2003,4050,55,"2011-12-07 ","F","habitant");
INSERT IGNORE INTO `student`  VALUES (1015,"Kevyn","Drew",2,2010,4059,51,"2008-11-21 ","M","ultrices");
INSERT IGNORE INTO `student`  VALUES (1016,"Declan","Chadwick",1,2008,4058,37,"2012-06-14 ","M","Nullam");
INSERT IGNORE INTO `student`  VALUES (1017,"Kimberley","Clinton",2,2003,4001,28,"2010-04-17 ","M","nisi.");
INSERT IGNORE INTO `student`  VALUES (1018,"Russell","Leigh",4,2018,4079,87,"2009-06-15 ","M","a,");
INSERT IGNORE INTO `student`  VALUES (1019,"McKenzie","Catherine",3,2001,4050,5,"2009-10-13 ","F","Nullam");
INSERT IGNORE INTO `student`  VALUES (1020,"Tanya","Bo",1,2011,4068,94,"2011-10-08 ","F","aliquet");
INSERT IGNORE INTO `student`  VALUES (1021,"Isaiah","Imogene",5,2000,4065,57,"2011-04-07 ","M","arcu");
INSERT IGNORE INTO `student`  VALUES (1022,"Ina","Cara",5,2017,4063,68,"2011-06-09 ","F","scelerisque");
INSERT IGNORE INTO `student`  VALUES (1023,"Joshua","Joshua",1,2007,4007,24,"2008-05-19 ","M","commodo");
INSERT IGNORE INTO `student`  VALUES (1024,"Janna","Barrett",4,2019,4024,31,"2008-11-16 ","F","Phasellus");
INSERT IGNORE INTO `student`  VALUES (1025,"Amery","Colin",1,2004,4051,67,"2013-02-12 ","F","luctus");
INSERT IGNORE INTO `student`  VALUES (1026,"Dale","Melissa",4,2009,4058,37,"2011-04-12 ","M","diam");
INSERT IGNORE INTO `student`  VALUES (1027,"Noble","Avram",3,2006,4073,59,"2011-04-28 ","F","Cum");
INSERT IGNORE INTO `student`  VALUES (1028,"Sylvia","Pamela",4,2002,4021,95,"2011-04-16 ","F","mauris");
INSERT IGNORE INTO `student`  VALUES (1029,"Alexis","Nolan",4,2013,4011,81,"2011-09-28 ","F","vitae");
INSERT IGNORE INTO `student`  VALUES (1030,"Leo","Kaseem",5,2004,4000,5,"2011-05-27 ","F","ac");
INSERT IGNORE INTO `student`  VALUES (1031,"Hilda","Germaine",5,2019,4056,35,"2009-10-22 ","F","rutrum.");
INSERT IGNORE INTO `student`  VALUES (1032,"Inez","Myra",3,2012,4004,83,"2011-09-11 ","F","ultricies");
INSERT IGNORE INTO `student`  VALUES (1033,"Wendy","Kimberley",1,2005,4042,61,"2010-08-01 ","F","In");
INSERT IGNORE INTO `student`  VALUES (1034,"Dale","Zeus",2,2007,4046,6,"2012-08-07 ","F","nec");
INSERT IGNORE INTO `student`  VALUES (1035,"Chloe","Daquan",4,2005,4033,23,"2009-02-26 ","M","Nam");
INSERT IGNORE INTO `student`  VALUES (1036,"Chaney","Paki",4,2010,4057,19,"2012-08-22 ","F","faucibus");
INSERT IGNORE INTO `student`  VALUES (1037,"Leo","Isabelle",5,2011,4020,62,"2012-05-31 ","F","sapien.");
INSERT IGNORE INTO `student`  VALUES (1038,"Owen","Maite",5,2008,4001,55,"2010-01-29 ","M","Proin");
INSERT IGNORE INTO `student`  VALUES (1039,"Rhonda","Benjamin",3,2012,4010,100,"2009-12-19 ","F","vitae");
INSERT IGNORE INTO `student`  VALUES (1040,"Keaton","Stewart",5,2000,4036,86,"2012-08-30 ","F","ante");
INSERT IGNORE INTO `student`  VALUES (1041,"Jason","Celeste",5,2013,4003,95,"2011-06-26 ","F","euismod");
INSERT IGNORE INTO `student`  VALUES (1042,"Jordan","Lana",1,2012,4028,100,"2012-11-03 ","M","neque");
INSERT IGNORE INTO `student`  VALUES (1043,"Rebecca","Ariana",3,2002,4023,28,"2012-05-26 ","F","facilisis.");
INSERT IGNORE INTO `student`  VALUES (1044,"Ori","Daryl",4,2007,4005,3,"2010-02-22 ","F","amet");
INSERT IGNORE INTO `student`  VALUES (1045,"Aubrey","Kadeem",4,2010,4055,94,"2010-10-14 ","M","eleifend");
INSERT IGNORE INTO `student`  VALUES (1046,"Ivory","Illana",2,2007,4009,90,"2010-03-11 ","M","luctus,");
INSERT IGNORE INTO `student`  VALUES (1047,"Naida","Jameson",2,2016,4002,55,"2009-08-26 ","M","magna.");
INSERT IGNORE INTO `student`  VALUES (1048,"Sydney","Doris",2,2012,4013,76,"2008-05-28 ","F","sociosqu");
INSERT IGNORE INTO `student`  VALUES (1049,"Zia","Tyler",3,2018,4072,4,"2010-09-20 ","F","dolor");
INSERT IGNORE INTO `student`  VALUES (1050,"Walter","Tad",4,2000,4056,36,"2010-03-30 ","F","Suspendisse");
INSERT IGNORE INTO `student`  VALUES (1051,"Isabella","Russell",1,2008,4015,52,"2012-10-13 ","M","eget");
INSERT IGNORE INTO `student`  VALUES (1052,"Price","Kyle",1,2019,4068,65,"2008-04-19 ","F","vulputate,");
INSERT IGNORE INTO `student`  VALUES (1053,"Hilel","Plato",2,2010,4056,61,"2010-06-13 ","M","leo.");
INSERT IGNORE INTO `student`  VALUES (1054,"Lucy","Lana",5,2003,4013,49,"2010-06-11 ","F","lacus.");
INSERT IGNORE INTO `student`  VALUES (1055,"Rowan","Piper",2,2018,4066,80,"2013-01-14 ","F","placerat");
INSERT IGNORE INTO `student`  VALUES (1056,"Courtney","Ivana",1,2009,4021,2,"2012-12-05 ","M","fermentum");
INSERT IGNORE INTO `student`  VALUES (1057,"Keaton","Forrest",1,2005,4063,3,"2009-11-05 ","M","ac");
INSERT IGNORE INTO `student`  VALUES (1058,"Myra","Martha",4,2017,4044,60,"2013-01-03 ","M","sit");
INSERT IGNORE INTO `student`  VALUES (1059,"Hadassah","Marvin",5,2018,4047,95,"2010-03-05 ","F","dui,");
INSERT IGNORE INTO `student`  VALUES (1060,"Lydia","Travis",5,2009,4015,1,"2009-09-21 ","M","blandit");
INSERT IGNORE INTO `student`  VALUES (1061,"Christopher","Jemima",2,2006,4062,74,"2009-10-03 ","M","urna");
INSERT IGNORE INTO `student`  VALUES (1062,"Simon","Cassidy",3,2014,4067,23,"2011-08-19 ","M","erat.");
INSERT IGNORE INTO `student`  VALUES (1063,"Stella","Len",3,2006,4054,61,"2011-10-07 ","M","Ut");
INSERT IGNORE INTO `student`  VALUES (1064,"John","Isaac",2,2012,4060,17,"2010-06-20 ","F","quis");
INSERT IGNORE INTO `student`  VALUES (1065,"Dahlia","Denton",1,2013,4007,54,"2011-05-27 ","F","dui.");
INSERT IGNORE INTO `student`  VALUES (1066,"Karina","Mallory",4,2007,4076,55,"2011-02-03 ","M","quis");
INSERT IGNORE INTO `student`  VALUES (1067,"Vaughan","Mia",3,2000,4010,75,"2012-06-11 ","M","Praesent");
INSERT IGNORE INTO `student`  VALUES (1068,"Deborah","Kane",2,2017,4022,69,"2008-05-25 ","F","Donec");
INSERT IGNORE INTO `student`  VALUES (1069,"Suki","Shelley",2,2018,4025,12,"2010-01-20 ","M","Nulla");
INSERT IGNORE INTO `student`  VALUES (1070,"Odette","Briar",3,2001,4061,61,"2012-01-20 ","M","fringilla");
INSERT IGNORE INTO `student`  VALUES (1071,"Rahim","Adrian",5,2006,4043,22,"2011-02-20 ","F","semper.");
INSERT IGNORE INTO `student`  VALUES (1072,"Audrey","Chandler",3,2015,4063,24,"2010-09-26 ","M","pretium");
INSERT IGNORE INTO `student`  VALUES (1073,"Brian","Aiko",5,2011,4021,39,"2008-05-28 ","F","sed");
INSERT IGNORE INTO `student`  VALUES (1074,"Victoria","Lawrence",1,2003,4049,9,"2008-07-18 ","F","eu,");
INSERT IGNORE INTO `student`  VALUES (1075,"Taylor","Dennis",1,2002,4015,41,"2009-07-31 ","F","Mauris");
INSERT IGNORE INTO `student`  VALUES (1076,"Sylvester","Desiree",5,2002,4004,85,"2010-10-11 ","M","In");
INSERT IGNORE INTO `student`  VALUES (1077,"Meredith","Reese",3,2011,4045,23,"2008-08-08 ","F","blandit");
INSERT IGNORE INTO `student`  VALUES (1078,"Hilel","Karleigh",2,2004,4061,58,"2011-10-17 ","M","lorem,");
INSERT IGNORE INTO `student`  VALUES (1079,"Ayanna","Sebastian",4,2003,4019,5,"2008-08-12 ","F","est,");
INSERT IGNORE INTO `student`  VALUES (1080,"Tallulah","Sean",3,2010,4056,29,"2011-04-12 ","F","imperdiet");
INSERT IGNORE INTO `student`  VALUES (1081,"Jin","Abbot",4,2019,4024,32,"2013-03-08 ","F","ullamcorper");
INSERT IGNORE INTO `student`  VALUES (1082,"Chastity","Owen",1,2018,4012,87,"2010-08-27 ","F","hymenaeos.");
INSERT IGNORE INTO `student`  VALUES (1083,"Calvin","Jena",3,2007,4027,100,"2011-06-01 ","F","enim.");
INSERT IGNORE INTO `student`  VALUES (1084,"Demetrius","Chaim",1,2009,4033,44,"2010-10-23 ","F","mollis");
INSERT IGNORE INTO `student`  VALUES (1085,"Ivy","Maile",4,2006,4002,25,"2010-05-05 ","F","Cras");
INSERT IGNORE INTO `student`  VALUES (1086,"Chandler","Patricia",3,2005,4072,80,"2010-07-30 ","F","lorem");
INSERT IGNORE INTO `student`  VALUES (1087,"Candice","Quemby",1,2000,4068,98,"2008-11-17 ","F","ut");
INSERT IGNORE INTO `student`  VALUES (1088,"Nola","Gavin",2,2016,4077,45,"2010-12-04 ","M","nibh");
INSERT IGNORE INTO `student`  VALUES (1089,"Tate","Gray",2,2000,4023,21,"2009-04-22 ","M","eget");
INSERT IGNORE INTO `student`  VALUES (1090,"Wilma","Demetria",5,2004,4027,72,"2013-02-14 ","F","nascetur");
INSERT IGNORE INTO `student`  VALUES (1091,"Mary","Lucius",1,2016,4056,83,"2009-09-20 ","M","Aenean");
INSERT IGNORE INTO `student`  VALUES (1092,"Angelica","Medge",3,2009,4062,1,"2011-11-12 ","F","amet");
INSERT IGNORE INTO `student`  VALUES (1093,"Deborah","Britanni",3,2007,4025,94,"2010-10-17 ","F","Lorem");
INSERT IGNORE INTO `student`  VALUES (1094,"Gretchen","Shoshana",1,2004,4055,33,"2012-09-24 ","M","luctus");
INSERT IGNORE INTO `student`  VALUES (1095,"Kitra","Kiona",1,2012,4054,24,"2011-10-17 ","M","semper");
INSERT IGNORE INTO `student`  VALUES (1096,"Oren","Cameron",4,2012,4026,96,"2012-05-10 ","F","fringilla");
INSERT IGNORE INTO `student`  VALUES (1097,"Charissa","Emmanuel",3,2009,4067,56,"2013-03-31 ","F","mattis");
INSERT IGNORE INTO `student`  VALUES (1098,"Tashya","Carter",3,2000,4058,68,"2009-06-27 ","F","et");
INSERT IGNORE INTO `student`  VALUES (1099,"Owen","Victoria",2,2001,4062,7,"2012-06-20 ","M","ullamcorper.");




CREATE TABLE `club`
(
	`club_name` varchar(45) NOT NULL UNIQUE,
    `leader_ID` int NOT NULL,
    `num_of_mem` int DEFAULT NULL,
    FOREIGN KEY (`leader_ID`) REFERENCES `student`(`student_id`),
    PRIMARY KEY (`club_name`)
);
INSERT IGNORE INTO `club`  VALUES ("Paint It",1029,2);
INSERT IGNORE INTO `club`  VALUES ("Urban Adventurers",1094,40);
INSERT IGNORE INTO `club`  VALUES ("Outdoorsy People",1023,27);
INSERT IGNORE INTO `club`  VALUES ("Urban Profs",1031,48);
INSERT IGNORE INTO `club`  VALUES ("Happy and Single",1078,19);
INSERT IGNORE INTO `club`  VALUES ("More Than Foodies",1013,13);
INSERT IGNORE INTO `club`  VALUES ("Support Your Sport Club",1082,23);
INSERT IGNORE INTO `club`  VALUES ("Birds of a Feather",1004,2);
INSERT IGNORE INTO `club`  VALUES ("Ladies Empower",1065,16);
INSERT IGNORE INTO `club`  VALUES ("Social Elite",1081,20);
INSERT IGNORE INTO `club`  VALUES ("Urban Snob",1049,37);
INSERT IGNORE INTO `club`  VALUES ("Deal Chasers",1037,35);
INSERT IGNORE INTO `club`  VALUES ("Out and About Social Club",1070,41);
INSERT IGNORE INTO `club`  VALUES ("The Pen Club",1032,49);
INSERT IGNORE INTO `club`  VALUES ("Happy, Healthy, Fit",1044,47);
INSERT IGNORE INTO `club`  VALUES ("Seeking Fun",1043,39);
INSERT IGNORE INTO `club`  VALUES ("Seeking Connection",1061,37);
INSERT IGNORE INTO `club`  VALUES ("Tango and Beyond Social Club",1026,39);
INSERT IGNORE INTO `club`  VALUES ("We Are Linked",1089,5);
INSERT IGNORE INTO `club`  VALUES ("The Network",1087,23);


CREATE TABLE `teacher_supervise_club`
(
	`club_name` varchar(45) NOT NULL,
    `supervisor_ID` int NOT NULL,
    `num_of_mem` varchar(45) DEFAULT NULL,
	FOREIGN KEY (`club_name`) REFERENCES `club`(`club_name`),
    FOREIGN KEY (`supervisor_ID`) REFERENCES `teacher`(`teacher_id`),
    PRIMARY KEY(`club_name`,`supervisor_ID`)
);
		        

INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `teacher_supervise_club` (`club_name`, `num_of_mem`, `supervisor_ID`) SELECT `club`.`club_name`, `club`.`num_of_mem`, `teacher`.`teacher_id` FROM `club`, `teacher` ORDER BY RAND() LIMIT 1;


CREATE TABLE `student_join_club`
(
	`club_name` varchar(45) NOT NULL,
    `student_id` int NOT NULL,
    `date_join` date DEFAULT NULL,
	FOREIGN KEY (`club_name`) REFERENCES `club`(`club_name`),
    FOREIGN KEY (`student_id`) REFERENCES `student`(`student_id`),
    PRIMARY KEY(`club_name`,`student_id`)
);

INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `student_join_club` (`club_name`, `student_id`) SELECT `club`.`club_name`,`student`.`student_id` FROM `club`, `student` ORDER BY RAND() LIMIT 1;




CREATE TABLE `event`
(
	`event_name` varchar(45) NOT NULL,
    `event_date` date DEFAULT NULL,
    `cost` int DEFAULT NULL,
    PRIMARY KEY(`event_name`,`event_date`)
);

INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("condimentum. Donec at","2020-10-13",1837);
INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("sit amet luctus","2019-06-11",1946);
INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("orci, consectetuer euismod","2021-01-07",1770);
INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("nunc risus varius","2020-11-01",578);
INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("mauris sapien, cursus","2020-10-02",797);
INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("Aenean gravida nunc","2019-07-01",479);
INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("vestibulum massa rutrum","2020-11-14",117);
INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("quam. Pellentesque habitant","2019-12-10",851);
INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("interdum enim non","2020-12-20",1541);
INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("euismod enim. Etiam","2020-02-19",986);
INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("Suspendisse dui. Fusce","2020-06-08",1477);
INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("Duis volutpat nunc","2019-05-05",1441);
INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("amet, consectetuer adipiscing","2020-08-25",825);
INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("malesuada augue ut","2020-03-04",1130);
INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("dui quis accumsan","2019-10-22",1767);
INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("dui lectus rutrum","2020-06-09",414);
INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("ligula. Aenean gravida","2020-02-02",1721);
INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("tellus sem mollis","2019-09-12",117);
INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("Curabitur ut odio","2021-03-29",1678);
INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("Suspendisse non leo.","2020-05-14",1445);
INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("lacus. Mauris non","2019-08-31",713);
INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("ullamcorper. Duis at","2020-12-15",1853);
INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("arcu. Sed et","2019-11-07",280);
INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("augue scelerisque mollis.","2020-08-28",1053);
INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("semper, dui lectus","2019-07-02",263);
INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("montes, nascetur ridiculus","2020-08-08",383);
INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("elementum, dui quis","2020-08-05",1888);
INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("cursus non, egestas","2020-01-17",402);
INSERT INTO `event` (`event_name`,`event_date`,`cost`) VALUES ("Donec vitae erat","2020-05-23",1913);


CREATE TABLE `staff_manage_event`
(
	`event_name` varchar(45) NOT NULL,
    `event_date` date DEFAULT NULL,
    `manager` int NOT NULL,
    `location` varchar(45) DEFAULT NULL,
    `cost` int DEFAULT NULL,
	FOREIGN KEY (`event_name`, `event_date`) REFERENCES `event`(`event_name`, `event_date`) ON DELETE CASCADE,
    FOREIGN KEY (`manager`) REFERENCES `staff`(`staff_id`),
	PRIMARY KEY(`event_name`,`event_date`)
);

INSERT IGNORE INTO `staff_manage_event` (`event_name`, `event_date`, `manager`, `cost`) SELECT `event`.`event_name`,`event`.`event_date`, `staff`.`staff_id`,`event`.`cost`  FROM `event`, `staff` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `staff_manage_event` (`event_name`, `event_date`, `manager`, `cost`) SELECT `event`.`event_name`,`event`.`event_date`, `staff`.`staff_id`,`event`.`cost` FROM `event`, `staff` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `staff_manage_event` (`event_name`, `event_date`, `manager`, `cost`) SELECT `event`.`event_name`,`event`.`event_date`, `staff`.`staff_id`,`event`.`cost` FROM `event`, `staff` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `staff_manage_event` (`event_name`, `event_date`, `manager`, `cost`) SELECT `event`.`event_name`,`event`.`event_date`, `staff`.`staff_id`,`event`.`cost` FROM `event`, `staff` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `staff_manage_event` (`event_name`, `event_date`, `manager`, `cost`) SELECT `event`.`event_name`,`event`.`event_date`, `staff`.`staff_id`,`event`.`cost` FROM `event`, `staff` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `staff_manage_event` (`event_name`, `event_date`, `manager`, `cost`) SELECT `event`.`event_name`,`event`.`event_date`, `staff`.`staff_id`,`event`.`cost` FROM `event`, `staff` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `staff_manage_event` (`event_name`, `event_date`, `manager`, `cost`) SELECT `event`.`event_name`,`event`.`event_date`, `staff`.`staff_id`,`event`.`cost` FROM `event`, `staff` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `staff_manage_event` (`event_name`, `event_date`, `manager`, `cost`) SELECT `event`.`event_name`,`event`.`event_date`, `staff`.`staff_id`,`event`.`cost` FROM `event`, `staff` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `staff_manage_event` (`event_name`, `event_date`, `manager`, `cost`) SELECT `event`.`event_name`,`event`.`event_date`, `staff`.`staff_id`,`event`.`cost` FROM `event`, `staff` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `staff_manage_event` (`event_name`, `event_date`, `manager`, `cost`) SELECT `event`.`event_name`,`event`.`event_date`, `staff`.`staff_id`,`event`.`cost` FROM `event`, `staff` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `staff_manage_event` (`event_name`, `event_date`, `manager`, `cost`) SELECT `event`.`event_name`,`event`.`event_date`, `staff`.`staff_id`,`event`.`cost` FROM `event`, `staff` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `staff_manage_event` (`event_name`, `event_date`, `manager`, `cost`) SELECT `event`.`event_name`,`event`.`event_date`, `staff`.`staff_id`,`event`.`cost` FROM `event`, `staff` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `staff_manage_event` (`event_name`, `event_date`, `manager`, `cost`) SELECT `event`.`event_name`,`event`.`event_date`, `staff`.`staff_id`,`event`.`cost` FROM `event`, `staff` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `staff_manage_event` (`event_name`, `event_date`, `manager`, `cost`) SELECT `event`.`event_name`,`event`.`event_date`, `staff`.`staff_id`,`event`.`cost` FROM `event`, `staff` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `staff_manage_event` (`event_name`, `event_date`, `manager`, `cost`) SELECT `event`.`event_name`,`event`.`event_date`, `staff`.`staff_id`,`event`.`cost` FROM `event`, `staff` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `staff_manage_event` (`event_name`, `event_date`, `manager`, `cost`) SELECT `event`.`event_name`,`event`.`event_date`, `staff`.`staff_id`,`event`.`cost` FROM `event`, `staff` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `staff_manage_event` (`event_name`, `event_date`, `manager`, `cost`) SELECT `event`.`event_name`,`event`.`event_date`, `staff`.`staff_id`,`event`.`cost` FROM `event`, `staff` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `staff_manage_event` (`event_name`, `event_date`, `manager`, `cost`) SELECT `event`.`event_name`,`event`.`event_date`, `staff`.`staff_id`,`event`.`cost` FROM `event`, `staff` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `staff_manage_event` (`event_name`, `event_date`, `manager`, `cost`) SELECT `event`.`event_name`,`event`.`event_date`, `staff`.`staff_id`,`event`.`cost` FROM `event`, `staff` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `staff_manage_event` (`event_name`, `event_date`, `manager`, `cost`) SELECT `event`.`event_name`,`event`.`event_date`, `staff`.`staff_id`,`event`.`cost` FROM `event`, `staff` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `staff_manage_event` (`event_name`, `event_date`, `manager`, `cost`) SELECT `event`.`event_name`,`event`.`event_date`, `staff`.`staff_id`,`event`.`cost` FROM `event`, `staff` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `staff_manage_event` (`event_name`, `event_date`, `manager`, `cost`) SELECT `event`.`event_name`,`event`.`event_date`, `staff`.`staff_id`,`event`.`cost` FROM `event`, `staff` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `staff_manage_event` (`event_name`, `event_date`, `manager`, `cost`) SELECT `event`.`event_name`,`event`.`event_date`, `staff`.`staff_id`,`event`.`cost` FROM `event`, `staff` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `staff_manage_event` (`event_name`, `event_date`, `manager`, `cost`) SELECT `event`.`event_name`,`event`.`event_date`, `staff`.`staff_id`,`event`.`cost` FROM `event`, `staff` ORDER BY RAND() LIMIT 1;
INSERT IGNORE INTO `staff_manage_event` (`event_name`, `event_date`, `manager`, `cost`) SELECT `event`.`event_name`,`event`.`event_date`, `staff`.`staff_id`,`event`.`cost` FROM `event`, `staff` ORDER BY RAND() LIMIT 1;




CREATE TABLE `homework`
(
	`homework_id` int NOT NULL UNIQUE,
    `due_date` date DEFAULT NULL,
    `ave_grade` int DEFAULT NULL CHECK (`ave_grade` <=100 AND `ave_grade`>=0), 
	`teacher_id` int NOT NULL, 	FOREIGN KEY (`teacher_id`) 
								REFERENCES `teacher`(`teacher_id`),
    `subject` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`homework_id`)
);
INSERT IGNORE INTO `homework`  VALUES (5000,"2019-06-10 ",77,2016,"Nam");
INSERT IGNORE INTO `homework`  VALUES (5001,"2020-06-12 ",51,2009,"eget");
INSERT IGNORE INTO `homework`  VALUES (5002,"2019-11-26 ",37,2009,"risus.");
INSERT IGNORE INTO `homework`  VALUES (5003,"2020-12-16 ",44,2007,"Nam");
INSERT IGNORE INTO `homework`  VALUES (5004,"2019-12-15 ",60,2010,"nec,");
INSERT IGNORE INTO `homework`  VALUES (5005,"2020-01-05 ",5,2002,"Donec");
INSERT IGNORE INTO `homework`  VALUES (5006,"2020-11-29 ",84,2017,"amet");
INSERT IGNORE INTO `homework`  VALUES (5007,"2021-02-03 ",36,2006,"quis,");
INSERT IGNORE INTO `homework`  VALUES (5008,"2020-04-03 ",29,2002,"Donec");
INSERT IGNORE INTO `homework`  VALUES (5009,"2020-08-11 ",58,2013,"per");
INSERT IGNORE INTO `homework`  VALUES (5010,"2019-11-16 ",14,2015,"penatibus");
INSERT IGNORE INTO `homework`  VALUES (5011,"2019-09-22 ",85,2002,"dictum");
INSERT IGNORE INTO `homework`  VALUES (5012,"2020-10-09 ",65,2019,"sem,");
INSERT IGNORE INTO `homework`  VALUES (5013,"2019-08-08 ",13,2000,"neque");
INSERT IGNORE INTO `homework`  VALUES (5014,"2019-05-05 ",6,2018,"Nulla");
INSERT IGNORE INTO `homework`  VALUES (5015,"2019-09-26 ",80,2013,"tristique");
INSERT IGNORE INTO `homework`  VALUES (5016,"2019-12-07 ",97,2010,"amet");
INSERT IGNORE INTO `homework`  VALUES (5017,"2020-10-15 ",68,2000,"molestie");
INSERT IGNORE INTO `homework`  VALUES (5018,"2019-12-04 ",26,2016,"enim.");
INSERT IGNORE INTO `homework`  VALUES (5019,"2019-06-09 ",12,2015,"lacus");
INSERT IGNORE INTO `homework`  VALUES (5020,"2020-08-16 ",17,2007,"Nunc");
INSERT IGNORE INTO `homework`  VALUES (5021,"2020-04-04 ",93,2007,"In");
INSERT IGNORE INTO `homework`  VALUES (5022,"2020-04-05 ",42,2010,"amet,");
INSERT IGNORE INTO `homework`  VALUES (5023,"2020-11-28 ",54,2000,"mauris.");
INSERT IGNORE INTO `homework`  VALUES (5024,"2020-10-07 ",25,2009,"amet");
INSERT IGNORE INTO `homework`  VALUES (5025,"2019-07-24 ",74,2008,"Aliquam");
INSERT IGNORE INTO `homework`  VALUES (5026,"2019-04-17 ",35,2008,"sem.");
INSERT IGNORE INTO `homework`  VALUES (5027,"2019-05-26 ",97,2008,"aliquam,");
INSERT IGNORE INTO `homework`  VALUES (5028,"2020-09-28 ",38,2017,"cursus");
INSERT IGNORE INTO `homework`  VALUES (5029,"2019-10-26 ",36,2001,"Nunc");
INSERT IGNORE INTO `homework`  VALUES (5030,"2019-10-02 ",20,2016,"ridiculus");
INSERT IGNORE INTO `homework`  VALUES (5031,"2019-06-26 ",77,2000,"tincidunt");
INSERT IGNORE INTO `homework`  VALUES (5032,"2019-07-17 ",66,2015,"Donec");
INSERT IGNORE INTO `homework`  VALUES (5033,"2019-06-22 ",24,2006,"urna");
INSERT IGNORE INTO `homework`  VALUES (5034,"2020-04-20 ",74,2013,"semper");
INSERT IGNORE INTO `homework`  VALUES (5035,"2019-04-27 ",50,2016,"magna");
INSERT IGNORE INTO `homework`  VALUES (5036,"2019-10-23 ",20,2018,"velit");
INSERT IGNORE INTO `homework`  VALUES (5037,"2020-02-14 ",91,2002,"non,");
INSERT IGNORE INTO `homework`  VALUES (5038,"2020-04-29 ",45,2012,"posuere");
INSERT IGNORE INTO `homework`  VALUES (5039,"2019-06-22 ",57,2018,"eros");
INSERT IGNORE INTO `homework`  VALUES (5040,"2020-08-02 ",14,2019,"elit");
INSERT IGNORE INTO `homework`  VALUES (5041,"2020-08-19 ",69,2013,"pharetra,");
INSERT IGNORE INTO `homework`  VALUES (5042,"2020-04-09 ",73,2004,"eget");
INSERT IGNORE INTO `homework`  VALUES (5043,"2019-07-20 ",85,2011,"Vestibulum");
INSERT IGNORE INTO `homework`  VALUES (5044,"2021-03-13 ",19,2002,"id,");
INSERT IGNORE INTO `homework`  VALUES (5045,"2019-08-09 ",90,2012,"quis,");
INSERT IGNORE INTO `homework`  VALUES (5046,"2021-01-26 ",56,2005,"magna.");
INSERT IGNORE INTO `homework`  VALUES (5047,"2019-11-24 ",90,2016,"feugiat");
INSERT IGNORE INTO `homework`  VALUES (5048,"2021-02-24 ",26,2001,"ac");
INSERT IGNORE INTO `homework`  VALUES (5049,"2020-11-21 ",42,2011,"dui");
INSERT IGNORE INTO `homework`  VALUES (5050,"2020-07-05 ",48,2004,"risus,");
INSERT IGNORE INTO `homework`  VALUES (5051,"2020-09-29 ",55,2006,"feugiat.");
INSERT IGNORE INTO `homework`  VALUES (5052,"2019-05-25 ",12,2003,"luctus");
INSERT IGNORE INTO `homework`  VALUES (5053,"2019-07-11 ",15,2007,"id");
INSERT IGNORE INTO `homework`  VALUES (5054,"2020-05-11 ",89,2005,"Suspendisse");
INSERT IGNORE INTO `homework`  VALUES (5055,"2020-10-24 ",1,2001,"Suspendisse");
INSERT IGNORE INTO `homework`  VALUES (5056,"2019-07-03 ",51,2003,"ultricies");
INSERT IGNORE INTO `homework`  VALUES (5057,"2020-05-15 ",62,2015,"pede.");
INSERT IGNORE INTO `homework`  VALUES (5058,"2021-03-17 ",51,2018,"eu");
INSERT IGNORE INTO `homework`  VALUES (5059,"2019-06-29 ",12,2005,"erat");
INSERT IGNORE INTO `homework`  VALUES (5060,"2020-02-04 ",45,2004,"sem");
INSERT IGNORE INTO `homework`  VALUES (5061,"2020-08-20 ",46,2014,"neque");
INSERT IGNORE INTO `homework`  VALUES (5062,"2020-09-02 ",94,2016,"non");
INSERT IGNORE INTO `homework`  VALUES (5063,"2020-05-03 ",65,2011,"lacus.");
INSERT IGNORE INTO `homework`  VALUES (5064,"2021-02-09 ",35,2002,"Mauris");
INSERT IGNORE INTO `homework`  VALUES (5065,"2019-04-21 ",41,2000,"scelerisque");
INSERT IGNORE INTO `homework`  VALUES (5066,"2019-12-28 ",28,2017,"dictum");
INSERT IGNORE INTO `homework`  VALUES (5067,"2020-10-19 ",8,2009,"lacinia");
INSERT IGNORE INTO `homework`  VALUES (5068,"2020-04-23 ",1,2006,"eget");
INSERT IGNORE INTO `homework`  VALUES (5069,"2019-10-30 ",9,2019,"Pellentesque");
INSERT IGNORE INTO `homework`  VALUES (5070,"2020-03-22 ",4,2005,"auctor");
INSERT IGNORE INTO `homework`  VALUES (5071,"2020-11-17 ",10,2013,"Nulla");
INSERT IGNORE INTO `homework`  VALUES (5072,"2019-09-05 ",89,2001,"dui,");
INSERT IGNORE INTO `homework`  VALUES (5073,"2020-10-20 ",39,2011,"facilisis.");
INSERT IGNORE INTO `homework`  VALUES (5074,"2020-02-13 ",17,2006,"Aliquam");
INSERT IGNORE INTO `homework`  VALUES (5075,"2020-11-15 ",100,2018,"dis");
INSERT IGNORE INTO `homework`  VALUES (5076,"2020-11-08 ",60,2009,"Donec");
INSERT IGNORE INTO `homework`  VALUES (5077,"2020-02-12 ",33,2017,"dolor");
INSERT IGNORE INTO `homework`  VALUES (5078,"2020-06-23 ",18,2013,"tristique");
INSERT IGNORE INTO `homework`  VALUES (5079,"2020-02-23 ",92,2002,"scelerisque");
INSERT IGNORE INTO `homework`  VALUES (5080,"2020-12-26 ",92,2002,"mauris.");
INSERT IGNORE INTO `homework`  VALUES (5081,"2020-09-07 ",25,2014,"ipsum");
INSERT IGNORE INTO `homework`  VALUES (5082,"2020-12-10 ",92,2004,"semper");
INSERT IGNORE INTO `homework`  VALUES (5083,"2020-05-05 ",13,2012,"congue,");
INSERT IGNORE INTO `homework`  VALUES (5084,"2020-04-11 ",42,2010,"at");
INSERT IGNORE INTO `homework`  VALUES (5085,"2019-05-06 ",64,2006,"Nunc");
INSERT IGNORE INTO `homework`  VALUES (5086,"2019-06-23 ",40,2001,"ornare,");
INSERT IGNORE INTO `homework`  VALUES (5087,"2020-10-13 ",43,2017,"Aenean");
INSERT IGNORE INTO `homework`  VALUES (5088,"2020-09-10 ",77,2015,"mauris");
INSERT IGNORE INTO `homework`  VALUES (5089,"2020-03-17 ",99,2018,"dictum");
INSERT IGNORE INTO `homework`  VALUES (5090,"2021-03-07 ",38,2015,"molestie");
INSERT IGNORE INTO `homework`  VALUES (5091,"2020-11-21 ",8,2013,"ac");
INSERT IGNORE INTO `homework`  VALUES (5092,"2021-04-17 ",42,2000,"eu,");
INSERT IGNORE INTO `homework`  VALUES (5093,"2019-12-03 ",50,2000,"amet");
INSERT IGNORE INTO `homework`  VALUES (5094,"2019-08-22 ",25,2005,"Aliquam");
INSERT IGNORE INTO `homework`  VALUES (5095,"2020-11-22 ",51,2018,"quam");
INSERT IGNORE INTO `homework`  VALUES (5096,"2020-01-21 ",31,2005,"facilisis,");
INSERT IGNORE INTO `homework`  VALUES (5097,"2020-10-14 ",61,2000,"dui");
INSERT IGNORE INTO `homework`  VALUES (5098,"2020-03-23 ",75,2006,"at");
INSERT IGNORE INTO `homework`  VALUES (5099,"2019-05-24 ",50,2007,"amet");



CREATE TABLE `student_has_homework`
(
	`homework_id` int NOT NULL,
    `student_id` int NOT NULL,
    `due_date` date DEFAULT NULL,
	`grade` int DEFAULT NULL CHECK (`grade` <=100 AND `grade`>=0), 
    `subject` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`homework_id`, `student_id`),
	FOREIGN KEY (`student_id`) REFERENCES `student`(`student_id`) ON DELETE CASCADE,
	FOREIGN KEY (`homework_id`) REFERENCES `homework`(`homework_id`) ON DELETE CASCADE
);

INSERT IGNORE INTO `student_has_homework` (`homework_id`,`student_id`, `due_date`,`subject`) 
			SELECT `homework`.`homework_id`, `student`.`student_id`,`homework`.`due_date`, `homework`.`subject`
			FROM `homework` 
            INNER JOIN `student` 
            ON `student`.`teacher_id` = `homework`.`teacher_id` ORDER BY `student_id`;



CREATE TABLE `exam`
(
	`exam_id` int NOT NULL UNIQUE,
    `exam_date` date DEFAULT NULL,
	`ave_grade` int DEFAULT NULL
			CHECK (`ave_grade` <=100 AND `ave_grade`>=0), 
	`room_num` int NOT NULL, FOREIGN KEY (`room_num`) REFERENCES `room`(`room_num`),
    `type` varchar(45),
	`teacher_id` int NOT NULL, 	FOREIGN KEY (`teacher_id`) 
								REFERENCES `teacher`(`teacher_id`),
    `subject` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`exam_id`)
);
INSERT IGNORE INTO `exam`  VALUES (6000,"2020-12-19",74,175,"FIN",2018,"dolor.");
INSERT IGNORE INTO `exam`  VALUES (6001,"2020-09-06",83,185,"MID",2016,"arcu");
INSERT IGNORE INTO `exam`  VALUES (6002,"2020-07-24",95,112,"FIN",2010,"ut,");
INSERT IGNORE INTO `exam`  VALUES (6003,"2020-05-08",22,101,"OTHER",2017,"Proin");
INSERT IGNORE INTO `exam`  VALUES (6004,"2019-10-04",50,127,"FIN",2019,"Aliquam");
INSERT IGNORE INTO `exam`  VALUES (6005,"2019-09-14",30,156,"OTHER",2018,"a");
INSERT IGNORE INTO `exam`  VALUES (6006,"2019-10-09",22,193,"FIN",2013,"est");
INSERT IGNORE INTO `exam`  VALUES (6007,"2019-06-11",16,100,"FIN",2009,"nisl.");
INSERT IGNORE INTO `exam`  VALUES (6008,"2019-07-31",40,192,"FIN",2012,"eget");
INSERT IGNORE INTO `exam`  VALUES (6009,"2020-09-06",86,162,"MID",2005,"in");
INSERT IGNORE INTO `exam`  VALUES (6010,"2020-09-17",88,131,"MID",2005,"Mauris");
INSERT IGNORE INTO `exam`  VALUES (6011,"2019-09-09",79,124,"FIN",2000,"pellentesque");
INSERT IGNORE INTO `exam`  VALUES (6012,"2020-12-27",8,198,"FIN",2019,"Curae;");
INSERT IGNORE INTO `exam`  VALUES (6013,"2020-12-19",50,169,"MID",2000,"nascetur");
INSERT IGNORE INTO `exam`  VALUES (6014,"2020-04-01",98,141,"MID",2014,"nascetur");
INSERT IGNORE INTO `exam`  VALUES (6015,"2019-11-22",40,118,"OTHER",2012,"quam");
INSERT IGNORE INTO `exam`  VALUES (6016,"2019-07-25",15,123,"FIN",2008,"turpis");
INSERT IGNORE INTO `exam`  VALUES (6017,"2020-04-11",30,181,"MID",2015,"feugiat");
INSERT IGNORE INTO `exam`  VALUES (6018,"2020-05-17",1,138,"OTHER",2002,"dapibus");
INSERT IGNORE INTO `exam`  VALUES (6019,"2020-06-13",29,122,"OTHER",2013,"eu");
INSERT IGNORE INTO `exam`  VALUES (6020,"2020-07-17",78,118,"OTHER",2018,"Morbi");
INSERT IGNORE INTO `exam`  VALUES (6021,"2019-05-27",13,109,"FIN",2017,"rutrum");
INSERT IGNORE INTO `exam`  VALUES (6022,"2021-03-05",81,187,"FIN",2016,"eleifend");
INSERT IGNORE INTO `exam`  VALUES (6023,"2020-11-14",43,106,"FIN",2002,"at,");
INSERT IGNORE INTO `exam`  VALUES (6024,"2020-06-23",50,146,"FIN",2015,"enim.");
INSERT IGNORE INTO `exam`  VALUES (6025,"2020-08-21",57,187,"FIN",2015,"facilisis,");
INSERT IGNORE INTO `exam`  VALUES (6026,"2021-01-09",97,184,"FIN",2018,"Aliquam");
INSERT IGNORE INTO `exam`  VALUES (6027,"2020-04-26",96,187,"MID",2014,"faucibus");
INSERT IGNORE INTO `exam`  VALUES (6028,"2020-11-02",68,167,"FIN",2013,"Suspendisse");
INSERT IGNORE INTO `exam`  VALUES (6029,"2020-05-03",36,119,"OTHER",2018,"ligula");
INSERT IGNORE INTO `exam`  VALUES (6030,"2019-05-16",14,153,"OTHER",2011,"nec");
INSERT IGNORE INTO `exam`  VALUES (6031,"2019-05-25",24,169,"MID",2008,"semper");
INSERT IGNORE INTO `exam`  VALUES (6032,"2020-05-12",42,133,"MID",2005,"aliquet");
INSERT IGNORE INTO `exam`  VALUES (6033,"2019-08-13",15,158,"OTHER",2017,"libero.");
INSERT IGNORE INTO `exam`  VALUES (6034,"2020-05-28",98,195,"OTHER",2001,"odio");
INSERT IGNORE INTO `exam`  VALUES (6035,"2020-12-03",40,131,"FIN",2004,"luctus");
INSERT IGNORE INTO `exam`  VALUES (6036,"2020-07-31",97,118,"MID",2007,"et,");
INSERT IGNORE INTO `exam`  VALUES (6037,"2019-09-03",95,125,"MID",2003,"sollicitudin");
INSERT IGNORE INTO `exam`  VALUES (6038,"2019-09-06",64,180,"MID",2012,"dictum");
INSERT IGNORE INTO `exam`  VALUES (6039,"2020-03-07",19,178,"MID",2000,"luctus,");
INSERT IGNORE INTO `exam`  VALUES (6040,"2020-03-10",61,126,"MID",2019,"dictum");
INSERT IGNORE INTO `exam`  VALUES (6041,"2019-10-21",44,121,"MID",2003,"consectetuer,");
INSERT IGNORE INTO `exam`  VALUES (6042,"2019-08-08",32,103,"MID",2000,"tortor");
INSERT IGNORE INTO `exam`  VALUES (6043,"2020-08-23",15,127,"MID",2001,"quam.");
INSERT IGNORE INTO `exam`  VALUES (6044,"2019-06-29",42,112,"OTHER",2015,"Donec");
INSERT IGNORE INTO `exam`  VALUES (6045,"2020-01-16",99,131,"OTHER",2009,"nec");
INSERT IGNORE INTO `exam`  VALUES (6046,"2020-03-30",57,174,"MID",2019,"vehicula");
INSERT IGNORE INTO `exam`  VALUES (6047,"2020-09-21",56,122,"FIN",2012,"ullamcorper");
INSERT IGNORE INTO `exam`  VALUES (6048,"2020-05-19",13,191,"OTHER",2016,"sit");
INSERT IGNORE INTO `exam`  VALUES (6049,"2020-07-13",93,167,"FIN",2006,"nonummy");
INSERT IGNORE INTO `exam`  VALUES (6050,"2020-04-18",26,188,"FIN",2006,"egestas");
INSERT IGNORE INTO `exam`  VALUES (6051,"2020-12-16",25,119,"MID",2000,"interdum");
INSERT IGNORE INTO `exam`  VALUES (6052,"2019-09-08",79,123,"OTHER",2015,"In");
INSERT IGNORE INTO `exam`  VALUES (6053,"2019-04-20",64,100,"MID",2008,"eu");
INSERT IGNORE INTO `exam`  VALUES (6054,"2021-03-26",95,159,"OTHER",2012,"dolor");
INSERT IGNORE INTO `exam`  VALUES (6055,"2021-02-17",24,176,"MID",2005,"at");
INSERT IGNORE INTO `exam`  VALUES (6056,"2020-05-09",72,138,"OTHER",2012,"Cras");
INSERT IGNORE INTO `exam`  VALUES (6057,"2019-06-13",25,134,"FIN",2013,"In");
INSERT IGNORE INTO `exam`  VALUES (6058,"2019-08-03",54,140,"MID",2001,"dolor");
INSERT IGNORE INTO `exam`  VALUES (6059,"2021-02-08",84,185,"MID",2006,"ipsum");
INSERT IGNORE INTO `exam`  VALUES (6060,"2020-04-11",67,123,"MID",2018,"justo");
INSERT IGNORE INTO `exam`  VALUES (6061,"2019-06-03",39,127,"FIN",2013,"euismod");
INSERT IGNORE INTO `exam`  VALUES (6062,"2020-06-02",94,133,"OTHER",2015,"ipsum");
INSERT IGNORE INTO `exam`  VALUES (6063,"2020-10-11",31,152,"FIN",2003,"Integer");
INSERT IGNORE INTO `exam`  VALUES (6064,"2021-02-14",80,143,"FIN",2016,"amet");
INSERT IGNORE INTO `exam`  VALUES (6065,"2019-07-20",94,172,"OTHER",2004,"in");
INSERT IGNORE INTO `exam`  VALUES (6066,"2019-08-12",81,105,"MID",2007,"imperdiet");
INSERT IGNORE INTO `exam`  VALUES (6067,"2019-06-29",82,190,"FIN",2006,"et");
INSERT IGNORE INTO `exam`  VALUES (6068,"2020-11-10",73,155,"FIN",2007,"orci");
INSERT IGNORE INTO `exam`  VALUES (6069,"2020-12-03",74,198,"OTHER",2008,"litora");
INSERT IGNORE INTO `exam`  VALUES (6070,"2021-04-12",58,141,"OTHER",2012,"iaculis");
INSERT IGNORE INTO `exam`  VALUES (6071,"2020-06-24",54,137,"FIN",2005,"diam");
INSERT IGNORE INTO `exam`  VALUES (6072,"2020-11-19",98,115,"MID",2008,"sollicitudin");
INSERT IGNORE INTO `exam`  VALUES (6073,"2020-02-28",78,190,"OTHER",2011,"sodales");
INSERT IGNORE INTO `exam`  VALUES (6074,"2019-04-23",85,123,"MID",2014,"condimentum");
INSERT IGNORE INTO `exam`  VALUES (6075,"2020-08-10",1,164,"OTHER",2006,"ipsum.");
INSERT IGNORE INTO `exam`  VALUES (6076,"2019-12-28",56,162,"OTHER",2007,"consequat");
INSERT IGNORE INTO `exam`  VALUES (6077,"2021-02-24",87,160,"FIN",2000,"pede,");
INSERT IGNORE INTO `exam`  VALUES (6078,"2020-01-06",14,115,"MID",2012,"ipsum");
INSERT IGNORE INTO `exam`  VALUES (6079,"2020-08-06",95,163,"MID",2000,"ligula");
INSERT IGNORE INTO `exam`  VALUES (6080,"2020-01-26",29,135,"MID",2008,"id");
INSERT IGNORE INTO `exam`  VALUES (6081,"2019-12-19",66,158,"FIN",2011,"ipsum.");
INSERT IGNORE INTO `exam`  VALUES (6082,"2020-08-08",56,193,"OTHER",2019,"non");
INSERT IGNORE INTO `exam`  VALUES (6083,"2021-04-02",19,175,"FIN",2018,"laoreet,");
INSERT IGNORE INTO `exam`  VALUES (6084,"2020-03-13",97,168,"FIN",2018,"in");
INSERT IGNORE INTO `exam`  VALUES (6085,"2020-02-15",12,100,"MID",2011,"Etiam");
INSERT IGNORE INTO `exam`  VALUES (6086,"2020-08-17",57,151,"FIN",2010,"eu");
INSERT IGNORE INTO `exam`  VALUES (6087,"2020-01-10",20,194,"FIN",2017,"mollis");
INSERT IGNORE INTO `exam`  VALUES (6088,"2019-08-29",36,104,"OTHER",2007,"tempor");
INSERT IGNORE INTO `exam`  VALUES (6089,"2020-12-23",91,132,"MID",2004,"Mauris");
INSERT IGNORE INTO `exam`  VALUES (6090,"2020-12-01",70,186,"FIN",2008,"fringilla");
INSERT IGNORE INTO `exam`  VALUES (6091,"2019-12-08",44,182,"MID",2019,"urna");
INSERT IGNORE INTO `exam`  VALUES (6092,"2020-05-10",25,133,"MID",2001,"lobortis");
INSERT IGNORE INTO `exam`  VALUES (6093,"2021-03-30",47,109,"MID",2008,"dolor");
INSERT IGNORE INTO `exam`  VALUES (6094,"2020-08-11",34,198,"FIN",2002,"varius.");
INSERT IGNORE INTO `exam`  VALUES (6095,"2020-07-01",44,124,"FIN",2009,"pede");
INSERT IGNORE INTO `exam`  VALUES (6096,"2019-06-24",94,118,"FIN",2014,"laoreet,");
INSERT IGNORE INTO `exam`  VALUES (6097,"2020-11-11",99,190,"OTHER",2016,"magna.");
INSERT IGNORE INTO `exam`  VALUES (6098,"2021-02-03",52,139,"FIN",2002,"Cras");
INSERT IGNORE INTO `exam`  VALUES (6099,"2020-10-04",16,199,"FIN",2005,"dolor.");


CREATE TABLE `student_has_exam`
(
	`exam_id` int NOT NULL,
    `student_id` int NOT NULL,
    `date` date DEFAULT NULL,
	`grade` int DEFAULT NULL CHECK (`grade` <=100 AND `grade`>=0), 
    `subject` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`exam_id`, `student_id`),
	FOREIGN KEY (`student_id`) REFERENCES `student`(`student_id`) ON DELETE CASCADE,
	FOREIGN KEY (`exam_id`) REFERENCES `exam`(`exam_id`) ON DELETE CASCADE
);

INSERT IGNORE INTO `student_has_exam` (`exam_id`,`student_id`, `date`,`subject`) 
			SELECT `exam`.`exam_id`, `student`.`student_id`, `exam`.`exam_date`, `exam`.`subject`
			FROM `exam` 
            INNER JOIN `student` 
            ON `student`.`teacher_id` = `exam`.`teacher_id` ORDER BY `student_id`;








