-- It inserts the roles ADMIN and USER into roles table.
INSERT INTO roles (id, created_at, description, name, updated_at)
SELECT 1,
       CURDATE(),
       'This role has full control permission to manage the web application. It has full access to restricted services.',
       'ROLE_ADMIN',
       NULL WHERE NOT EXISTS (SELECT * FROM roles WHERE name='ROLE_ADMIN');

INSERT INTO roles (id, created_at, description, name, updated_at)
SELECT 2,
       CURDATE(),
       'This role has basic permissions only to use the allowed services. It does not have access to restricted services to manage the content of the web application.',
       'ROLE_USER',
       NULL WHERE NOT EXISTS (SELECT * FROM roles WHERE name='ROLE_USER');



INSERT  IGNORE INTO `countries` VALUES (1,'Afghanistan');
INSERT  IGNORE INTO `countries` VALUES (2,'Albania');
INSERT  IGNORE INTO `countries` VALUES (3,'Algeria');
INSERT  IGNORE INTO `countries` VALUES (4,'American Samoa');
INSERT  IGNORE INTO `countries` VALUES (5,'Andorra');
INSERT  IGNORE INTO `countries` VALUES (6,'Angola');
INSERT  IGNORE INTO `countries` VALUES (7,'Anguilla');
INSERT  IGNORE INTO `countries` VALUES (8,'Antarctica');
INSERT  IGNORE INTO `countries` VALUES (9,'Antigua And Barbuda');
INSERT  IGNORE INTO `countries` VALUES (10,'Argentina');
INSERT  IGNORE INTO `countries` VALUES (11,'Armenia');
INSERT  IGNORE INTO `countries` VALUES (12,'Aruba');
INSERT  IGNORE INTO `countries` VALUES (13,'Australia');
INSERT  IGNORE INTO `countries` VALUES (14,'Austria');
INSERT  IGNORE INTO `countries` VALUES (15,'Azerbaijan');
INSERT  IGNORE INTO `countries` VALUES (16,'Bahamas The');
INSERT  IGNORE INTO `countries` VALUES (17,'Bahrain');
INSERT  IGNORE INTO `countries` VALUES (18,'Bangladesh');
INSERT  IGNORE INTO `countries` VALUES (19,'Barbados');
INSERT  IGNORE INTO `countries` VALUES (20,'Belarus');
INSERT  IGNORE INTO `countries` VALUES (21,'Belgium');
INSERT  IGNORE INTO `countries` VALUES (22,'Belize');
INSERT  IGNORE INTO `countries` VALUES (23,'Benin');
INSERT  IGNORE INTO `countries` VALUES (24,'Bermuda');
INSERT  IGNORE INTO `countries` VALUES (25,'Bhutan');
INSERT  IGNORE INTO `countries` VALUES (26,'Bolivia');
INSERT  IGNORE INTO `countries` VALUES (27,'Bosnia and Herzegovina');
INSERT  IGNORE INTO `countries` VALUES (28,'Botswana');
INSERT  IGNORE INTO `countries` VALUES (29,'Bouvet Island');
INSERT  IGNORE INTO `countries` VALUES (30,'Brazil');
INSERT  IGNORE INTO `countries` VALUES (31,'British Indian Ocean Territory');
INSERT  IGNORE INTO `countries` VALUES (32,'Brunei');
INSERT  IGNORE INTO `countries` VALUES (33,'Bulgaria');
INSERT  IGNORE INTO `countries` VALUES (34,'Burkina Faso');
INSERT  IGNORE INTO `countries` VALUES (35,'Burundi');
INSERT  IGNORE INTO `countries` VALUES (36,'Cambodia');
INSERT  IGNORE INTO `countries` VALUES (37,'Cameroon');
INSERT  IGNORE INTO `countries` VALUES (38,'Canada');
INSERT  IGNORE INTO `countries` VALUES (39,'Cape Verde');
INSERT  IGNORE INTO `countries` VALUES (40,'Cayman Islands');
INSERT  IGNORE INTO `countries` VALUES (41,'Central African Republic');
INSERT  IGNORE INTO `countries` VALUES (42,'Chad');
INSERT  IGNORE INTO `countries` VALUES (43,'Chile');
INSERT  IGNORE INTO `countries` VALUES (44,'China');
INSERT  IGNORE INTO `countries` VALUES (45,'Christmas Island');
INSERT  IGNORE INTO `countries` VALUES (46,'Cocos Islands');
INSERT  IGNORE INTO `countries` VALUES (47,'Colombia');
INSERT  IGNORE INTO `countries` VALUES (48,'Comoros');
INSERT  IGNORE INTO `countries` VALUES (49,'Congo');
INSERT  IGNORE INTO `countries` VALUES (50,'Congo The Democratic Republic Of The');
INSERT  IGNORE INTO `countries` VALUES (51,'Cook Islands');
INSERT  IGNORE INTO `countries` VALUES (52,'Costa Rica');
INSERT  IGNORE INTO `countries` VALUES (53,'Ivory Coast');
INSERT  IGNORE INTO `countries` VALUES (54,'Croatia');
INSERT  IGNORE INTO `countries` VALUES (55,'Cuba');
INSERT  IGNORE INTO `countries` VALUES (56,'Cyprus');
INSERT  IGNORE INTO `countries` VALUES (57,'Czech Republic');
INSERT  IGNORE INTO `countries` VALUES (58,'Denmark');
INSERT  IGNORE INTO `countries` VALUES (59,'Djibouti');
INSERT  IGNORE INTO `countries` VALUES (60,'Dominica');
INSERT  IGNORE INTO `countries` VALUES (61,'Dominican Republic');
INSERT  IGNORE INTO `countries` VALUES (62,'East Timor');
INSERT  IGNORE INTO `countries` VALUES (63,'Ecuador');
INSERT  IGNORE INTO `countries` VALUES (64,'Egypt');
INSERT  IGNORE INTO `countries` VALUES (65,'El Salvador');
INSERT  IGNORE INTO `countries` VALUES (66,'Equatorial Guinea');
INSERT  IGNORE INTO `countries` VALUES (67,'Eritrea');
INSERT  IGNORE INTO `countries` VALUES (68,'Estonia');
INSERT  IGNORE INTO `countries` VALUES (69,'Ethiopia');
INSERT  IGNORE INTO `countries` VALUES (70,'External Territories of Australia');
INSERT  IGNORE INTO `countries` VALUES (71,'Falkland Islands');
INSERT  IGNORE INTO `countries` VALUES (72,'Faroe Islands');
INSERT  IGNORE INTO `countries` VALUES (73,'Fiji Islands');
INSERT  IGNORE INTO `countries` VALUES (74,'Finland');
INSERT  IGNORE INTO `countries` VALUES (75,'France');
INSERT  IGNORE INTO `countries` VALUES (76,'French Guiana');
INSERT  IGNORE INTO `countries` VALUES (77,'French Polynesia');
INSERT  IGNORE INTO `countries` VALUES (78,'French Southern Territories');
INSERT  IGNORE INTO `countries` VALUES (79,'Gabon');
INSERT  IGNORE INTO `countries` VALUES (80,'Gambia The');
INSERT  IGNORE INTO `countries` VALUES (81,'Georgia');
INSERT  IGNORE INTO `countries` VALUES (82,'Germany');
INSERT  IGNORE INTO `countries` VALUES (83,'Ghana');
INSERT  IGNORE INTO `countries` VALUES (84,'Gibraltar');
INSERT  IGNORE INTO `countries` VALUES (85,'Greece');
INSERT  IGNORE INTO `countries` VALUES (86,'Greenland');
INSERT  IGNORE INTO `countries` VALUES (87,'Grenada');
INSERT  IGNORE INTO `countries` VALUES (88,'Guadeloupe');
INSERT  IGNORE INTO `countries` VALUES (89,'Guam');
INSERT  IGNORE INTO `countries` VALUES (90,'Guatemala');
INSERT  IGNORE INTO `countries` VALUES (91,'Guernsey and Alderney');
INSERT  IGNORE INTO `countries` VALUES (92,'Guinea');
INSERT  IGNORE INTO `countries` VALUES (93,'Guinea-Bissau');
INSERT  IGNORE INTO `countries` VALUES (94,'Guyana');
INSERT  IGNORE INTO `countries` VALUES (95,'Haiti');
INSERT  IGNORE INTO `countries` VALUES (96,'Heard and McDonald Islands');
INSERT  IGNORE INTO `countries` VALUES (97,'Honduras');
INSERT  IGNORE INTO `countries` VALUES (98,'Hong Kong S.A.R.');
INSERT  IGNORE INTO `countries` VALUES (99,'Hungary');
INSERT  IGNORE INTO `countries` VALUES (100,'Iceland');
INSERT  IGNORE INTO `countries` VALUES (101,'India');
INSERT  IGNORE INTO `countries` VALUES (102,'Indonesia');
INSERT  IGNORE INTO `countries` VALUES (103,'Iran');
INSERT  IGNORE INTO `countries` VALUES (104,'Iraq');
INSERT  IGNORE INTO `countries` VALUES (105,'Ireland');
INSERT  IGNORE INTO `countries` VALUES (106,'Israel');
INSERT  IGNORE INTO `countries` VALUES (107,'Italy');
INSERT  IGNORE INTO `countries` VALUES (108,'Jamaica');
INSERT  IGNORE INTO `countries` VALUES (109,'Japan');
INSERT  IGNORE INTO `countries` VALUES (110,'Jersey');
INSERT  IGNORE INTO `countries` VALUES (111,'Jordan');
INSERT  IGNORE INTO `countries` VALUES (112,'Kazakhstan');
INSERT  IGNORE INTO `countries` VALUES (113,'Kenya');
INSERT  IGNORE INTO `countries` VALUES (114,'Kiribati');
INSERT  IGNORE INTO `countries` VALUES (115,'Korea North');
INSERT  IGNORE INTO `countries` VALUES (116,'Korea South');
INSERT  IGNORE INTO `countries` VALUES (117,'Kuwait');
INSERT  IGNORE INTO `countries` VALUES (118,'Kyrgyzstan');
INSERT  IGNORE INTO `countries` VALUES (119,'Laos');
INSERT  IGNORE INTO `countries` VALUES (120,'Latvia');
INSERT  IGNORE INTO `countries` VALUES (121,'Lebanon');
INSERT  IGNORE INTO `countries` VALUES (122,'Lesotho');
INSERT  IGNORE INTO `countries` VALUES (123,'Liberia');
INSERT  IGNORE INTO `countries` VALUES (124,'Libya');
INSERT  IGNORE INTO `countries` VALUES (125,'Liechtenstein');
INSERT  IGNORE INTO `countries` VALUES (126,'Lithuania');
INSERT  IGNORE INTO `countries` VALUES (127,'Luxembourg');
INSERT  IGNORE INTO `countries` VALUES (128,'Macau S.A.R.');
INSERT  IGNORE INTO `countries` VALUES (129,'Macedonia');
INSERT  IGNORE INTO `countries` VALUES (130,'Madagascar');
INSERT  IGNORE INTO `countries` VALUES (131,'Malawi');
INSERT  IGNORE INTO `countries` VALUES (132,'Malaysia');
INSERT  IGNORE INTO `countries` VALUES (133,'Maldives');
INSERT  IGNORE INTO `countries` VALUES (134,'Mali');
INSERT  IGNORE INTO `countries` VALUES (135,'Malta');
INSERT  IGNORE INTO `countries` VALUES (136,'Isle of Man)');
INSERT  IGNORE INTO `countries` VALUES (137,'Marshall Islands');
INSERT  IGNORE INTO `countries` VALUES (138,'Martinique');
INSERT  IGNORE INTO `countries` VALUES (139,'Mauritania');
INSERT  IGNORE INTO `countries` VALUES (140,'Mauritius');
INSERT  IGNORE INTO `countries` VALUES (141,'Mayotte');
INSERT  IGNORE INTO `countries` VALUES (142,'Mexico');
INSERT  IGNORE INTO `countries` VALUES (143,'Micronesia');
INSERT  IGNORE INTO `countries` VALUES (144,'Moldova');
INSERT  IGNORE INTO `countries` VALUES (145,'Monaco');
INSERT  IGNORE INTO `countries` VALUES (146,'Mongolia');
INSERT  IGNORE INTO `countries` VALUES (147,'Montserrat');
INSERT  IGNORE INTO `countries` VALUES (148,'Morocco');
INSERT  IGNORE INTO `countries` VALUES (149,'Mozambique');
INSERT  IGNORE INTO `countries` VALUES (150,'Myanmar');
INSERT  IGNORE INTO `countries` VALUES (151,'Namibia');
INSERT  IGNORE INTO `countries` VALUES (152,'Nauru');
INSERT  IGNORE INTO `countries` VALUES (153,'Nepal');
INSERT  IGNORE INTO `countries` VALUES (154,'Netherlands Antilles');
INSERT  IGNORE INTO `countries` VALUES (155,'Netherlands The');
INSERT  IGNORE INTO `countries` VALUES (156,'New Caledonia');
INSERT  IGNORE INTO `countries` VALUES (157,'New Zealand');
INSERT  IGNORE INTO `countries` VALUES (158,'Nicaragua');
INSERT  IGNORE INTO `countries` VALUES (159,'Niger');
INSERT  IGNORE INTO `countries` VALUES (160,'Nigeria');
INSERT  IGNORE INTO `countries` VALUES (161,'Niue');
INSERT  IGNORE INTO `countries` VALUES (162,'Norfolk Island');
INSERT  IGNORE INTO `countries` VALUES (163,'Northern Mariana Islands');
INSERT  IGNORE INTO `countries` VALUES (164,'Norway');
INSERT  IGNORE INTO `countries` VALUES (165,'Oman');
INSERT  IGNORE INTO `countries` VALUES (166,'Pakistan');
INSERT  IGNORE INTO `countries` VALUES (167,'Palau');
INSERT  IGNORE INTO `countries` VALUES (168,'Palestinian Territory Occupied');
INSERT  IGNORE INTO `countries` VALUES (169,'Panama');
INSERT  IGNORE INTO `countries` VALUES (170,'Papua new Guinea');
INSERT  IGNORE INTO `countries` VALUES (171,'Paraguay');
INSERT  IGNORE INTO `countries` VALUES (172,'Peru');
INSERT  IGNORE INTO `countries` VALUES (173,'Philippines');
INSERT  IGNORE INTO `countries` VALUES (174,'Pitcairn Island');
INSERT  IGNORE INTO `countries` VALUES (175,'Poland');
INSERT  IGNORE INTO `countries` VALUES (176,'Portugal');
INSERT  IGNORE INTO `countries` VALUES (177,'Puerto Rico');
INSERT  IGNORE INTO `countries` VALUES (178,'Qatar');
INSERT  IGNORE INTO `countries` VALUES (179,'Reunion');
INSERT  IGNORE INTO `countries` VALUES (180,'Romania');
INSERT  IGNORE INTO `countries` VALUES (181,'Russia');
INSERT  IGNORE INTO `countries` VALUES (182,'Rwanda');
INSERT  IGNORE INTO `countries` VALUES (183,'Saint Helena');
INSERT  IGNORE INTO `countries` VALUES (184,'Saint Kitts And Nevis');
INSERT  IGNORE INTO `countries` VALUES (185,'Saint Lucia');
INSERT  IGNORE INTO `countries` VALUES (186,'Saint Pierre and Miquelon');
INSERT  IGNORE INTO `countries` VALUES (187,'Saint Vincent And The Grenadines');
INSERT  IGNORE INTO `countries` VALUES (188,'Samoa');
INSERT  IGNORE INTO `countries` VALUES (189,'San Marino');
INSERT  IGNORE INTO `countries` VALUES (190,'Sao Tome and Principe');
INSERT  IGNORE INTO `countries` VALUES (191,'Saudi Arabia');
INSERT  IGNORE INTO `countries` VALUES (192,'Senegal');
INSERT  IGNORE INTO `countries` VALUES (193,'Serbia');
INSERT  IGNORE INTO `countries` VALUES (194,'Seychelles');
INSERT  IGNORE INTO `countries` VALUES (195,'Sierra Leone');
INSERT  IGNORE INTO `countries` VALUES (196,'Singapore');
INSERT  IGNORE INTO `countries` VALUES (197,'Slovakia');
INSERT  IGNORE INTO `countries` VALUES (198,'Slovenia');
INSERT  IGNORE INTO `countries` VALUES (199,'Smaller Territories of the UK');
INSERT  IGNORE INTO `countries` VALUES (200,'Solomon Islands');
INSERT  IGNORE INTO `countries` VALUES (201,'Somalia');
INSERT  IGNORE INTO `countries` VALUES (202,'South Africa');
INSERT  IGNORE INTO `countries` VALUES (203,'South Georgia');
INSERT  IGNORE INTO `countries` VALUES (204,'South Sudan');
INSERT  IGNORE INTO `countries` VALUES (205,'Spain');
INSERT  IGNORE INTO `countries` VALUES (206,'Sri Lanka');
INSERT  IGNORE INTO `countries` VALUES (207,'Sudan');
INSERT  IGNORE INTO `countries` VALUES (208,'Suriname');
INSERT  IGNORE INTO `countries` VALUES (209,'Svalbard And Jan Mayen Islands');
INSERT  IGNORE INTO `countries` VALUES (210,'Swaziland');
INSERT  IGNORE INTO `countries` VALUES (211,'Sweden');
INSERT  IGNORE INTO `countries` VALUES (212,'Switzerland');
INSERT  IGNORE INTO `countries` VALUES (213,'Syria');
INSERT  IGNORE INTO `countries` VALUES (214,'Taiwan');
INSERT  IGNORE INTO `countries` VALUES (215,'Tajikistan');
INSERT  IGNORE INTO `countries` VALUES (216,'Tanzania');
INSERT  IGNORE INTO `countries` VALUES (217,'Thailand');
INSERT  IGNORE INTO `countries` VALUES (218,'Togo');
INSERT  IGNORE INTO `countries` VALUES (219,'Tokelau');
INSERT  IGNORE INTO `countries` VALUES (220,'Tonga');
INSERT  IGNORE INTO `countries` VALUES (221,'Trinidad And Tobago');
INSERT  IGNORE INTO `countries` VALUES (222,'Tunisia');
INSERT  IGNORE INTO `countries` VALUES (223,'Turkey');
INSERT  IGNORE INTO `countries` VALUES (224,'Turkmenistan');
INSERT  IGNORE INTO `countries` VALUES (225,'Turks And Caicos Islands');
INSERT  IGNORE INTO `countries` VALUES (226,'Tuvalu');
INSERT  IGNORE INTO `countries` VALUES (227,'Uganda');
INSERT  IGNORE INTO `countries` VALUES (228,'Ukraine');
INSERT  IGNORE INTO `countries` VALUES (229,'United Arab Emirates');
INSERT  IGNORE INTO `countries` VALUES (230,'United Kingdom');
INSERT  IGNORE INTO `countries` VALUES (231,'United States');
INSERT  IGNORE INTO `countries` VALUES (232,'United States Minor Outlying Islands');
INSERT  IGNORE INTO `countries` VALUES (233,'Uruguay');
INSERT  IGNORE INTO `countries` VALUES (234,'Uzbekistan');
INSERT  IGNORE INTO `countries` VALUES (235,'Vanuatu');
INSERT  IGNORE INTO `countries` VALUES (236,'Vatican City State');
INSERT  IGNORE INTO `countries` VALUES (237,'Venezuela');
INSERT  IGNORE INTO `countries` VALUES (238,'Vietnam');
INSERT  IGNORE INTO `countries` VALUES (239,'Virgin Islands');
INSERT  IGNORE INTO `countries` VALUES (240,'Virgin Islands');
INSERT  IGNORE INTO `countries` VALUES (241,'Wallis And Futuna Islands');
INSERT  IGNORE INTO `countries` VALUES (242,'Western Sahara');
INSERT  IGNORE INTO `countries` VALUES (243,'Yemen');
INSERT  IGNORE INTO `countries` VALUES (244,'Yugoslavia');
INSERT  IGNORE INTO `countries` VALUES (245,'Zambia');
INSERT  IGNORE INTO `countries` VALUES (246,'Zimbabwe');




INSERT  IGNORE INTO `regions` VALUES (1,'Andaman and Nicobar Islands',101);
INSERT  IGNORE INTO `regions` VALUES (2,'Andhra Pradesh',101);
INSERT  IGNORE INTO `regions` VALUES (3,'Arunachal Pradesh',101);
INSERT  IGNORE INTO `regions` VALUES (4,'Assam',101);
INSERT  IGNORE INTO `regions` VALUES (5,'Bihar',101);
INSERT  IGNORE INTO `regions` VALUES (6,'Chandigarh',101);
INSERT  IGNORE INTO `regions` VALUES (7,'Chhattisgarh',101);
INSERT  IGNORE INTO `regions` VALUES (8,'Dadra and Nagar Haveli',101);
INSERT  IGNORE INTO `regions` VALUES (9,'Daman and Diu',101);
INSERT  IGNORE INTO `regions` VALUES (10,'Delhi',101);
INSERT  IGNORE INTO `regions` VALUES (11,'Goa',101);
INSERT  IGNORE INTO `regions` VALUES (12,'Gujarat',101);
INSERT  IGNORE INTO `regions` VALUES (13,'Haryana',101);
INSERT  IGNORE INTO `regions` VALUES (14,'Himachal Pradesh',101);
INSERT  IGNORE INTO `regions` VALUES (15,'Jammu and Kashmir',101);
INSERT  IGNORE INTO `regions` VALUES (16,'Jharkhand',101);
INSERT  IGNORE INTO `regions` VALUES (17,'Karnataka',101);
INSERT  IGNORE INTO `regions` VALUES (18,'Kenmore',101);
INSERT  IGNORE INTO `regions` VALUES (19,'Kerala',101);
INSERT  IGNORE INTO `regions` VALUES (20,'Lakshadweep',101);
INSERT  IGNORE INTO `regions` VALUES (21,'Madhya Pradesh',101);
INSERT  IGNORE INTO `regions` VALUES (22,'Maharashtra',101);
INSERT  IGNORE INTO `regions` VALUES (23,'Manipur',101);
INSERT  IGNORE INTO `regions` VALUES (24,'Meghalaya',101);
INSERT  IGNORE INTO `regions` VALUES (25,'Mizoram',101);
INSERT  IGNORE INTO `regions` VALUES (26,'Nagaland',101);
INSERT  IGNORE INTO `regions` VALUES (27,'Narora',101);
INSERT  IGNORE INTO `regions` VALUES (28,'Natwar',101);
INSERT  IGNORE INTO `regions` VALUES (29,'Odisha',101);
INSERT  IGNORE INTO `regions` VALUES (30,'Paschim Medinipur',101);
INSERT  IGNORE INTO `regions` VALUES (31,'Pondicherry',101);
INSERT  IGNORE INTO `regions` VALUES (32,'Punjab',101);
INSERT  IGNORE INTO `regions` VALUES (33,'Rajasthan',101);
INSERT  IGNORE INTO `regions` VALUES (34,'Sikkim',101);
INSERT  IGNORE INTO `regions` VALUES (35,'Tamil Nadu',101);
INSERT  IGNORE INTO `regions` VALUES (36,'Telangana',101);
INSERT  IGNORE INTO `regions` VALUES (37,'Tripura',101);
INSERT  IGNORE INTO `regions` VALUES (38,'Uttar Pradesh',101);
INSERT  IGNORE INTO `regions` VALUES (39,'Uttarakhand',101);
INSERT  IGNORE INTO `regions` VALUES (40,'Vaishali',101);
INSERT  IGNORE INTO `regions` VALUES (41,'West Bengal',101);
INSERT  IGNORE INTO `regions` VALUES (42,'Badakhshan',1);
INSERT  IGNORE INTO `regions` VALUES (43,'Badgis',1);
INSERT  IGNORE INTO `regions` VALUES (44,'Baglan',1);
INSERT  IGNORE INTO `regions` VALUES (45,'Balkh',1);
INSERT  IGNORE INTO `regions` VALUES (46,'Bamiyan',1);
INSERT  IGNORE INTO `regions` VALUES (47,'Farah',1);
INSERT  IGNORE INTO `regions` VALUES (48,'Faryab',1);
INSERT  IGNORE INTO `regions` VALUES (49,'Gawr',1);
INSERT  IGNORE INTO `regions` VALUES (50,'Gazni',1);
INSERT  IGNORE INTO `regions` VALUES (51,'Herat',1);
INSERT  IGNORE INTO `regions` VALUES (52,'Hilmand',1);
INSERT  IGNORE INTO `regions` VALUES (53,'Jawzjan',1);
INSERT  IGNORE INTO `regions` VALUES (54,'Kabul',1);
INSERT  IGNORE INTO `regions` VALUES (55,'Kapisa',1);
INSERT  IGNORE INTO `regions` VALUES (56,'Khawst',1);
INSERT  IGNORE INTO `regions` VALUES (57,'Kunar',1);
INSERT  IGNORE INTO `regions` VALUES (58,'Lagman',1);
INSERT  IGNORE INTO `regions` VALUES (59,'Lawghar',1);
INSERT  IGNORE INTO `regions` VALUES (60,'Nangarhar',1);
INSERT  IGNORE INTO `regions` VALUES (61,'Nimruz',1);
INSERT  IGNORE INTO `regions` VALUES (62,'Nuristan',1);
INSERT  IGNORE INTO `regions` VALUES (63,'Paktika',1);
INSERT  IGNORE INTO `regions` VALUES (64,'Paktiya',1);
INSERT  IGNORE INTO `regions` VALUES (65,'Parwan',1);
INSERT  IGNORE INTO `regions` VALUES (66,'Qandahar',1);
INSERT  IGNORE INTO `regions` VALUES (67,'Qunduz',1);
INSERT  IGNORE INTO `regions` VALUES (68,'Samangan',1);
INSERT  IGNORE INTO `regions` VALUES (69,'Sar-e Pul',1);
INSERT  IGNORE INTO `regions` VALUES (70,'Takhar',1);
INSERT  IGNORE INTO `regions` VALUES (71,'Uruzgan',1);
INSERT  IGNORE INTO `regions` VALUES (72,'Wardag',1);
INSERT  IGNORE INTO `regions` VALUES (73,'Zabul',1);
INSERT  IGNORE INTO `regions` VALUES (74,'Berat',2);
INSERT  IGNORE INTO `regions` VALUES (75,'Bulqize',2);
INSERT  IGNORE INTO `regions` VALUES (76,'Delvine',2);
INSERT  IGNORE INTO `regions` VALUES (77,'Devoll',2);
INSERT  IGNORE INTO `regions` VALUES (78,'Dibre',2);
INSERT  IGNORE INTO `regions` VALUES (79,'Durres',2);
INSERT  IGNORE INTO `regions` VALUES (80,'Elbasan',2);
INSERT  IGNORE INTO `regions` VALUES (81,'Fier',2);
INSERT  IGNORE INTO `regions` VALUES (82,'Gjirokaster',2);
INSERT  IGNORE INTO `regions` VALUES (83,'Gramsh',2);
INSERT  IGNORE INTO `regions` VALUES (84,'Has',2);
INSERT  IGNORE INTO `regions` VALUES (85,'Kavaje',2);
INSERT  IGNORE INTO `regions` VALUES (86,'Kolonje',2);
INSERT  IGNORE INTO `regions` VALUES (87,'Korce',2);
INSERT  IGNORE INTO `regions` VALUES (88,'Kruje',2);
INSERT  IGNORE INTO `regions` VALUES (89,'Kucove',2);
INSERT  IGNORE INTO `regions` VALUES (90,'Kukes',2);
INSERT  IGNORE INTO `regions` VALUES (91,'Kurbin',2);
INSERT  IGNORE INTO `regions` VALUES (92,'Lezhe',2);
INSERT  IGNORE INTO `regions` VALUES (93,'Librazhd',2);
INSERT  IGNORE INTO `regions` VALUES (94,'Lushnje',2);
INSERT  IGNORE INTO `regions` VALUES (95,'Mallakaster',2);
INSERT  IGNORE INTO `regions` VALUES (96,'Malsi e Madhe',2);
INSERT  IGNORE INTO `regions` VALUES (97,'Mat',2);
INSERT  IGNORE INTO `regions` VALUES (98,'Mirdite',2);
INSERT  IGNORE INTO `regions` VALUES (99,'Peqin',2);
INSERT  IGNORE INTO `regions` VALUES (100,'Permet',2);
INSERT  IGNORE INTO `regions` VALUES (101,'Pogradec',2);
INSERT  IGNORE INTO `regions` VALUES (102,'Puke',2);
INSERT  IGNORE INTO `regions` VALUES (103,'Sarande',2);
INSERT  IGNORE INTO `regions` VALUES (104,'Shkoder',2);
INSERT  IGNORE INTO `regions` VALUES (105,'Skrapar',2);
INSERT  IGNORE INTO `regions` VALUES (106,'Tepelene',2);
INSERT  IGNORE INTO `regions` VALUES (107,'Tirane',2);
INSERT  IGNORE INTO `regions` VALUES (108,'Tropoje',2);
INSERT  IGNORE INTO `regions` VALUES (109,'Vlore',2);
INSERT  IGNORE INTO `regions` VALUES (110,'\'Ayn Daflah',3);
INSERT  IGNORE INTO `regions` VALUES (111,'\'Ayn Tamushanat',3);
INSERT  IGNORE INTO `regions` VALUES (112,'Adrar',3);
INSERT  IGNORE INTO `regions` VALUES (113,'Algiers',3);
INSERT  IGNORE INTO `regions` VALUES (114,'Annabah',3);
INSERT  IGNORE INTO `regions` VALUES (115,'Bashshar',3);
INSERT  IGNORE INTO `regions` VALUES (116,'Batnah',3);
INSERT  IGNORE INTO `regions` VALUES (117,'Bijayah',3);
INSERT  IGNORE INTO `regions` VALUES (118,'Biskrah',3);
INSERT  IGNORE INTO `regions` VALUES (119,'Blidah',3);
INSERT  IGNORE INTO `regions` VALUES (120,'Buirah',3);
INSERT  IGNORE INTO `regions` VALUES (121,'Bumardas',3);
INSERT  IGNORE INTO `regions` VALUES (122,'Burj Bu Arririj',3);
INSERT  IGNORE INTO `regions` VALUES (123,'Ghalizan',3);
INSERT  IGNORE INTO `regions` VALUES (124,'Ghardayah',3);
INSERT  IGNORE INTO `regions` VALUES (125,'Ilizi',3);
INSERT  IGNORE INTO `regions` VALUES (126,'Jijili',3);
INSERT  IGNORE INTO `regions` VALUES (127,'Jilfah',3);
INSERT  IGNORE INTO `regions` VALUES (128,'Khanshalah',3);
INSERT  IGNORE INTO `regions` VALUES (129,'Masilah',3);
INSERT  IGNORE INTO `regions` VALUES (130,'Midyah',3);
INSERT  IGNORE INTO `regions` VALUES (131,'Milah',3);
INSERT  IGNORE INTO `regions` VALUES (132,'Muaskar',3);
INSERT  IGNORE INTO `regions` VALUES (133,'Mustaghanam',3);
INSERT  IGNORE INTO `regions` VALUES (134,'Naama',3);
INSERT  IGNORE INTO `regions` VALUES (135,'Oran',3);
INSERT  IGNORE INTO `regions` VALUES (136,'Ouargla',3);
INSERT  IGNORE INTO `regions` VALUES (137,'Qalmah',3);
INSERT  IGNORE INTO `regions` VALUES (138,'Qustantinah',3);
INSERT  IGNORE INTO `regions` VALUES (139,'Sakikdah',3);
INSERT  IGNORE INTO `regions` VALUES (140,'Satif',3);
INSERT  IGNORE INTO `regions` VALUES (141,'Sayda\'',3);
INSERT  IGNORE INTO `regions` VALUES (142,'Sidi ban-al-\'Abbas',3);
INSERT  IGNORE INTO `regions` VALUES (143,'Suq Ahras',3);
INSERT  IGNORE INTO `regions` VALUES (144,'Tamanghasat',3);
INSERT  IGNORE INTO `regions` VALUES (145,'Tibazah',3);
INSERT  IGNORE INTO `regions` VALUES (146,'Tibissah',3);
INSERT  IGNORE INTO `regions` VALUES (147,'Tilimsan',3);
INSERT  IGNORE INTO `regions` VALUES (148,'Tinduf',3);
INSERT  IGNORE INTO `regions` VALUES (149,'Tisamsilt',3);
INSERT  IGNORE INTO `regions` VALUES (150,'Tiyarat',3);
INSERT  IGNORE INTO `regions` VALUES (151,'Tizi Wazu',3);
INSERT  IGNORE INTO `regions` VALUES (152,'Umm-al-Bawaghi',3);
INSERT  IGNORE INTO `regions` VALUES (153,'Wahran',3);
INSERT  IGNORE INTO `regions` VALUES (154,'Warqla',3);
INSERT  IGNORE INTO `regions` VALUES (155,'Wilaya d Alger',3);
INSERT  IGNORE INTO `regions` VALUES (156,'Wilaya de Bejaia',3);
INSERT  IGNORE INTO `regions` VALUES (157,'Wilaya de Constantine',3);
INSERT  IGNORE INTO `regions` VALUES (158,'al-Aghwat',3);
INSERT  IGNORE INTO `regions` VALUES (159,'al-Bayadh',3);
INSERT  IGNORE INTO `regions` VALUES (160,'al-Jaza\'ir',3);
INSERT  IGNORE INTO `regions` VALUES (161,'al-Wad',3);
INSERT  IGNORE INTO `regions` VALUES (162,'ash-Shalif',3);
INSERT  IGNORE INTO `regions` VALUES (163,'at-Tarif',3);
INSERT  IGNORE INTO `regions` VALUES (164,'Eastern',4);
INSERT  IGNORE INTO `regions` VALUES (165,'Manu\'a',4);
INSERT  IGNORE INTO `regions` VALUES (166,'Swains Island',4);
INSERT  IGNORE INTO `regions` VALUES (167,'Western',4);
INSERT  IGNORE INTO `regions` VALUES (168,'Andorra la Vella',5);
INSERT  IGNORE INTO `regions` VALUES (169,'Canillo',5);
INSERT  IGNORE INTO `regions` VALUES (170,'Encamp',5);
INSERT  IGNORE INTO `regions` VALUES (171,'La Massana',5);
INSERT  IGNORE INTO `regions` VALUES (172,'Les Escaldes',5);
INSERT  IGNORE INTO `regions` VALUES (173,'Ordino',5);
INSERT  IGNORE INTO `regions` VALUES (174,'Sant Julia de Loria',5);
INSERT  IGNORE INTO `regions` VALUES (175,'Bengo',6);
INSERT  IGNORE INTO `regions` VALUES (176,'Benguela',6);
INSERT  IGNORE INTO `regions` VALUES (177,'Bie',6);
INSERT  IGNORE INTO `regions` VALUES (178,'Cabinda',6);
INSERT  IGNORE INTO `regions` VALUES (179,'Cunene',6);
INSERT  IGNORE INTO `regions` VALUES (180,'Huambo',6);
INSERT  IGNORE INTO `regions` VALUES (181,'Huila',6);
INSERT  IGNORE INTO `regions` VALUES (182,'Kuando-Kubango',6);
INSERT  IGNORE INTO `regions` VALUES (183,'Kwanza Norte',6);
INSERT  IGNORE INTO `regions` VALUES (184,'Kwanza Sul',6);
INSERT  IGNORE INTO `regions` VALUES (185,'Luanda',6);
INSERT  IGNORE INTO `regions` VALUES (186,'Lunda Norte',6);
INSERT  IGNORE INTO `regions` VALUES (187,'Lunda Sul',6);
INSERT  IGNORE INTO `regions` VALUES (188,'Malanje',6);
INSERT  IGNORE INTO `regions` VALUES (189,'Moxico',6);
INSERT  IGNORE INTO `regions` VALUES (190,'Namibe',6);
INSERT  IGNORE INTO `regions` VALUES (191,'Uige',6);
INSERT  IGNORE INTO `regions` VALUES (192,'Zaire',6);
INSERT  IGNORE INTO `regions` VALUES (193,'Other Provinces',7);
INSERT  IGNORE INTO `regions` VALUES (194,'Sector claimed by Argentina/Ch',8);
INSERT  IGNORE INTO `regions` VALUES (195,'Sector claimed by Argentina/UK',8);
INSERT  IGNORE INTO `regions` VALUES (196,'Sector claimed by Australia',8);
INSERT  IGNORE INTO `regions` VALUES (197,'Sector claimed by France',8);
INSERT  IGNORE INTO `regions` VALUES (198,'Sector claimed by New Zealand',8);
INSERT  IGNORE INTO `regions` VALUES (199,'Sector claimed by Norway',8);
INSERT  IGNORE INTO `regions` VALUES (200,'Unclaimed Sector',8);
INSERT  IGNORE INTO `regions` VALUES (201,'Barbuda',9);
INSERT  IGNORE INTO `regions` VALUES (202,'Saint George',9);
INSERT  IGNORE INTO `regions` VALUES (203,'Saint John',9);
INSERT  IGNORE INTO `regions` VALUES (204,'Saint Mary',9);
INSERT  IGNORE INTO `regions` VALUES (205,'Saint Paul',9);
INSERT  IGNORE INTO `regions` VALUES (206,'Saint Peter',9);
INSERT  IGNORE INTO `regions` VALUES (207,'Saint Philip',9);
INSERT  IGNORE INTO `regions` VALUES (208,'Buenos Aires',10);
INSERT  IGNORE INTO `regions` VALUES (209,'Catamarca',10);
INSERT  IGNORE INTO `regions` VALUES (210,'Chaco',10);
INSERT  IGNORE INTO `regions` VALUES (211,'Chubut',10);
INSERT  IGNORE INTO `regions` VALUES (212,'Cordoba',10);
INSERT  IGNORE INTO `regions` VALUES (213,'Corrientes',10);
INSERT  IGNORE INTO `regions` VALUES (214,'Distrito Federal',10);
INSERT  IGNORE INTO `regions` VALUES (215,'Entre Rios',10);
INSERT  IGNORE INTO `regions` VALUES (216,'Formosa',10);
INSERT  IGNORE INTO `regions` VALUES (217,'Jujuy',10);
INSERT  IGNORE INTO `regions` VALUES (218,'La Pampa',10);
INSERT  IGNORE INTO `regions` VALUES (219,'La Rioja',10);
INSERT  IGNORE INTO `regions` VALUES (220,'Mendoza',10);
INSERT  IGNORE INTO `regions` VALUES (221,'Misiones',10);
INSERT  IGNORE INTO `regions` VALUES (222,'Neuquen',10);
INSERT  IGNORE INTO `regions` VALUES (223,'Rio Negro',10);
INSERT  IGNORE INTO `regions` VALUES (224,'Salta',10);
INSERT  IGNORE INTO `regions` VALUES (225,'San Juan',10);
INSERT  IGNORE INTO `regions` VALUES (226,'San Luis',10);
INSERT  IGNORE INTO `regions` VALUES (227,'Santa Cruz',10);
INSERT  IGNORE INTO `regions` VALUES (228,'Santa Fe',10);
INSERT  IGNORE INTO `regions` VALUES (229,'Santiago del Estero',10);
INSERT  IGNORE INTO `regions` VALUES (230,'Tierra del Fuego',10);
INSERT  IGNORE INTO `regions` VALUES (231,'Tucuman',10);
INSERT  IGNORE INTO `regions` VALUES (232,'Aragatsotn',11);
INSERT  IGNORE INTO `regions` VALUES (233,'Ararat',11);
INSERT  IGNORE INTO `regions` VALUES (234,'Armavir',11);
INSERT  IGNORE INTO `regions` VALUES (235,'Gegharkunik',11);
INSERT  IGNORE INTO `regions` VALUES (236,'Kotaik',11);
INSERT  IGNORE INTO `regions` VALUES (237,'Lori',11);
INSERT  IGNORE INTO `regions` VALUES (238,'Shirak',11);
INSERT  IGNORE INTO `regions` VALUES (239,'Stepanakert',11);
INSERT  IGNORE INTO `regions` VALUES (240,'Syunik',11);
INSERT  IGNORE INTO `regions` VALUES (241,'Tavush',11);
INSERT  IGNORE INTO `regions` VALUES (242,'Vayots Dzor',11);
INSERT  IGNORE INTO `regions` VALUES (243,'Yerevan',11);
INSERT  IGNORE INTO `regions` VALUES (244,'Aruba',12);
INSERT  IGNORE INTO `regions` VALUES (245,'Auckland',13);
INSERT  IGNORE INTO `regions` VALUES (246,'Australian Capital Territory',13);
INSERT  IGNORE INTO `regions` VALUES (247,'Balgowlah',13);
INSERT  IGNORE INTO `regions` VALUES (248,'Balmain',13);
INSERT  IGNORE INTO `regions` VALUES (249,'Bankstown',13);
INSERT  IGNORE INTO `regions` VALUES (250,'Baulkham Hills',13);
INSERT  IGNORE INTO `regions` VALUES (251,'Bonnet Bay',13);
INSERT  IGNORE INTO `regions` VALUES (252,'Camberwell',13);
INSERT  IGNORE INTO `regions` VALUES (253,'Carole Park',13);
INSERT  IGNORE INTO `regions` VALUES (254,'Castle Hill',13);
INSERT  IGNORE INTO `regions` VALUES (255,'Caulfield',13);
INSERT  IGNORE INTO `regions` VALUES (256,'Chatswood',13);
INSERT  IGNORE INTO `regions` VALUES (257,'Cheltenham',13);
INSERT  IGNORE INTO `regions` VALUES (258,'Cherrybrook',13);
INSERT  IGNORE INTO `regions` VALUES (259,'Clayton',13);
INSERT  IGNORE INTO `regions` VALUES (260,'Collingwood',13);
INSERT  IGNORE INTO `regions` VALUES (261,'Frenchs Forest',13);
INSERT  IGNORE INTO `regions` VALUES (262,'Hawthorn',13);
INSERT  IGNORE INTO `regions` VALUES (263,'Jannnali',13);
INSERT  IGNORE INTO `regions` VALUES (264,'Knoxfield',13);
INSERT  IGNORE INTO `regions` VALUES (265,'Melbourne',13);
INSERT  IGNORE INTO `regions` VALUES (266,'New South Wales',13);
INSERT  IGNORE INTO `regions` VALUES (267,'Northern Territory',13);
INSERT  IGNORE INTO `regions` VALUES (268,'Perth',13);
INSERT  IGNORE INTO `regions` VALUES (269,'Queensland',13);
INSERT  IGNORE INTO `regions` VALUES (270,'South Australia',13);
INSERT  IGNORE INTO `regions` VALUES (271,'Tasmania',13);
INSERT  IGNORE INTO `regions` VALUES (272,'Templestowe',13);
INSERT  IGNORE INTO `regions` VALUES (273,'Victoria',13);
INSERT  IGNORE INTO `regions` VALUES (274,'Werribee south',13);
INSERT  IGNORE INTO `regions` VALUES (275,'Western Australia',13);
INSERT  IGNORE INTO `regions` VALUES (276,'Wheeler',13);
INSERT  IGNORE INTO `regions` VALUES (277,'Bundesland Salzburg',14);
INSERT  IGNORE INTO `regions` VALUES (278,'Bundesland Steiermark',14);
INSERT  IGNORE INTO `regions` VALUES (279,'Bundesland Tirol',14);
INSERT  IGNORE INTO `regions` VALUES (280,'Burgenland',14);
INSERT  IGNORE INTO `regions` VALUES (281,'Carinthia',14);
INSERT  IGNORE INTO `regions` VALUES (282,'Karnten',14);
INSERT  IGNORE INTO `regions` VALUES (283,'Liezen',14);
INSERT  IGNORE INTO `regions` VALUES (284,'Lower Austria',14);
INSERT  IGNORE INTO `regions` VALUES (285,'Niederosterreich',14);
INSERT  IGNORE INTO `regions` VALUES (286,'Oberosterreich',14);
INSERT  IGNORE INTO `regions` VALUES (287,'Salzburg',14);
INSERT  IGNORE INTO `regions` VALUES (288,'Schleswig-Holstein',14);
INSERT  IGNORE INTO `regions` VALUES (289,'Steiermark',14);
INSERT  IGNORE INTO `regions` VALUES (290,'Styria',14);
INSERT  IGNORE INTO `regions` VALUES (291,'Tirol',14);
INSERT  IGNORE INTO `regions` VALUES (292,'Upper Austria',14);
INSERT  IGNORE INTO `regions` VALUES (293,'Vorarlberg',14);
INSERT  IGNORE INTO `regions` VALUES (294,'Wien',14);
INSERT  IGNORE INTO `regions` VALUES (295,'Abseron',15);
INSERT  IGNORE INTO `regions` VALUES (296,'Baki Sahari',15);
INSERT  IGNORE INTO `regions` VALUES (297,'Ganca',15);
INSERT  IGNORE INTO `regions` VALUES (298,'Ganja',15);
INSERT  IGNORE INTO `regions` VALUES (299,'Kalbacar',15);
INSERT  IGNORE INTO `regions` VALUES (300,'Lankaran',15);
INSERT  IGNORE INTO `regions` VALUES (301,'Mil-Qarabax',15);
INSERT  IGNORE INTO `regions` VALUES (302,'Mugan-Salyan',15);
INSERT  IGNORE INTO `regions` VALUES (303,'Nagorni-Qarabax',15);
INSERT  IGNORE INTO `regions` VALUES (304,'Naxcivan',15);
INSERT  IGNORE INTO `regions` VALUES (305,'Priaraks',15);
INSERT  IGNORE INTO `regions` VALUES (306,'Qazax',15);
INSERT  IGNORE INTO `regions` VALUES (307,'Saki',15);
INSERT  IGNORE INTO `regions` VALUES (308,'Sirvan',15);
INSERT  IGNORE INTO `regions` VALUES (309,'Xacmaz',15);
INSERT  IGNORE INTO `regions` VALUES (310,'Abaco',16);
INSERT  IGNORE INTO `regions` VALUES (311,'Acklins Island',16);
INSERT  IGNORE INTO `regions` VALUES (312,'Andros',16);
INSERT  IGNORE INTO `regions` VALUES (313,'Berry Islands',16);
INSERT  IGNORE INTO `regions` VALUES (314,'Biminis',16);
INSERT  IGNORE INTO `regions` VALUES (315,'Cat Island',16);
INSERT  IGNORE INTO `regions` VALUES (316,'Crooked Island',16);
INSERT  IGNORE INTO `regions` VALUES (317,'Eleuthera',16);
INSERT  IGNORE INTO `regions` VALUES (318,'Exuma and Cays',16);
INSERT  IGNORE INTO `regions` VALUES (319,'Grand Bahama',16);
INSERT  IGNORE INTO `regions` VALUES (320,'Inagua Islands',16);
INSERT  IGNORE INTO `regions` VALUES (321,'Long Island',16);
INSERT  IGNORE INTO `regions` VALUES (322,'Mayaguana',16);
INSERT  IGNORE INTO `regions` VALUES (323,'New Providence',16);
INSERT  IGNORE INTO `regions` VALUES (324,'Ragged Island',16);
INSERT  IGNORE INTO `regions` VALUES (325,'Rum Cay',16);
INSERT  IGNORE INTO `regions` VALUES (326,'San Salvador',16);
INSERT  IGNORE INTO `regions` VALUES (327,'\'Isa',17);
INSERT  IGNORE INTO `regions` VALUES (328,'Badiyah',17);
INSERT  IGNORE INTO `regions` VALUES (329,'Hidd',17);
INSERT  IGNORE INTO `regions` VALUES (330,'Jidd Hafs',17);
INSERT  IGNORE INTO `regions` VALUES (331,'Mahama',17);
INSERT  IGNORE INTO `regions` VALUES (332,'Manama',17);
INSERT  IGNORE INTO `regions` VALUES (333,'Sitrah',17);
INSERT  IGNORE INTO `regions` VALUES (334,'al-Manamah',17);
INSERT  IGNORE INTO `regions` VALUES (335,'al-Muharraq',17);
INSERT  IGNORE INTO `regions` VALUES (336,'ar-Rifa\'a',17);
INSERT  IGNORE INTO `regions` VALUES (337,'Bagar Hat',18);
INSERT  IGNORE INTO `regions` VALUES (338,'Bandarban',18);
INSERT  IGNORE INTO `regions` VALUES (339,'Barguna',18);
INSERT  IGNORE INTO `regions` VALUES (340,'Barisal',18);
INSERT  IGNORE INTO `regions` VALUES (341,'Bhola',18);
INSERT  IGNORE INTO `regions` VALUES (342,'Bogora',18);
INSERT  IGNORE INTO `regions` VALUES (343,'Brahman Bariya',18);
INSERT  IGNORE INTO `regions` VALUES (344,'Chandpur',18);
INSERT  IGNORE INTO `regions` VALUES (345,'Chattagam',18);
INSERT  IGNORE INTO `regions` VALUES (346,'Chittagong Division',18);
INSERT  IGNORE INTO `regions` VALUES (347,'Chuadanga',18);
INSERT  IGNORE INTO `regions` VALUES (348,'Dhaka',18);
INSERT  IGNORE INTO `regions` VALUES (349,'Dinajpur',18);
INSERT  IGNORE INTO `regions` VALUES (350,'Faridpur',18);
INSERT  IGNORE INTO `regions` VALUES (351,'Feni',18);
INSERT  IGNORE INTO `regions` VALUES (352,'Gaybanda',18);
INSERT  IGNORE INTO `regions` VALUES (353,'Gazipur',18);
INSERT  IGNORE INTO `regions` VALUES (354,'Gopalganj',18);
INSERT  IGNORE INTO `regions` VALUES (355,'Habiganj',18);
INSERT  IGNORE INTO `regions` VALUES (356,'Jaipur Hat',18);
INSERT  IGNORE INTO `regions` VALUES (357,'Jamalpur',18);
INSERT  IGNORE INTO `regions` VALUES (358,'Jessor',18);
INSERT  IGNORE INTO `regions` VALUES (359,'Jhalakati',18);
INSERT  IGNORE INTO `regions` VALUES (360,'Jhanaydah',18);
INSERT  IGNORE INTO `regions` VALUES (361,'Khagrachhari',18);
INSERT  IGNORE INTO `regions` VALUES (362,'Khulna',18);
INSERT  IGNORE INTO `regions` VALUES (363,'Kishorganj',18);
INSERT  IGNORE INTO `regions` VALUES (364,'Koks Bazar',18);
INSERT  IGNORE INTO `regions` VALUES (365,'Komilla',18);
INSERT  IGNORE INTO `regions` VALUES (366,'Kurigram',18);
INSERT  IGNORE INTO `regions` VALUES (367,'Kushtiya',18);
INSERT  IGNORE INTO `regions` VALUES (368,'Lakshmipur',18);
INSERT  IGNORE INTO `regions` VALUES (369,'Lalmanir Hat',18);
INSERT  IGNORE INTO `regions` VALUES (370,'Madaripur',18);
INSERT  IGNORE INTO `regions` VALUES (371,'Magura',18);
INSERT  IGNORE INTO `regions` VALUES (372,'Maimansingh',18);
INSERT  IGNORE INTO `regions` VALUES (373,'Manikganj',18);
INSERT  IGNORE INTO `regions` VALUES (374,'Maulvi Bazar',18);
INSERT  IGNORE INTO `regions` VALUES (375,'Meherpur',18);
INSERT  IGNORE INTO `regions` VALUES (376,'Munshiganj',18);
INSERT  IGNORE INTO `regions` VALUES (377,'Naral',18);
INSERT  IGNORE INTO `regions` VALUES (378,'Narayanganj',18);
INSERT  IGNORE INTO `regions` VALUES (379,'Narsingdi',18);
INSERT  IGNORE INTO `regions` VALUES (380,'Nator',18);
INSERT  IGNORE INTO `regions` VALUES (381,'Naugaon',18);
INSERT  IGNORE INTO `regions` VALUES (382,'Nawabganj',18);
INSERT  IGNORE INTO `regions` VALUES (383,'Netrakona',18);
INSERT  IGNORE INTO `regions` VALUES (384,'Nilphamari',18);
INSERT  IGNORE INTO `regions` VALUES (385,'Noakhali',18);
INSERT  IGNORE INTO `regions` VALUES (386,'Pabna',18);
INSERT  IGNORE INTO `regions` VALUES (387,'Panchagarh',18);
INSERT  IGNORE INTO `regions` VALUES (388,'Patuakhali',18);
INSERT  IGNORE INTO `regions` VALUES (389,'Pirojpur',18);
INSERT  IGNORE INTO `regions` VALUES (390,'Rajbari',18);
INSERT  IGNORE INTO `regions` VALUES (391,'Rajshahi',18);
INSERT  IGNORE INTO `regions` VALUES (392,'Rangamati',18);
INSERT  IGNORE INTO `regions` VALUES (393,'Rangpur',18);
INSERT  IGNORE INTO `regions` VALUES (394,'Satkhira',18);
INSERT  IGNORE INTO `regions` VALUES (395,'Shariatpur',18);
INSERT  IGNORE INTO `regions` VALUES (396,'Sherpur',18);
INSERT  IGNORE INTO `regions` VALUES (397,'Silhat',18);
INSERT  IGNORE INTO `regions` VALUES (398,'Sirajganj',18);
INSERT  IGNORE INTO `regions` VALUES (399,'Sunamganj',18);
INSERT  IGNORE INTO `regions` VALUES (400,'Tangayal',18);
INSERT  IGNORE INTO `regions` VALUES (401,'Thakurgaon',18);
INSERT  IGNORE INTO `regions` VALUES (402,'Christ Church',19);
INSERT  IGNORE INTO `regions` VALUES (403,'Saint Andrew',19);
INSERT  IGNORE INTO `regions` VALUES (404,'Saint George',19);
INSERT  IGNORE INTO `regions` VALUES (405,'Saint James',19);
INSERT  IGNORE INTO `regions` VALUES (406,'Saint John',19);
INSERT  IGNORE INTO `regions` VALUES (407,'Saint Joseph',19);
INSERT  IGNORE INTO `regions` VALUES (408,'Saint Lucy',19);
INSERT  IGNORE INTO `regions` VALUES (409,'Saint Michael',19);
INSERT  IGNORE INTO `regions` VALUES (410,'Saint Peter',19);
INSERT  IGNORE INTO `regions` VALUES (411,'Saint Philip',19);
INSERT  IGNORE INTO `regions` VALUES (412,'Saint Thomas',19);
INSERT  IGNORE INTO `regions` VALUES (413,'Brest',20);
INSERT  IGNORE INTO `regions` VALUES (414,'Homjel\'',20);
INSERT  IGNORE INTO `regions` VALUES (415,'Hrodna',20);
INSERT  IGNORE INTO `regions` VALUES (416,'Mahiljow',20);
INSERT  IGNORE INTO `regions` VALUES (417,'Mahilyowskaya Voblasts',20);
INSERT  IGNORE INTO `regions` VALUES (418,'Minsk',20);
INSERT  IGNORE INTO `regions` VALUES (419,'Minskaja Voblasts\'',20);
INSERT  IGNORE INTO `regions` VALUES (420,'Petrik',20);
INSERT  IGNORE INTO `regions` VALUES (421,'Vicebsk',20);
INSERT  IGNORE INTO `regions` VALUES (422,'Antwerpen',21);
INSERT  IGNORE INTO `regions` VALUES (423,'Berchem',21);
INSERT  IGNORE INTO `regions` VALUES (424,'Brabant',21);
INSERT  IGNORE INTO `regions` VALUES (425,'Brabant Wallon',21);
INSERT  IGNORE INTO `regions` VALUES (426,'Brussel',21);
INSERT  IGNORE INTO `regions` VALUES (427,'East Flanders',21);
INSERT  IGNORE INTO `regions` VALUES (428,'Hainaut',21);
INSERT  IGNORE INTO `regions` VALUES (429,'Liege',21);
INSERT  IGNORE INTO `regions` VALUES (430,'Limburg',21);
INSERT  IGNORE INTO `regions` VALUES (431,'Luxembourg',21);
INSERT  IGNORE INTO `regions` VALUES (432,'Namur',21);
INSERT  IGNORE INTO `regions` VALUES (433,'Ontario',21);
INSERT  IGNORE INTO `regions` VALUES (434,'Oost-Vlaanderen',21);
INSERT  IGNORE INTO `regions` VALUES (435,'Provincie Brabant',21);
INSERT  IGNORE INTO `regions` VALUES (436,'Vlaams-Brabant',21);
INSERT  IGNORE INTO `regions` VALUES (437,'Wallonne',21);
INSERT  IGNORE INTO `regions` VALUES (438,'West-Vlaanderen',21);
INSERT  IGNORE INTO `regions` VALUES (439,'Belize',22);
INSERT  IGNORE INTO `regions` VALUES (440,'Cayo',22);
INSERT  IGNORE INTO `regions` VALUES (441,'Corozal',22);
INSERT  IGNORE INTO `regions` VALUES (442,'Orange Walk',22);
INSERT  IGNORE INTO `regions` VALUES (443,'Stann Creek',22);
INSERT  IGNORE INTO `regions` VALUES (444,'Toledo',22);
INSERT  IGNORE INTO `regions` VALUES (445,'Alibori',23);
INSERT  IGNORE INTO `regions` VALUES (446,'Atacora',23);
INSERT  IGNORE INTO `regions` VALUES (447,'Atlantique',23);
INSERT  IGNORE INTO `regions` VALUES (448,'Borgou',23);
INSERT  IGNORE INTO `regions` VALUES (449,'Collines',23);
INSERT  IGNORE INTO `regions` VALUES (450,'Couffo',23);
INSERT  IGNORE INTO `regions` VALUES (451,'Donga',23);
INSERT  IGNORE INTO `regions` VALUES (452,'Littoral',23);
INSERT  IGNORE INTO `regions` VALUES (453,'Mono',23);
INSERT  IGNORE INTO `regions` VALUES (454,'Oueme',23);
INSERT  IGNORE INTO `regions` VALUES (455,'Plateau',23);
INSERT  IGNORE INTO `regions` VALUES (456,'Zou',23);
INSERT  IGNORE INTO `regions` VALUES (457,'Hamilton',24);
INSERT  IGNORE INTO `regions` VALUES (458,'Saint George',24);
INSERT  IGNORE INTO `regions` VALUES (459,'Bumthang',25);
INSERT  IGNORE INTO `regions` VALUES (460,'Chhukha',25);
INSERT  IGNORE INTO `regions` VALUES (461,'Chirang',25);
INSERT  IGNORE INTO `regions` VALUES (462,'Daga',25);
INSERT  IGNORE INTO `regions` VALUES (463,'Geylegphug',25);
INSERT  IGNORE INTO `regions` VALUES (464,'Ha',25);
INSERT  IGNORE INTO `regions` VALUES (465,'Lhuntshi',25);
INSERT  IGNORE INTO `regions` VALUES (466,'Mongar',25);
INSERT  IGNORE INTO `regions` VALUES (467,'Pemagatsel',25);
INSERT  IGNORE INTO `regions` VALUES (468,'Punakha',25);
INSERT  IGNORE INTO `regions` VALUES (469,'Rinpung',25);
INSERT  IGNORE INTO `regions` VALUES (470,'Samchi',25);
INSERT  IGNORE INTO `regions` VALUES (471,'Samdrup Jongkhar',25);
INSERT  IGNORE INTO `regions` VALUES (472,'Shemgang',25);
INSERT  IGNORE INTO `regions` VALUES (473,'Tashigang',25);
INSERT  IGNORE INTO `regions` VALUES (474,'Timphu',25);
INSERT  IGNORE INTO `regions` VALUES (475,'Tongsa',25);
INSERT  IGNORE INTO `regions` VALUES (476,'Wangdiphodrang',25);
INSERT  IGNORE INTO `regions` VALUES (477,'Beni',26);
INSERT  IGNORE INTO `regions` VALUES (478,'Chuquisaca',26);
INSERT  IGNORE INTO `regions` VALUES (479,'Cochabamba',26);
INSERT  IGNORE INTO `regions` VALUES (480,'La Paz',26);
INSERT  IGNORE INTO `regions` VALUES (481,'Oruro',26);
INSERT  IGNORE INTO `regions` VALUES (482,'Pando',26);
INSERT  IGNORE INTO `regions` VALUES (483,'Potosi',26);
INSERT  IGNORE INTO `regions` VALUES (484,'Santa Cruz',26);
INSERT  IGNORE INTO `regions` VALUES (485,'Tarija',26);
INSERT  IGNORE INTO `regions` VALUES (486,'Federacija Bosna i Hercegovina',27);
INSERT  IGNORE INTO `regions` VALUES (487,'Republika Srpska',27);
INSERT  IGNORE INTO `regions` VALUES (488,'Central Bobonong',28);
INSERT  IGNORE INTO `regions` VALUES (489,'Central Boteti',28);
INSERT  IGNORE INTO `regions` VALUES (490,'Central Mahalapye',28);
INSERT  IGNORE INTO `regions` VALUES (491,'Central Serowe-Palapye',28);
INSERT  IGNORE INTO `regions` VALUES (492,'Central Tutume',28);
INSERT  IGNORE INTO `regions` VALUES (493,'Chobe',28);
INSERT  IGNORE INTO `regions` VALUES (494,'Francistown',28);
INSERT  IGNORE INTO `regions` VALUES (495,'Gaborone',28);
INSERT  IGNORE INTO `regions` VALUES (496,'Ghanzi',28);
INSERT  IGNORE INTO `regions` VALUES (497,'Jwaneng',28);
INSERT  IGNORE INTO `regions` VALUES (498,'Kgalagadi North',28);
INSERT  IGNORE INTO `regions` VALUES (499,'Kgalagadi South',28);
INSERT  IGNORE INTO `regions` VALUES (500,'Kgatleng',28);
INSERT  IGNORE INTO `regions` VALUES (501,'Kweneng',28);
INSERT  IGNORE INTO `regions` VALUES (502,'Lobatse',28);
INSERT  IGNORE INTO `regions` VALUES (503,'Ngamiland',28);
INSERT  IGNORE INTO `regions` VALUES (504,'Ngwaketse',28);
INSERT  IGNORE INTO `regions` VALUES (505,'North East',28);
INSERT  IGNORE INTO `regions` VALUES (506,'Okavango',28);
INSERT  IGNORE INTO `regions` VALUES (507,'Orapa',28);
INSERT  IGNORE INTO `regions` VALUES (508,'Selibe Phikwe',28);
INSERT  IGNORE INTO `regions` VALUES (509,'South East',28);
INSERT  IGNORE INTO `regions` VALUES (510,'Sowa',28);
INSERT  IGNORE INTO `regions` VALUES (511,'Bouvet Island',29);
INSERT  IGNORE INTO `regions` VALUES (512,'Acre',30);
INSERT  IGNORE INTO `regions` VALUES (513,'Alagoas',30);
INSERT  IGNORE INTO `regions` VALUES (514,'Amapa',30);
INSERT  IGNORE INTO `regions` VALUES (515,'Amazonas',30);
INSERT  IGNORE INTO `regions` VALUES (516,'Bahia',30);
INSERT  IGNORE INTO `regions` VALUES (517,'Ceara',30);
INSERT  IGNORE INTO `regions` VALUES (518,'Distrito Federal',30);
INSERT  IGNORE INTO `regions` VALUES (519,'Espirito Santo',30);
INSERT  IGNORE INTO `regions` VALUES (520,'Estado de Sao Paulo',30);
INSERT  IGNORE INTO `regions` VALUES (521,'Goias',30);
INSERT  IGNORE INTO `regions` VALUES (522,'Maranhao',30);
INSERT  IGNORE INTO `regions` VALUES (523,'Mato Grosso',30);
INSERT  IGNORE INTO `regions` VALUES (524,'Mato Grosso do Sul',30);
INSERT  IGNORE INTO `regions` VALUES (525,'Minas Gerais',30);
INSERT  IGNORE INTO `regions` VALUES (526,'Para',30);
INSERT  IGNORE INTO `regions` VALUES (527,'Paraiba',30);
INSERT  IGNORE INTO `regions` VALUES (528,'Parana',30);
INSERT  IGNORE INTO `regions` VALUES (529,'Pernambuco',30);
INSERT  IGNORE INTO `regions` VALUES (530,'Piaui',30);
INSERT  IGNORE INTO `regions` VALUES (531,'Rio Grande do Norte',30);
INSERT  IGNORE INTO `regions` VALUES (532,'Rio Grande do Sul',30);
INSERT  IGNORE INTO `regions` VALUES (533,'Rio de Janeiro',30);
INSERT  IGNORE INTO `regions` VALUES (534,'Rondonia',30);
INSERT  IGNORE INTO `regions` VALUES (535,'Roraima',30);
INSERT  IGNORE INTO `regions` VALUES (536,'Santa Catarina',30);
INSERT  IGNORE INTO `regions` VALUES (537,'Sao Paulo',30);
INSERT  IGNORE INTO `regions` VALUES (538,'Sergipe',30);
INSERT  IGNORE INTO `regions` VALUES (539,'Tocantins',30);
INSERT  IGNORE INTO `regions` VALUES (540,'British Indian Ocean Territory',31);
INSERT  IGNORE INTO `regions` VALUES (541,'Belait',32);
INSERT  IGNORE INTO `regions` VALUES (542,'Brunei-Muara',32);
INSERT  IGNORE INTO `regions` VALUES (543,'Temburong',32);
INSERT  IGNORE INTO `regions` VALUES (544,'Tutong',32);
INSERT  IGNORE INTO `regions` VALUES (545,'Blagoevgrad',33);
INSERT  IGNORE INTO `regions` VALUES (546,'Burgas',33);
INSERT  IGNORE INTO `regions` VALUES (547,'Dobrich',33);
INSERT  IGNORE INTO `regions` VALUES (548,'Gabrovo',33);
INSERT  IGNORE INTO `regions` VALUES (549,'Haskovo',33);
INSERT  IGNORE INTO `regions` VALUES (550,'Jambol',33);
INSERT  IGNORE INTO `regions` VALUES (551,'Kardzhali',33);
INSERT  IGNORE INTO `regions` VALUES (552,'Kjustendil',33);
INSERT  IGNORE INTO `regions` VALUES (553,'Lovech',33);
INSERT  IGNORE INTO `regions` VALUES (554,'Montana',33);
INSERT  IGNORE INTO `regions` VALUES (555,'Oblast Sofiya-Grad',33);
INSERT  IGNORE INTO `regions` VALUES (556,'Pazardzhik',33);
INSERT  IGNORE INTO `regions` VALUES (557,'Pernik',33);
INSERT  IGNORE INTO `regions` VALUES (558,'Pleven',33);
INSERT  IGNORE INTO `regions` VALUES (559,'Plovdiv',33);
INSERT  IGNORE INTO `regions` VALUES (560,'Razgrad',33);
INSERT  IGNORE INTO `regions` VALUES (561,'Ruse',33);
INSERT  IGNORE INTO `regions` VALUES (562,'Shumen',33);
INSERT  IGNORE INTO `regions` VALUES (563,'Silistra',33);
INSERT  IGNORE INTO `regions` VALUES (564,'Sliven',33);
INSERT  IGNORE INTO `regions` VALUES (565,'Smoljan',33);
INSERT  IGNORE INTO `regions` VALUES (566,'Sofija grad',33);
INSERT  IGNORE INTO `regions` VALUES (567,'Sofijska oblast',33);
INSERT  IGNORE INTO `regions` VALUES (568,'Stara Zagora',33);
INSERT  IGNORE INTO `regions` VALUES (569,'Targovishte',33);
INSERT  IGNORE INTO `regions` VALUES (570,'Varna',33);
INSERT  IGNORE INTO `regions` VALUES (571,'Veliko Tarnovo',33);
INSERT  IGNORE INTO `regions` VALUES (572,'Vidin',33);
INSERT  IGNORE INTO `regions` VALUES (573,'Vraca',33);
INSERT  IGNORE INTO `regions` VALUES (574,'Yablaniza',33);
INSERT  IGNORE INTO `regions` VALUES (575,'Bale',34);
INSERT  IGNORE INTO `regions` VALUES (576,'Bam',34);
INSERT  IGNORE INTO `regions` VALUES (577,'Bazega',34);
INSERT  IGNORE INTO `regions` VALUES (578,'Bougouriba',34);
INSERT  IGNORE INTO `regions` VALUES (579,'Boulgou',34);
INSERT  IGNORE INTO `regions` VALUES (580,'Boulkiemde',34);
INSERT  IGNORE INTO `regions` VALUES (581,'Comoe',34);
INSERT  IGNORE INTO `regions` VALUES (582,'Ganzourgou',34);
INSERT  IGNORE INTO `regions` VALUES (583,'Gnagna',34);
INSERT  IGNORE INTO `regions` VALUES (584,'Gourma',34);
INSERT  IGNORE INTO `regions` VALUES (585,'Houet',34);
INSERT  IGNORE INTO `regions` VALUES (586,'Ioba',34);
INSERT  IGNORE INTO `regions` VALUES (587,'Kadiogo',34);
INSERT  IGNORE INTO `regions` VALUES (588,'Kenedougou',34);
INSERT  IGNORE INTO `regions` VALUES (589,'Komandjari',34);
INSERT  IGNORE INTO `regions` VALUES (590,'Kompienga',34);
INSERT  IGNORE INTO `regions` VALUES (591,'Kossi',34);
INSERT  IGNORE INTO `regions` VALUES (592,'Kouritenga',34);
INSERT  IGNORE INTO `regions` VALUES (593,'Kourweogo',34);
INSERT  IGNORE INTO `regions` VALUES (594,'Leraba',34);
INSERT  IGNORE INTO `regions` VALUES (595,'Mouhoun',34);
INSERT  IGNORE INTO `regions` VALUES (596,'Nahouri',34);
INSERT  IGNORE INTO `regions` VALUES (597,'Namentenga',34);
INSERT  IGNORE INTO `regions` VALUES (598,'Noumbiel',34);
INSERT  IGNORE INTO `regions` VALUES (599,'Oubritenga',34);
INSERT  IGNORE INTO `regions` VALUES (600,'Oudalan',34);
INSERT  IGNORE INTO `regions` VALUES (601,'Passore',34);
INSERT  IGNORE INTO `regions` VALUES (602,'Poni',34);
INSERT  IGNORE INTO `regions` VALUES (603,'Sanguie',34);
INSERT  IGNORE INTO `regions` VALUES (604,'Sanmatenga',34);
INSERT  IGNORE INTO `regions` VALUES (605,'Seno',34);
INSERT  IGNORE INTO `regions` VALUES (606,'Sissili',34);
INSERT  IGNORE INTO `regions` VALUES (607,'Soum',34);
INSERT  IGNORE INTO `regions` VALUES (608,'Sourou',34);
INSERT  IGNORE INTO `regions` VALUES (609,'Tapoa',34);
INSERT  IGNORE INTO `regions` VALUES (610,'Tuy',34);
INSERT  IGNORE INTO `regions` VALUES (611,'Yatenga',34);
INSERT  IGNORE INTO `regions` VALUES (612,'Zondoma',34);
INSERT  IGNORE INTO `regions` VALUES (613,'Zoundweogo',34);
INSERT  IGNORE INTO `regions` VALUES (614,'Bubanza',35);
INSERT  IGNORE INTO `regions` VALUES (615,'Bujumbura',35);
INSERT  IGNORE INTO `regions` VALUES (616,'Bururi',35);
INSERT  IGNORE INTO `regions` VALUES (617,'Cankuzo',35);
INSERT  IGNORE INTO `regions` VALUES (618,'Cibitoke',35);
INSERT  IGNORE INTO `regions` VALUES (619,'Gitega',35);
INSERT  IGNORE INTO `regions` VALUES (620,'Karuzi',35);
INSERT  IGNORE INTO `regions` VALUES (621,'Kayanza',35);
INSERT  IGNORE INTO `regions` VALUES (622,'Kirundo',35);
INSERT  IGNORE INTO `regions` VALUES (623,'Makamba',35);
INSERT  IGNORE INTO `regions` VALUES (624,'Muramvya',35);
INSERT  IGNORE INTO `regions` VALUES (625,'Muyinga',35);
INSERT  IGNORE INTO `regions` VALUES (626,'Ngozi',35);
INSERT  IGNORE INTO `regions` VALUES (627,'Rutana',35);
INSERT  IGNORE INTO `regions` VALUES (628,'Ruyigi',35);
INSERT  IGNORE INTO `regions` VALUES (629,'Banteay Mean Chey',36);
INSERT  IGNORE INTO `regions` VALUES (630,'Bat Dambang',36);
INSERT  IGNORE INTO `regions` VALUES (631,'Kampong Cham',36);
INSERT  IGNORE INTO `regions` VALUES (632,'Kampong Chhnang',36);
INSERT  IGNORE INTO `regions` VALUES (633,'Kampong Spoeu',36);
INSERT  IGNORE INTO `regions` VALUES (634,'Kampong Thum',36);
INSERT  IGNORE INTO `regions` VALUES (635,'Kampot',36);
INSERT  IGNORE INTO `regions` VALUES (636,'Kandal',36);
INSERT  IGNORE INTO `regions` VALUES (637,'Kaoh Kong',36);
INSERT  IGNORE INTO `regions` VALUES (638,'Kracheh',36);
INSERT  IGNORE INTO `regions` VALUES (639,'Krong Kaeb',36);
INSERT  IGNORE INTO `regions` VALUES (640,'Krong Pailin',36);
INSERT  IGNORE INTO `regions` VALUES (641,'Krong Preah Sihanouk',36);
INSERT  IGNORE INTO `regions` VALUES (642,'Mondol Kiri',36);
INSERT  IGNORE INTO `regions` VALUES (643,'Otdar Mean Chey',36);
INSERT  IGNORE INTO `regions` VALUES (644,'Phnum Penh',36);
INSERT  IGNORE INTO `regions` VALUES (645,'Pousat',36);
INSERT  IGNORE INTO `regions` VALUES (646,'Preah Vihear',36);
INSERT  IGNORE INTO `regions` VALUES (647,'Prey Veaeng',36);
INSERT  IGNORE INTO `regions` VALUES (648,'Rotanak Kiri',36);
INSERT  IGNORE INTO `regions` VALUES (649,'Siem Reab',36);
INSERT  IGNORE INTO `regions` VALUES (650,'Stueng Traeng',36);
INSERT  IGNORE INTO `regions` VALUES (651,'Svay Rieng',36);
INSERT  IGNORE INTO `regions` VALUES (652,'Takaev',36);
INSERT  IGNORE INTO `regions` VALUES (653,'Adamaoua',37);
INSERT  IGNORE INTO `regions` VALUES (654,'Centre',37);
INSERT  IGNORE INTO `regions` VALUES (655,'Est',37);
INSERT  IGNORE INTO `regions` VALUES (656,'Littoral',37);
INSERT  IGNORE INTO `regions` VALUES (657,'Nord',37);
INSERT  IGNORE INTO `regions` VALUES (658,'Nord Extreme',37);
INSERT  IGNORE INTO `regions` VALUES (659,'Nordouest',37);
INSERT  IGNORE INTO `regions` VALUES (660,'Ouest',37);
INSERT  IGNORE INTO `regions` VALUES (661,'Sud',37);
INSERT  IGNORE INTO `regions` VALUES (662,'Sudouest',37);
INSERT  IGNORE INTO `regions` VALUES (663,'Alberta',38);
INSERT  IGNORE INTO `regions` VALUES (664,'British Columbia',38);
INSERT  IGNORE INTO `regions` VALUES (665,'Manitoba',38);
INSERT  IGNORE INTO `regions` VALUES (666,'New Brunswick',38);
INSERT  IGNORE INTO `regions` VALUES (667,'Newfoundland and Labrador',38);
INSERT  IGNORE INTO `regions` VALUES (668,'Northwest Territories',38);
INSERT  IGNORE INTO `regions` VALUES (669,'Nova Scotia',38);
INSERT  IGNORE INTO `regions` VALUES (670,'Nunavut',38);
INSERT  IGNORE INTO `regions` VALUES (671,'Ontario',38);
INSERT  IGNORE INTO `regions` VALUES (672,'Prince Edward Island',38);
INSERT  IGNORE INTO `regions` VALUES (673,'Quebec',38);
INSERT  IGNORE INTO `regions` VALUES (674,'Saskatchewan',38);
INSERT  IGNORE INTO `regions` VALUES (675,'Yukon',38);
INSERT  IGNORE INTO `regions` VALUES (676,'Boavista',39);
INSERT  IGNORE INTO `regions` VALUES (677,'Brava',39);
INSERT  IGNORE INTO `regions` VALUES (678,'Fogo',39);
INSERT  IGNORE INTO `regions` VALUES (679,'Maio',39);
INSERT  IGNORE INTO `regions` VALUES (680,'Sal',39);
INSERT  IGNORE INTO `regions` VALUES (681,'Santo Antao',39);
INSERT  IGNORE INTO `regions` VALUES (682,'Sao Nicolau',39);
INSERT  IGNORE INTO `regions` VALUES (683,'Sao Tiago',39);
INSERT  IGNORE INTO `regions` VALUES (684,'Sao Vicente',39);
INSERT  IGNORE INTO `regions` VALUES (685,'Grand Cayman',40);
INSERT  IGNORE INTO `regions` VALUES (686,'Bamingui-Bangoran',41);
INSERT  IGNORE INTO `regions` VALUES (687,'Bangui',41);
INSERT  IGNORE INTO `regions` VALUES (688,'Basse-Kotto',41);
INSERT  IGNORE INTO `regions` VALUES (689,'Haut-Mbomou',41);
INSERT  IGNORE INTO `regions` VALUES (690,'Haute-Kotto',41);
INSERT  IGNORE INTO `regions` VALUES (691,'Kemo',41);
INSERT  IGNORE INTO `regions` VALUES (692,'Lobaye',41);
INSERT  IGNORE INTO `regions` VALUES (693,'Mambere-Kadei',41);
INSERT  IGNORE INTO `regions` VALUES (694,'Mbomou',41);
INSERT  IGNORE INTO `regions` VALUES (695,'Nana-Gribizi',41);
INSERT  IGNORE INTO `regions` VALUES (696,'Nana-Mambere',41);
INSERT  IGNORE INTO `regions` VALUES (697,'Ombella Mpoko',41);
INSERT  IGNORE INTO `regions` VALUES (698,'Ouaka',41);
INSERT  IGNORE INTO `regions` VALUES (699,'Ouham',41);
INSERT  IGNORE INTO `regions` VALUES (700,'Ouham-Pende',41);
INSERT  IGNORE INTO `regions` VALUES (701,'Sangha-Mbaere',41);
INSERT  IGNORE INTO `regions` VALUES (702,'Vakaga',41);
INSERT  IGNORE INTO `regions` VALUES (703,'Batha',42);
INSERT  IGNORE INTO `regions` VALUES (704,'Biltine',42);
INSERT  IGNORE INTO `regions` VALUES (705,'Bourkou-Ennedi-Tibesti',42);
INSERT  IGNORE INTO `regions` VALUES (706,'Chari-Baguirmi',42);
INSERT  IGNORE INTO `regions` VALUES (707,'Guera',42);
INSERT  IGNORE INTO `regions` VALUES (708,'Kanem',42);
INSERT  IGNORE INTO `regions` VALUES (709,'Lac',42);
INSERT  IGNORE INTO `regions` VALUES (710,'Logone Occidental',42);
INSERT  IGNORE INTO `regions` VALUES (711,'Logone Oriental',42);
INSERT  IGNORE INTO `regions` VALUES (712,'Mayo-Kebbi',42);
INSERT  IGNORE INTO `regions` VALUES (713,'Moyen-Chari',42);
INSERT  IGNORE INTO `regions` VALUES (714,'Ouaddai',42);
INSERT  IGNORE INTO `regions` VALUES (715,'Salamat',42);
INSERT  IGNORE INTO `regions` VALUES (716,'Tandjile',42);
INSERT  IGNORE INTO `regions` VALUES (717,'Aisen',43);
INSERT  IGNORE INTO `regions` VALUES (718,'Antofagasta',43);
INSERT  IGNORE INTO `regions` VALUES (719,'Araucania',43);
INSERT  IGNORE INTO `regions` VALUES (720,'Atacama',43);
INSERT  IGNORE INTO `regions` VALUES (721,'Bio Bio',43);
INSERT  IGNORE INTO `regions` VALUES (722,'Coquimbo',43);
INSERT  IGNORE INTO `regions` VALUES (723,'Libertador General Bernardo O\'',43);
INSERT  IGNORE INTO `regions` VALUES (724,'Los Lagos',43);
INSERT  IGNORE INTO `regions` VALUES (725,'Magellanes',43);
INSERT  IGNORE INTO `regions` VALUES (726,'Maule',43);
INSERT  IGNORE INTO `regions` VALUES (727,'Metropolitana',43);
INSERT  IGNORE INTO `regions` VALUES (728,'Metropolitana de Santiago',43);
INSERT  IGNORE INTO `regions` VALUES (729,'Tarapaca',43);
INSERT  IGNORE INTO `regions` VALUES (730,'Valparaiso',43);
INSERT  IGNORE INTO `regions` VALUES (731,'Anhui',44);
INSERT  IGNORE INTO `regions` VALUES (732,'Anhui Province',44);
INSERT  IGNORE INTO `regions` VALUES (733,'Anhui Sheng',44);
INSERT  IGNORE INTO `regions` VALUES (734,'Aomen',44);
INSERT  IGNORE INTO `regions` VALUES (735,'Beijing',44);
INSERT  IGNORE INTO `regions` VALUES (736,'Beijing Shi',44);
INSERT  IGNORE INTO `regions` VALUES (737,'Chongqing',44);
INSERT  IGNORE INTO `regions` VALUES (738,'Fujian',44);
INSERT  IGNORE INTO `regions` VALUES (739,'Fujian Sheng',44);
INSERT  IGNORE INTO `regions` VALUES (740,'Gansu',44);
INSERT  IGNORE INTO `regions` VALUES (741,'Guangdong',44);
INSERT  IGNORE INTO `regions` VALUES (742,'Guangdong Sheng',44);
INSERT  IGNORE INTO `regions` VALUES (743,'Guangxi',44);
INSERT  IGNORE INTO `regions` VALUES (744,'Guizhou',44);
INSERT  IGNORE INTO `regions` VALUES (745,'Hainan',44);
INSERT  IGNORE INTO `regions` VALUES (746,'Hebei',44);
INSERT  IGNORE INTO `regions` VALUES (747,'Heilongjiang',44);
INSERT  IGNORE INTO `regions` VALUES (748,'Henan',44);
INSERT  IGNORE INTO `regions` VALUES (749,'Hubei',44);
INSERT  IGNORE INTO `regions` VALUES (750,'Hunan',44);
INSERT  IGNORE INTO `regions` VALUES (751,'Jiangsu',44);
INSERT  IGNORE INTO `regions` VALUES (752,'Jiangsu Sheng',44);
INSERT  IGNORE INTO `regions` VALUES (753,'Jiangxi',44);
INSERT  IGNORE INTO `regions` VALUES (754,'Jilin',44);
INSERT  IGNORE INTO `regions` VALUES (755,'Liaoning',44);
INSERT  IGNORE INTO `regions` VALUES (756,'Liaoning Sheng',44);
INSERT  IGNORE INTO `regions` VALUES (757,'Nei Monggol',44);
INSERT  IGNORE INTO `regions` VALUES (758,'Ningxia Hui',44);
INSERT  IGNORE INTO `regions` VALUES (759,'Qinghai',44);
INSERT  IGNORE INTO `regions` VALUES (760,'Shaanxi',44);
INSERT  IGNORE INTO `regions` VALUES (761,'Shandong',44);
INSERT  IGNORE INTO `regions` VALUES (762,'Shandong Sheng',44);
INSERT  IGNORE INTO `regions` VALUES (763,'Shanghai',44);
INSERT  IGNORE INTO `regions` VALUES (764,'Shanxi',44);
INSERT  IGNORE INTO `regions` VALUES (765,'Sichuan',44);
INSERT  IGNORE INTO `regions` VALUES (766,'Tianjin',44);
INSERT  IGNORE INTO `regions` VALUES (767,'Xianggang',44);
INSERT  IGNORE INTO `regions` VALUES (768,'Xinjiang',44);
INSERT  IGNORE INTO `regions` VALUES (769,'Xizang',44);
INSERT  IGNORE INTO `regions` VALUES (770,'Yunnan',44);
INSERT  IGNORE INTO `regions` VALUES (771,'Zhejiang',44);
INSERT  IGNORE INTO `regions` VALUES (772,'Zhejiang Sheng',44);
INSERT  IGNORE INTO `regions` VALUES (773,'Christmas Island',45);
INSERT  IGNORE INTO `regions` VALUES (774,'Cocos (Keeling) Islands',46);
INSERT  IGNORE INTO `regions` VALUES (775,'Amazonas',47);
INSERT  IGNORE INTO `regions` VALUES (776,'Antioquia',47);
INSERT  IGNORE INTO `regions` VALUES (777,'Arauca',47);
INSERT  IGNORE INTO `regions` VALUES (778,'Atlantico',47);
INSERT  IGNORE INTO `regions` VALUES (779,'Bogota',47);
INSERT  IGNORE INTO `regions` VALUES (780,'Bolivar',47);
INSERT  IGNORE INTO `regions` VALUES (781,'Boyaca',47);
INSERT  IGNORE INTO `regions` VALUES (782,'Caldas',47);
INSERT  IGNORE INTO `regions` VALUES (783,'Caqueta',47);
INSERT  IGNORE INTO `regions` VALUES (784,'Casanare',47);
INSERT  IGNORE INTO `regions` VALUES (785,'Cauca',47);
INSERT  IGNORE INTO `regions` VALUES (786,'Cesar',47);
INSERT  IGNORE INTO `regions` VALUES (787,'Choco',47);
INSERT  IGNORE INTO `regions` VALUES (788,'Cordoba',47);
INSERT  IGNORE INTO `regions` VALUES (789,'Cundinamarca',47);
INSERT  IGNORE INTO `regions` VALUES (790,'Guainia',47);
INSERT  IGNORE INTO `regions` VALUES (791,'Guaviare',47);
INSERT  IGNORE INTO `regions` VALUES (792,'Huila',47);
INSERT  IGNORE INTO `regions` VALUES (793,'La Guajira',47);
INSERT  IGNORE INTO `regions` VALUES (794,'Magdalena',47);
INSERT  IGNORE INTO `regions` VALUES (795,'Meta',47);
INSERT  IGNORE INTO `regions` VALUES (796,'Narino',47);
INSERT  IGNORE INTO `regions` VALUES (797,'Norte de Santander',47);
INSERT  IGNORE INTO `regions` VALUES (798,'Putumayo',47);
INSERT  IGNORE INTO `regions` VALUES (799,'Quindio',47);
INSERT  IGNORE INTO `regions` VALUES (800,'Risaralda',47);
INSERT  IGNORE INTO `regions` VALUES (801,'San Andres y Providencia',47);
INSERT  IGNORE INTO `regions` VALUES (802,'Santander',47);
INSERT  IGNORE INTO `regions` VALUES (803,'Sucre',47);
INSERT  IGNORE INTO `regions` VALUES (804,'Tolima',47);
INSERT  IGNORE INTO `regions` VALUES (805,'Valle del Cauca',47);
INSERT  IGNORE INTO `regions` VALUES (806,'Vaupes',47);
INSERT  IGNORE INTO `regions` VALUES (807,'Vichada',47);
INSERT  IGNORE INTO `regions` VALUES (808,'Mwali',48);
INSERT  IGNORE INTO `regions` VALUES (809,'Njazidja',48);
INSERT  IGNORE INTO `regions` VALUES (810,'Nzwani',48);
INSERT  IGNORE INTO `regions` VALUES (811,'Bouenza',49);
INSERT  IGNORE INTO `regions` VALUES (812,'Brazzaville',49);
INSERT  IGNORE INTO `regions` VALUES (813,'Cuvette',49);
INSERT  IGNORE INTO `regions` VALUES (814,'Kouilou',49);
INSERT  IGNORE INTO `regions` VALUES (815,'Lekoumou',49);
INSERT  IGNORE INTO `regions` VALUES (816,'Likouala',49);
INSERT  IGNORE INTO `regions` VALUES (817,'Niari',49);
INSERT  IGNORE INTO `regions` VALUES (818,'Plateaux',49);
INSERT  IGNORE INTO `regions` VALUES (819,'Pool',49);
INSERT  IGNORE INTO `regions` VALUES (820,'Sangha',49);
INSERT  IGNORE INTO `regions` VALUES (821,'Bandundu',50);
INSERT  IGNORE INTO `regions` VALUES (822,'Bas-Congo',50);
INSERT  IGNORE INTO `regions` VALUES (823,'Equateur',50);
INSERT  IGNORE INTO `regions` VALUES (824,'Haut-Congo',50);
INSERT  IGNORE INTO `regions` VALUES (825,'Kasai-Occidental',50);
INSERT  IGNORE INTO `regions` VALUES (826,'Kasai-Oriental',50);
INSERT  IGNORE INTO `regions` VALUES (827,'Katanga',50);
INSERT  IGNORE INTO `regions` VALUES (828,'Kinshasa',50);
INSERT  IGNORE INTO `regions` VALUES (829,'Maniema',50);
INSERT  IGNORE INTO `regions` VALUES (830,'Nord-Kivu',50);
INSERT  IGNORE INTO `regions` VALUES (831,'Sud-Kivu',50);
INSERT  IGNORE INTO `regions` VALUES (832,'Aitutaki',51);
INSERT  IGNORE INTO `regions` VALUES (833,'Atiu',51);
INSERT  IGNORE INTO `regions` VALUES (834,'Mangaia',51);
INSERT  IGNORE INTO `regions` VALUES (835,'Manihiki',51);
INSERT  IGNORE INTO `regions` VALUES (836,'Mauke',51);
INSERT  IGNORE INTO `regions` VALUES (837,'Mitiaro',51);
INSERT  IGNORE INTO `regions` VALUES (838,'Nassau',51);
INSERT  IGNORE INTO `regions` VALUES (839,'Pukapuka',51);
INSERT  IGNORE INTO `regions` VALUES (840,'Rakahanga',51);
INSERT  IGNORE INTO `regions` VALUES (841,'Rarotonga',51);
INSERT  IGNORE INTO `regions` VALUES (842,'Tongareva',51);
INSERT  IGNORE INTO `regions` VALUES (843,'Alajuela',52);
INSERT  IGNORE INTO `regions` VALUES (844,'Cartago',52);
INSERT  IGNORE INTO `regions` VALUES (845,'Guanacaste',52);
INSERT  IGNORE INTO `regions` VALUES (846,'Heredia',52);
INSERT  IGNORE INTO `regions` VALUES (847,'Limon',52);
INSERT  IGNORE INTO `regions` VALUES (848,'Puntarenas',52);
INSERT  IGNORE INTO `regions` VALUES (849,'San Jose',52);
INSERT  IGNORE INTO `regions` VALUES (850,'Abidjan',53);
INSERT  IGNORE INTO `regions` VALUES (851,'Agneby',53);
INSERT  IGNORE INTO `regions` VALUES (852,'Bafing',53);
INSERT  IGNORE INTO `regions` VALUES (853,'Denguele',53);
INSERT  IGNORE INTO `regions` VALUES (854,'Dix-huit Montagnes',53);
INSERT  IGNORE INTO `regions` VALUES (855,'Fromager',53);
INSERT  IGNORE INTO `regions` VALUES (856,'Haut-Sassandra',53);
INSERT  IGNORE INTO `regions` VALUES (857,'Lacs',53);
INSERT  IGNORE INTO `regions` VALUES (858,'Lagunes',53);
INSERT  IGNORE INTO `regions` VALUES (859,'Marahoue',53);
INSERT  IGNORE INTO `regions` VALUES (860,'Moyen-Cavally',53);
INSERT  IGNORE INTO `regions` VALUES (861,'Moyen-Comoe',53);
INSERT  IGNORE INTO `regions` VALUES (862,'N\'zi-Comoe',53);
INSERT  IGNORE INTO `regions` VALUES (863,'Sassandra',53);
INSERT  IGNORE INTO `regions` VALUES (864,'Savanes',53);
INSERT  IGNORE INTO `regions` VALUES (865,'Sud-Bandama',53);
INSERT  IGNORE INTO `regions` VALUES (866,'Sud-Comoe',53);
INSERT  IGNORE INTO `regions` VALUES (867,'Vallee du Bandama',53);
INSERT  IGNORE INTO `regions` VALUES (868,'Worodougou',53);
INSERT  IGNORE INTO `regions` VALUES (869,'Zanzan',53);
INSERT  IGNORE INTO `regions` VALUES (870,'Bjelovar-Bilogora',54);
INSERT  IGNORE INTO `regions` VALUES (871,'Dubrovnik-Neretva',54);
INSERT  IGNORE INTO `regions` VALUES (872,'Grad Zagreb',54);
INSERT  IGNORE INTO `regions` VALUES (873,'Istra',54);
INSERT  IGNORE INTO `regions` VALUES (874,'Karlovac',54);
INSERT  IGNORE INTO `regions` VALUES (875,'Koprivnica-Krizhevci',54);
INSERT  IGNORE INTO `regions` VALUES (876,'Krapina-Zagorje',54);
INSERT  IGNORE INTO `regions` VALUES (877,'Lika-Senj',54);
INSERT  IGNORE INTO `regions` VALUES (878,'Medhimurje',54);
INSERT  IGNORE INTO `regions` VALUES (879,'Medimurska Zupanija',54);
INSERT  IGNORE INTO `regions` VALUES (880,'Osijek-Baranja',54);
INSERT  IGNORE INTO `regions` VALUES (881,'Osjecko-Baranjska Zupanija',54);
INSERT  IGNORE INTO `regions` VALUES (882,'Pozhega-Slavonija',54);
INSERT  IGNORE INTO `regions` VALUES (883,'Primorje-Gorski Kotar',54);
INSERT  IGNORE INTO `regions` VALUES (884,'Shibenik-Knin',54);
INSERT  IGNORE INTO `regions` VALUES (885,'Sisak-Moslavina',54);
INSERT  IGNORE INTO `regions` VALUES (886,'Slavonski Brod-Posavina',54);
INSERT  IGNORE INTO `regions` VALUES (887,'Split-Dalmacija',54);
INSERT  IGNORE INTO `regions` VALUES (888,'Varazhdin',54);
INSERT  IGNORE INTO `regions` VALUES (889,'Virovitica-Podravina',54);
INSERT  IGNORE INTO `regions` VALUES (890,'Vukovar-Srijem',54);
INSERT  IGNORE INTO `regions` VALUES (891,'Zadar',54);
INSERT  IGNORE INTO `regions` VALUES (892,'Zagreb',54);
INSERT  IGNORE INTO `regions` VALUES (893,'Camaguey',55);
INSERT  IGNORE INTO `regions` VALUES (894,'Ciego de Avila',55);
INSERT  IGNORE INTO `regions` VALUES (895,'Cienfuegos',55);
INSERT  IGNORE INTO `regions` VALUES (896,'Ciudad de la Habana',55);
INSERT  IGNORE INTO `regions` VALUES (897,'Granma',55);
INSERT  IGNORE INTO `regions` VALUES (898,'Guantanamo',55);
INSERT  IGNORE INTO `regions` VALUES (899,'Habana',55);
INSERT  IGNORE INTO `regions` VALUES (900,'Holguin',55);
INSERT  IGNORE INTO `regions` VALUES (901,'Isla de la Juventud',55);
INSERT  IGNORE INTO `regions` VALUES (902,'La Habana',55);
INSERT  IGNORE INTO `regions` VALUES (903,'Las Tunas',55);
INSERT  IGNORE INTO `regions` VALUES (904,'Matanzas',55);
INSERT  IGNORE INTO `regions` VALUES (905,'Pinar del Rio',55);
INSERT  IGNORE INTO `regions` VALUES (906,'Sancti Spiritus',55);
INSERT  IGNORE INTO `regions` VALUES (907,'Santiago de Cuba',55);
INSERT  IGNORE INTO `regions` VALUES (908,'Villa Clara',55);
INSERT  IGNORE INTO `regions` VALUES (909,'Government controlled area',56);
INSERT  IGNORE INTO `regions` VALUES (910,'Limassol',56);
INSERT  IGNORE INTO `regions` VALUES (911,'Nicosia District',56);
INSERT  IGNORE INTO `regions` VALUES (912,'Paphos',56);
INSERT  IGNORE INTO `regions` VALUES (913,'Turkish controlled area',56);
INSERT  IGNORE INTO `regions` VALUES (914,'Central Bohemian',57);
INSERT  IGNORE INTO `regions` VALUES (915,'Frycovice',57);
INSERT  IGNORE INTO `regions` VALUES (916,'Jihocesky Kraj',57);
INSERT  IGNORE INTO `regions` VALUES (917,'Jihochesky',57);
INSERT  IGNORE INTO `regions` VALUES (918,'Jihomoravsky',57);
INSERT  IGNORE INTO `regions` VALUES (919,'Karlovarsky',57);
INSERT  IGNORE INTO `regions` VALUES (920,'Klecany',57);
INSERT  IGNORE INTO `regions` VALUES (921,'Kralovehradecky',57);
INSERT  IGNORE INTO `regions` VALUES (922,'Liberecky',57);
INSERT  IGNORE INTO `regions` VALUES (923,'Lipov',57);
INSERT  IGNORE INTO `regions` VALUES (924,'Moravskoslezsky',57);
INSERT  IGNORE INTO `regions` VALUES (925,'Olomoucky',57);
INSERT  IGNORE INTO `regions` VALUES (926,'Olomoucky Kraj',57);
INSERT  IGNORE INTO `regions` VALUES (927,'Pardubicky',57);
INSERT  IGNORE INTO `regions` VALUES (928,'Plzensky',57);
INSERT  IGNORE INTO `regions` VALUES (929,'Praha',57);
INSERT  IGNORE INTO `regions` VALUES (930,'Rajhrad',57);
INSERT  IGNORE INTO `regions` VALUES (931,'Smirice',57);
INSERT  IGNORE INTO `regions` VALUES (932,'South Moravian',57);
INSERT  IGNORE INTO `regions` VALUES (933,'Straz nad Nisou',57);
INSERT  IGNORE INTO `regions` VALUES (934,'Stredochesky',57);
INSERT  IGNORE INTO `regions` VALUES (935,'Unicov',57);
INSERT  IGNORE INTO `regions` VALUES (936,'Ustecky',57);
INSERT  IGNORE INTO `regions` VALUES (937,'Valletta',57);
INSERT  IGNORE INTO `regions` VALUES (938,'Velesin',57);
INSERT  IGNORE INTO `regions` VALUES (939,'Vysochina',57);
INSERT  IGNORE INTO `regions` VALUES (940,'Zlinsky',57);
INSERT  IGNORE INTO `regions` VALUES (941,'Arhus',58);
INSERT  IGNORE INTO `regions` VALUES (942,'Bornholm',58);
INSERT  IGNORE INTO `regions` VALUES (943,'Frederiksborg',58);
INSERT  IGNORE INTO `regions` VALUES (944,'Fyn',58);
INSERT  IGNORE INTO `regions` VALUES (945,'Hovedstaden',58);
INSERT  IGNORE INTO `regions` VALUES (946,'Kobenhavn',58);
INSERT  IGNORE INTO `regions` VALUES (947,'Kobenhavns Amt',58);
INSERT  IGNORE INTO `regions` VALUES (948,'Kobenhavns Kommune',58);
INSERT  IGNORE INTO `regions` VALUES (949,'Nordjylland',58);
INSERT  IGNORE INTO `regions` VALUES (950,'Ribe',58);
INSERT  IGNORE INTO `regions` VALUES (951,'Ringkobing',58);
INSERT  IGNORE INTO `regions` VALUES (952,'Roervig',58);
INSERT  IGNORE INTO `regions` VALUES (953,'Roskilde',58);
INSERT  IGNORE INTO `regions` VALUES (954,'Roslev',58);
INSERT  IGNORE INTO `regions` VALUES (955,'Sjaelland',58);
INSERT  IGNORE INTO `regions` VALUES (956,'Soeborg',58);
INSERT  IGNORE INTO `regions` VALUES (957,'Sonderjylland',58);
INSERT  IGNORE INTO `regions` VALUES (958,'Storstrom',58);
INSERT  IGNORE INTO `regions` VALUES (959,'Syddanmark',58);
INSERT  IGNORE INTO `regions` VALUES (960,'Toelloese',58);
INSERT  IGNORE INTO `regions` VALUES (961,'Vejle',58);
INSERT  IGNORE INTO `regions` VALUES (962,'Vestsjalland',58);
INSERT  IGNORE INTO `regions` VALUES (963,'Viborg',58);
INSERT  IGNORE INTO `regions` VALUES (964,'\'Ali Sabih',59);
INSERT  IGNORE INTO `regions` VALUES (965,'Dikhil',59);
INSERT  IGNORE INTO `regions` VALUES (966,'Jibuti',59);
INSERT  IGNORE INTO `regions` VALUES (967,'Tajurah',59);
INSERT  IGNORE INTO `regions` VALUES (968,'Ubuk',59);
INSERT  IGNORE INTO `regions` VALUES (969,'Saint Andrew',60);
INSERT  IGNORE INTO `regions` VALUES (970,'Saint David',60);
INSERT  IGNORE INTO `regions` VALUES (971,'Saint George',60);
INSERT  IGNORE INTO `regions` VALUES (972,'Saint John',60);
INSERT  IGNORE INTO `regions` VALUES (973,'Saint Joseph',60);
INSERT  IGNORE INTO `regions` VALUES (974,'Saint Luke',60);
INSERT  IGNORE INTO `regions` VALUES (975,'Saint Mark',60);
INSERT  IGNORE INTO `regions` VALUES (976,'Saint Patrick',60);
INSERT  IGNORE INTO `regions` VALUES (977,'Saint Paul',60);
INSERT  IGNORE INTO `regions` VALUES (978,'Saint Peter',60);
INSERT  IGNORE INTO `regions` VALUES (979,'Azua',61);
INSERT  IGNORE INTO `regions` VALUES (980,'Bahoruco',61);
INSERT  IGNORE INTO `regions` VALUES (981,'Barahona',61);
INSERT  IGNORE INTO `regions` VALUES (982,'Dajabon',61);
INSERT  IGNORE INTO `regions` VALUES (983,'Distrito Nacional',61);
INSERT  IGNORE INTO `regions` VALUES (984,'Duarte',61);
INSERT  IGNORE INTO `regions` VALUES (985,'El Seybo',61);
INSERT  IGNORE INTO `regions` VALUES (986,'Elias Pina',61);
INSERT  IGNORE INTO `regions` VALUES (987,'Espaillat',61);
INSERT  IGNORE INTO `regions` VALUES (988,'Hato Mayor',61);
INSERT  IGNORE INTO `regions` VALUES (989,'Independencia',61);
INSERT  IGNORE INTO `regions` VALUES (990,'La Altagracia',61);
INSERT  IGNORE INTO `regions` VALUES (991,'La Romana',61);
INSERT  IGNORE INTO `regions` VALUES (992,'La Vega',61);
INSERT  IGNORE INTO `regions` VALUES (993,'Maria Trinidad Sanchez',61);
INSERT  IGNORE INTO `regions` VALUES (994,'Monsenor Nouel',61);
INSERT  IGNORE INTO `regions` VALUES (995,'Monte Cristi',61);
INSERT  IGNORE INTO `regions` VALUES (996,'Monte Plata',61);
INSERT  IGNORE INTO `regions` VALUES (997,'Pedernales',61);
INSERT  IGNORE INTO `regions` VALUES (998,'Peravia',61);
INSERT  IGNORE INTO `regions` VALUES (999,'Puerto Plata',61);
INSERT  IGNORE INTO `regions` VALUES (1000,'Salcedo',61);
INSERT  IGNORE INTO `regions` VALUES (1001,'Samana',61);
INSERT  IGNORE INTO `regions` VALUES (1002,'San Cristobal',61);
INSERT  IGNORE INTO `regions` VALUES (1003,'San Juan',61);
INSERT  IGNORE INTO `regions` VALUES (1004,'San Pedro de Macoris',61);
INSERT  IGNORE INTO `regions` VALUES (1005,'Sanchez Ramirez',61);
INSERT  IGNORE INTO `regions` VALUES (1006,'Santiago',61);
INSERT  IGNORE INTO `regions` VALUES (1007,'Santiago Rodriguez',61);
INSERT  IGNORE INTO `regions` VALUES (1008,'Valverde',61);
INSERT  IGNORE INTO `regions` VALUES (1009,'Aileu',62);
INSERT  IGNORE INTO `regions` VALUES (1010,'Ainaro',62);
INSERT  IGNORE INTO `regions` VALUES (1011,'Ambeno',62);
INSERT  IGNORE INTO `regions` VALUES (1012,'Baucau',62);
INSERT  IGNORE INTO `regions` VALUES (1013,'Bobonaro',62);
INSERT  IGNORE INTO `regions` VALUES (1014,'Cova Lima',62);
INSERT  IGNORE INTO `regions` VALUES (1015,'Dili',62);
INSERT  IGNORE INTO `regions` VALUES (1016,'Ermera',62);
INSERT  IGNORE INTO `regions` VALUES (1017,'Lautem',62);
INSERT  IGNORE INTO `regions` VALUES (1018,'Liquica',62);
INSERT  IGNORE INTO `regions` VALUES (1019,'Manatuto',62);
INSERT  IGNORE INTO `regions` VALUES (1020,'Manufahi',62);
INSERT  IGNORE INTO `regions` VALUES (1021,'Viqueque',62);
INSERT  IGNORE INTO `regions` VALUES (1022,'Azuay',63);
INSERT  IGNORE INTO `regions` VALUES (1023,'Bolivar',63);
INSERT  IGNORE INTO `regions` VALUES (1024,'Canar',63);
INSERT  IGNORE INTO `regions` VALUES (1025,'Carchi',63);
INSERT  IGNORE INTO `regions` VALUES (1026,'Chimborazo',63);
INSERT  IGNORE INTO `regions` VALUES (1027,'Cotopaxi',63);
INSERT  IGNORE INTO `regions` VALUES (1028,'El Oro',63);
INSERT  IGNORE INTO `regions` VALUES (1029,'Esmeraldas',63);
INSERT  IGNORE INTO `regions` VALUES (1030,'Galapagos',63);
INSERT  IGNORE INTO `regions` VALUES (1031,'Guayas',63);
INSERT  IGNORE INTO `regions` VALUES (1032,'Imbabura',63);
INSERT  IGNORE INTO `regions` VALUES (1033,'Loja',63);
INSERT  IGNORE INTO `regions` VALUES (1034,'Los Rios',63);
INSERT  IGNORE INTO `regions` VALUES (1035,'Manabi',63);
INSERT  IGNORE INTO `regions` VALUES (1036,'Morona Santiago',63);
INSERT  IGNORE INTO `regions` VALUES (1037,'Napo',63);
INSERT  IGNORE INTO `regions` VALUES (1038,'Orellana',63);
INSERT  IGNORE INTO `regions` VALUES (1039,'Pastaza',63);
INSERT  IGNORE INTO `regions` VALUES (1040,'Pichincha',63);
INSERT  IGNORE INTO `regions` VALUES (1041,'Sucumbios',63);
INSERT  IGNORE INTO `regions` VALUES (1042,'Tungurahua',63);
INSERT  IGNORE INTO `regions` VALUES (1043,'Zamora Chinchipe',63);
INSERT  IGNORE INTO `regions` VALUES (1044,'Aswan',64);
INSERT  IGNORE INTO `regions` VALUES (1045,'Asyut',64);
INSERT  IGNORE INTO `regions` VALUES (1046,'Bani Suwayf',64);
INSERT  IGNORE INTO `regions` VALUES (1047,'Bur Sa\'id',64);
INSERT  IGNORE INTO `regions` VALUES (1048,'Cairo',64);
INSERT  IGNORE INTO `regions` VALUES (1049,'Dumyat',64);
INSERT  IGNORE INTO `regions` VALUES (1050,'Kafr-ash-Shaykh',64);
INSERT  IGNORE INTO `regions` VALUES (1051,'Matruh',64);
INSERT  IGNORE INTO `regions` VALUES (1052,'Muhafazat ad Daqahliyah',64);
INSERT  IGNORE INTO `regions` VALUES (1053,'Muhafazat al Fayyum',64);
INSERT  IGNORE INTO `regions` VALUES (1054,'Muhafazat al Gharbiyah',64);
INSERT  IGNORE INTO `regions` VALUES (1055,'Muhafazat al Iskandariyah',64);
INSERT  IGNORE INTO `regions` VALUES (1056,'Muhafazat al Qahirah',64);
INSERT  IGNORE INTO `regions` VALUES (1057,'Qina',64);
INSERT  IGNORE INTO `regions` VALUES (1058,'Sawhaj',64);
INSERT  IGNORE INTO `regions` VALUES (1059,'Sina al-Janubiyah',64);
INSERT  IGNORE INTO `regions` VALUES (1060,'Sina ash-Shamaliyah',64);
INSERT  IGNORE INTO `regions` VALUES (1061,'ad-Daqahliyah',64);
INSERT  IGNORE INTO `regions` VALUES (1062,'al-Bahr-al-Ahmar',64);
INSERT  IGNORE INTO `regions` VALUES (1063,'al-Buhayrah',64);
INSERT  IGNORE INTO `regions` VALUES (1064,'al-Fayyum',64);
INSERT  IGNORE INTO `regions` VALUES (1065,'al-Gharbiyah',64);
INSERT  IGNORE INTO `regions` VALUES (1066,'al-Iskandariyah',64);
INSERT  IGNORE INTO `regions` VALUES (1067,'al-Ismailiyah',64);
INSERT  IGNORE INTO `regions` VALUES (1068,'al-Jizah',64);
INSERT  IGNORE INTO `regions` VALUES (1069,'al-Minufiyah',64);
INSERT  IGNORE INTO `regions` VALUES (1070,'al-Minya',64);
INSERT  IGNORE INTO `regions` VALUES (1071,'al-Qahira',64);
INSERT  IGNORE INTO `regions` VALUES (1072,'al-Qalyubiyah',64);
INSERT  IGNORE INTO `regions` VALUES (1073,'al-Uqsur',64);
INSERT  IGNORE INTO `regions` VALUES (1074,'al-Wadi al-Jadid',64);
INSERT  IGNORE INTO `regions` VALUES (1075,'as-Suways',64);
INSERT  IGNORE INTO `regions` VALUES (1076,'ash-Sharqiyah',64);
INSERT  IGNORE INTO `regions` VALUES (1077,'Ahuachapan',65);
INSERT  IGNORE INTO `regions` VALUES (1078,'Cabanas',65);
INSERT  IGNORE INTO `regions` VALUES (1079,'Chalatenango',65);
INSERT  IGNORE INTO `regions` VALUES (1080,'Cuscatlan',65);
INSERT  IGNORE INTO `regions` VALUES (1081,'La Libertad',65);
INSERT  IGNORE INTO `regions` VALUES (1082,'La Paz',65);
INSERT  IGNORE INTO `regions` VALUES (1083,'La Union',65);
INSERT  IGNORE INTO `regions` VALUES (1084,'Morazan',65);
INSERT  IGNORE INTO `regions` VALUES (1085,'San Miguel',65);
INSERT  IGNORE INTO `regions` VALUES (1086,'San Salvador',65);
INSERT  IGNORE INTO `regions` VALUES (1087,'San Vicente',65);
INSERT  IGNORE INTO `regions` VALUES (1088,'Santa Ana',65);
INSERT  IGNORE INTO `regions` VALUES (1089,'Sonsonate',65);
INSERT  IGNORE INTO `regions` VALUES (1090,'Usulutan',65);
INSERT  IGNORE INTO `regions` VALUES (1091,'Annobon',66);
INSERT  IGNORE INTO `regions` VALUES (1092,'Bioko Norte',66);
INSERT  IGNORE INTO `regions` VALUES (1093,'Bioko Sur',66);
INSERT  IGNORE INTO `regions` VALUES (1094,'Centro Sur',66);
INSERT  IGNORE INTO `regions` VALUES (1095,'Kie-Ntem',66);
INSERT  IGNORE INTO `regions` VALUES (1096,'Litoral',66);
INSERT  IGNORE INTO `regions` VALUES (1097,'Wele-Nzas',66);
INSERT  IGNORE INTO `regions` VALUES (1098,'Anseba',67);
INSERT  IGNORE INTO `regions` VALUES (1099,'Debub',67);
INSERT  IGNORE INTO `regions` VALUES (1100,'Debub-Keih-Bahri',67);
INSERT  IGNORE INTO `regions` VALUES (1101,'Gash-Barka',67);
INSERT  IGNORE INTO `regions` VALUES (1102,'Maekel',67);
INSERT  IGNORE INTO `regions` VALUES (1103,'Semien-Keih-Bahri',67);
INSERT  IGNORE INTO `regions` VALUES (1104,'Harju',68);
INSERT  IGNORE INTO `regions` VALUES (1105,'Hiiu',68);
INSERT  IGNORE INTO `regions` VALUES (1106,'Ida-Viru',68);
INSERT  IGNORE INTO `regions` VALUES (1107,'Jarva',68);
INSERT  IGNORE INTO `regions` VALUES (1108,'Jogeva',68);
INSERT  IGNORE INTO `regions` VALUES (1109,'Laane',68);
INSERT  IGNORE INTO `regions` VALUES (1110,'Laane-Viru',68);
INSERT  IGNORE INTO `regions` VALUES (1111,'Parnu',68);
INSERT  IGNORE INTO `regions` VALUES (1112,'Polva',68);
INSERT  IGNORE INTO `regions` VALUES (1113,'Rapla',68);
INSERT  IGNORE INTO `regions` VALUES (1114,'Saare',68);
INSERT  IGNORE INTO `regions` VALUES (1115,'Tartu',68);
INSERT  IGNORE INTO `regions` VALUES (1116,'Valga',68);
INSERT  IGNORE INTO `regions` VALUES (1117,'Viljandi',68);
INSERT  IGNORE INTO `regions` VALUES (1118,'Voru',68);
INSERT  IGNORE INTO `regions` VALUES (1119,'Addis Abeba',69);
INSERT  IGNORE INTO `regions` VALUES (1120,'Afar',69);
INSERT  IGNORE INTO `regions` VALUES (1121,'Amhara',69);
INSERT  IGNORE INTO `regions` VALUES (1122,'Benishangul',69);
INSERT  IGNORE INTO `regions` VALUES (1123,'Diredawa',69);
INSERT  IGNORE INTO `regions` VALUES (1124,'Gambella',69);
INSERT  IGNORE INTO `regions` VALUES (1125,'Harar',69);
INSERT  IGNORE INTO `regions` VALUES (1126,'Jigjiga',69);
INSERT  IGNORE INTO `regions` VALUES (1127,'Mekele',69);
INSERT  IGNORE INTO `regions` VALUES (1128,'Oromia',69);
INSERT  IGNORE INTO `regions` VALUES (1129,'Somali',69);
INSERT  IGNORE INTO `regions` VALUES (1130,'Southern',69);
INSERT  IGNORE INTO `regions` VALUES (1131,'Tigray',69);
INSERT  IGNORE INTO `regions` VALUES (1132,'Christmas Island',70);
INSERT  IGNORE INTO `regions` VALUES (1133,'Cocos Islands',70);
INSERT  IGNORE INTO `regions` VALUES (1134,'Coral Sea Islands',70);
INSERT  IGNORE INTO `regions` VALUES (1135,'Falkland Islands',71);
INSERT  IGNORE INTO `regions` VALUES (1136,'South Georgia',71);
INSERT  IGNORE INTO `regions` VALUES (1137,'Klaksvik',72);
INSERT  IGNORE INTO `regions` VALUES (1138,'Nor ara Eysturoy',72);
INSERT  IGNORE INTO `regions` VALUES (1139,'Nor oy',72);
INSERT  IGNORE INTO `regions` VALUES (1140,'Sandoy',72);
INSERT  IGNORE INTO `regions` VALUES (1141,'Streymoy',72);
INSERT  IGNORE INTO `regions` VALUES (1142,'Su uroy',72);
INSERT  IGNORE INTO `regions` VALUES (1143,'Sy ra Eysturoy',72);
INSERT  IGNORE INTO `regions` VALUES (1144,'Torshavn',72);
INSERT  IGNORE INTO `regions` VALUES (1145,'Vaga',72);
INSERT  IGNORE INTO `regions` VALUES (1146,'Central',73);
INSERT  IGNORE INTO `regions` VALUES (1147,'Eastern',73);
INSERT  IGNORE INTO `regions` VALUES (1148,'Northern',73);
INSERT  IGNORE INTO `regions` VALUES (1149,'South Pacific',73);
INSERT  IGNORE INTO `regions` VALUES (1150,'Western',73);
INSERT  IGNORE INTO `regions` VALUES (1151,'Ahvenanmaa',74);
INSERT  IGNORE INTO `regions` VALUES (1152,'Etela-Karjala',74);
INSERT  IGNORE INTO `regions` VALUES (1153,'Etela-Pohjanmaa',74);
INSERT  IGNORE INTO `regions` VALUES (1154,'Etela-Savo',74);
INSERT  IGNORE INTO `regions` VALUES (1155,'Etela-Suomen Laani',74);
INSERT  IGNORE INTO `regions` VALUES (1156,'Ita-Suomen Laani',74);
INSERT  IGNORE INTO `regions` VALUES (1157,'Ita-Uusimaa',74);
INSERT  IGNORE INTO `regions` VALUES (1158,'Kainuu',74);
INSERT  IGNORE INTO `regions` VALUES (1159,'Kanta-Hame',74);
INSERT  IGNORE INTO `regions` VALUES (1160,'Keski-Pohjanmaa',74);
INSERT  IGNORE INTO `regions` VALUES (1161,'Keski-Suomi',74);
INSERT  IGNORE INTO `regions` VALUES (1162,'Kymenlaakso',74);
INSERT  IGNORE INTO `regions` VALUES (1163,'Lansi-Suomen Laani',74);
INSERT  IGNORE INTO `regions` VALUES (1164,'Lappi',74);
INSERT  IGNORE INTO `regions` VALUES (1165,'Northern Savonia',74);
INSERT  IGNORE INTO `regions` VALUES (1166,'Ostrobothnia',74);
INSERT  IGNORE INTO `regions` VALUES (1167,'Oulun Laani',74);
INSERT  IGNORE INTO `regions` VALUES (1168,'Paijat-Hame',74);
INSERT  IGNORE INTO `regions` VALUES (1169,'Pirkanmaa',74);
INSERT  IGNORE INTO `regions` VALUES (1170,'Pohjanmaa',74);
INSERT  IGNORE INTO `regions` VALUES (1171,'Pohjois-Karjala',74);
INSERT  IGNORE INTO `regions` VALUES (1172,'Pohjois-Pohjanmaa',74);
INSERT  IGNORE INTO `regions` VALUES (1173,'Pohjois-Savo',74);
INSERT  IGNORE INTO `regions` VALUES (1174,'Saarijarvi',74);
INSERT  IGNORE INTO `regions` VALUES (1175,'Satakunta',74);
INSERT  IGNORE INTO `regions` VALUES (1176,'Southern Savonia',74);
INSERT  IGNORE INTO `regions` VALUES (1177,'Tavastia Proper',74);
INSERT  IGNORE INTO `regions` VALUES (1178,'Uleaborgs Lan',74);
INSERT  IGNORE INTO `regions` VALUES (1179,'Uusimaa',74);
INSERT  IGNORE INTO `regions` VALUES (1180,'Varsinais-Suomi',74);
INSERT  IGNORE INTO `regions` VALUES (1181,'Ain',75);
INSERT  IGNORE INTO `regions` VALUES (1182,'Aisne',75);
INSERT  IGNORE INTO `regions` VALUES (1183,'Albi Le Sequestre',75);
INSERT  IGNORE INTO `regions` VALUES (1184,'Allier',75);
INSERT  IGNORE INTO `regions` VALUES (1185,'Alpes-Cote dAzur',75);
INSERT  IGNORE INTO `regions` VALUES (1186,'Alpes-Maritimes',75);
INSERT  IGNORE INTO `regions` VALUES (1187,'Alpes-de-Haute-Provence',75);
INSERT  IGNORE INTO `regions` VALUES (1188,'Alsace',75);
INSERT  IGNORE INTO `regions` VALUES (1189,'Aquitaine',75);
INSERT  IGNORE INTO `regions` VALUES (1190,'Ardeche',75);
INSERT  IGNORE INTO `regions` VALUES (1191,'Ardennes',75);
INSERT  IGNORE INTO `regions` VALUES (1192,'Ariege',75);
INSERT  IGNORE INTO `regions` VALUES (1193,'Aube',75);
INSERT  IGNORE INTO `regions` VALUES (1194,'Aude',75);
INSERT  IGNORE INTO `regions` VALUES (1195,'Auvergne',75);
INSERT  IGNORE INTO `regions` VALUES (1196,'Aveyron',75);
INSERT  IGNORE INTO `regions` VALUES (1197,'Bas-Rhin',75);
INSERT  IGNORE INTO `regions` VALUES (1198,'Basse-Normandie',75);
INSERT  IGNORE INTO `regions` VALUES (1199,'Bouches-du-Rhone',75);
INSERT  IGNORE INTO `regions` VALUES (1200,'Bourgogne',75);
INSERT  IGNORE INTO `regions` VALUES (1201,'Bretagne',75);
INSERT  IGNORE INTO `regions` VALUES (1202,'Brittany',75);
INSERT  IGNORE INTO `regions` VALUES (1203,'Burgundy',75);
INSERT  IGNORE INTO `regions` VALUES (1204,'Calvados',75);
INSERT  IGNORE INTO `regions` VALUES (1205,'Cantal',75);
INSERT  IGNORE INTO `regions` VALUES (1206,'Cedex',75);
INSERT  IGNORE INTO `regions` VALUES (1207,'Centre',75);
INSERT  IGNORE INTO `regions` VALUES (1208,'Charente',75);
INSERT  IGNORE INTO `regions` VALUES (1209,'Charente-Maritime',75);
INSERT  IGNORE INTO `regions` VALUES (1210,'Cher',75);
INSERT  IGNORE INTO `regions` VALUES (1211,'Correze',75);
INSERT  IGNORE INTO `regions` VALUES (1212,'Corse-du-Sud',75);
INSERT  IGNORE INTO `regions` VALUES (1213,'Cote-d\'Or',75);
INSERT  IGNORE INTO `regions` VALUES (1214,'Cotes-d\'Armor',75);
INSERT  IGNORE INTO `regions` VALUES (1215,'Creuse',75);
INSERT  IGNORE INTO `regions` VALUES (1216,'Crolles',75);
INSERT  IGNORE INTO `regions` VALUES (1217,'Deux-Sevres',75);
INSERT  IGNORE INTO `regions` VALUES (1218,'Dordogne',75);
INSERT  IGNORE INTO `regions` VALUES (1219,'Doubs',75);
INSERT  IGNORE INTO `regions` VALUES (1220,'Drome',75);
INSERT  IGNORE INTO `regions` VALUES (1221,'Essonne',75);
INSERT  IGNORE INTO `regions` VALUES (1222,'Eure',75);
INSERT  IGNORE INTO `regions` VALUES (1223,'Eure-et-Loir',75);
INSERT  IGNORE INTO `regions` VALUES (1224,'Feucherolles',75);
INSERT  IGNORE INTO `regions` VALUES (1225,'Finistere',75);
INSERT  IGNORE INTO `regions` VALUES (1226,'Franche-Comte',75);
INSERT  IGNORE INTO `regions` VALUES (1227,'Gard',75);
INSERT  IGNORE INTO `regions` VALUES (1228,'Gers',75);
INSERT  IGNORE INTO `regions` VALUES (1229,'Gironde',75);
INSERT  IGNORE INTO `regions` VALUES (1230,'Haut-Rhin',75);
INSERT  IGNORE INTO `regions` VALUES (1231,'Haute-Corse',75);
INSERT  IGNORE INTO `regions` VALUES (1232,'Haute-Garonne',75);
INSERT  IGNORE INTO `regions` VALUES (1233,'Haute-Loire',75);
INSERT  IGNORE INTO `regions` VALUES (1234,'Haute-Marne',75);
INSERT  IGNORE INTO `regions` VALUES (1235,'Haute-Saone',75);
INSERT  IGNORE INTO `regions` VALUES (1236,'Haute-Savoie',75);
INSERT  IGNORE INTO `regions` VALUES (1237,'Haute-Vienne',75);
INSERT  IGNORE INTO `regions` VALUES (1238,'Hautes-Alpes',75);
INSERT  IGNORE INTO `regions` VALUES (1239,'Hautes-Pyrenees',75);
INSERT  IGNORE INTO `regions` VALUES (1240,'Hauts-de-Seine',75);
INSERT  IGNORE INTO `regions` VALUES (1241,'Herault',75);
INSERT  IGNORE INTO `regions` VALUES (1242,'Ile-de-France',75);
INSERT  IGNORE INTO `regions` VALUES (1243,'Ille-et-Vilaine',75);
INSERT  IGNORE INTO `regions` VALUES (1244,'Indre',75);
INSERT  IGNORE INTO `regions` VALUES (1245,'Indre-et-Loire',75);
INSERT  IGNORE INTO `regions` VALUES (1246,'Isere',75);
INSERT  IGNORE INTO `regions` VALUES (1247,'Jura',75);
INSERT  IGNORE INTO `regions` VALUES (1248,'Klagenfurt',75);
INSERT  IGNORE INTO `regions` VALUES (1249,'Landes',75);
INSERT  IGNORE INTO `regions` VALUES (1250,'Languedoc-Roussillon',75);
INSERT  IGNORE INTO `regions` VALUES (1251,'Larcay',75);
INSERT  IGNORE INTO `regions` VALUES (1252,'Le Castellet',75);
INSERT  IGNORE INTO `regions` VALUES (1253,'Le Creusot',75);
INSERT  IGNORE INTO `regions` VALUES (1254,'Limousin',75);
INSERT  IGNORE INTO `regions` VALUES (1255,'Loir-et-Cher',75);
INSERT  IGNORE INTO `regions` VALUES (1256,'Loire',75);
INSERT  IGNORE INTO `regions` VALUES (1257,'Loire-Atlantique',75);
INSERT  IGNORE INTO `regions` VALUES (1258,'Loiret',75);
INSERT  IGNORE INTO `regions` VALUES (1259,'Lorraine',75);
INSERT  IGNORE INTO `regions` VALUES (1260,'Lot',75);
INSERT  IGNORE INTO `regions` VALUES (1261,'Lot-et-Garonne',75);
INSERT  IGNORE INTO `regions` VALUES (1262,'Lower Normandy',75);
INSERT  IGNORE INTO `regions` VALUES (1263,'Lozere',75);
INSERT  IGNORE INTO `regions` VALUES (1264,'Maine-et-Loire',75);
INSERT  IGNORE INTO `regions` VALUES (1265,'Manche',75);
INSERT  IGNORE INTO `regions` VALUES (1266,'Marne',75);
INSERT  IGNORE INTO `regions` VALUES (1267,'Mayenne',75);
INSERT  IGNORE INTO `regions` VALUES (1268,'Meurthe-et-Moselle',75);
INSERT  IGNORE INTO `regions` VALUES (1269,'Meuse',75);
INSERT  IGNORE INTO `regions` VALUES (1270,'Midi-Pyrenees',75);
INSERT  IGNORE INTO `regions` VALUES (1271,'Morbihan',75);
INSERT  IGNORE INTO `regions` VALUES (1272,'Moselle',75);
INSERT  IGNORE INTO `regions` VALUES (1273,'Nievre',75);
INSERT  IGNORE INTO `regions` VALUES (1274,'Nord',75);
INSERT  IGNORE INTO `regions` VALUES (1275,'Nord-Pas-de-Calais',75);
INSERT  IGNORE INTO `regions` VALUES (1276,'Oise',75);
INSERT  IGNORE INTO `regions` VALUES (1277,'Orne',75);
INSERT  IGNORE INTO `regions` VALUES (1278,'Paris',75);
INSERT  IGNORE INTO `regions` VALUES (1279,'Pas-de-Calais',75);
INSERT  IGNORE INTO `regions` VALUES (1280,'Pays de la Loire',75);
INSERT  IGNORE INTO `regions` VALUES (1281,'Pays-de-la-Loire',75);
INSERT  IGNORE INTO `regions` VALUES (1282,'Picardy',75);
INSERT  IGNORE INTO `regions` VALUES (1283,'Puy-de-Dome',75);
INSERT  IGNORE INTO `regions` VALUES (1284,'Pyrenees-Atlantiques',75);
INSERT  IGNORE INTO `regions` VALUES (1285,'Pyrenees-Orientales',75);
INSERT  IGNORE INTO `regions` VALUES (1286,'Quelmes',75);
INSERT  IGNORE INTO `regions` VALUES (1287,'Rhone',75);
INSERT  IGNORE INTO `regions` VALUES (1288,'Rhone-Alpes',75);
INSERT  IGNORE INTO `regions` VALUES (1289,'Saint Ouen',75);
INSERT  IGNORE INTO `regions` VALUES (1290,'Saint Viatre',75);
INSERT  IGNORE INTO `regions` VALUES (1291,'Saone-et-Loire',75);
INSERT  IGNORE INTO `regions` VALUES (1292,'Sarthe',75);
INSERT  IGNORE INTO `regions` VALUES (1293,'Savoie',75);
INSERT  IGNORE INTO `regions` VALUES (1294,'Seine-Maritime',75);
INSERT  IGNORE INTO `regions` VALUES (1295,'Seine-Saint-Denis',75);
INSERT  IGNORE INTO `regions` VALUES (1296,'Seine-et-Marne',75);
INSERT  IGNORE INTO `regions` VALUES (1297,'Somme',75);
INSERT  IGNORE INTO `regions` VALUES (1298,'Sophia Antipolis',75);
INSERT  IGNORE INTO `regions` VALUES (1299,'Souvans',75);
INSERT  IGNORE INTO `regions` VALUES (1300,'Tarn',75);
INSERT  IGNORE INTO `regions` VALUES (1301,'Tarn-et-Garonne',75);
INSERT  IGNORE INTO `regions` VALUES (1302,'Territoire de Belfort',75);
INSERT  IGNORE INTO `regions` VALUES (1303,'Treignac',75);
INSERT  IGNORE INTO `regions` VALUES (1304,'Upper Normandy',75);
INSERT  IGNORE INTO `regions` VALUES (1305,'Val-d\'Oise',75);
INSERT  IGNORE INTO `regions` VALUES (1306,'Val-de-Marne',75);
INSERT  IGNORE INTO `regions` VALUES (1307,'Var',75);
INSERT  IGNORE INTO `regions` VALUES (1308,'Vaucluse',75);
INSERT  IGNORE INTO `regions` VALUES (1309,'Vellise',75);
INSERT  IGNORE INTO `regions` VALUES (1310,'Vendee',75);
INSERT  IGNORE INTO `regions` VALUES (1311,'Vienne',75);
INSERT  IGNORE INTO `regions` VALUES (1312,'Vosges',75);
INSERT  IGNORE INTO `regions` VALUES (1313,'Yonne',75);
INSERT  IGNORE INTO `regions` VALUES (1314,'Yvelines',75);
INSERT  IGNORE INTO `regions` VALUES (1315,'Cayenne',76);
INSERT  IGNORE INTO `regions` VALUES (1316,'Saint-Laurent-du-Maroni',76);
INSERT  IGNORE INTO `regions` VALUES (1317,'Iles du Vent',77);
INSERT  IGNORE INTO `regions` VALUES (1318,'Iles sous le Vent',77);
INSERT  IGNORE INTO `regions` VALUES (1319,'Marquesas',77);
INSERT  IGNORE INTO `regions` VALUES (1320,'Tuamotu',77);
INSERT  IGNORE INTO `regions` VALUES (1321,'Tubuai',77);
INSERT  IGNORE INTO `regions` VALUES (1322,'Amsterdam',78);
INSERT  IGNORE INTO `regions` VALUES (1323,'Crozet Islands',78);
INSERT  IGNORE INTO `regions` VALUES (1324,'Kerguelen',78);
INSERT  IGNORE INTO `regions` VALUES (1325,'Estuaire',79);
INSERT  IGNORE INTO `regions` VALUES (1326,'Haut-Ogooue',79);
INSERT  IGNORE INTO `regions` VALUES (1327,'Moyen-Ogooue',79);
INSERT  IGNORE INTO `regions` VALUES (1328,'Ngounie',79);
INSERT  IGNORE INTO `regions` VALUES (1329,'Nyanga',79);
INSERT  IGNORE INTO `regions` VALUES (1330,'Ogooue-Ivindo',79);
INSERT  IGNORE INTO `regions` VALUES (1331,'Ogooue-Lolo',79);
INSERT  IGNORE INTO `regions` VALUES (1332,'Ogooue-Maritime',79);
INSERT  IGNORE INTO `regions` VALUES (1333,'Woleu-Ntem',79);
INSERT  IGNORE INTO `regions` VALUES (1334,'Banjul',80);
INSERT  IGNORE INTO `regions` VALUES (1335,'Basse',80);
INSERT  IGNORE INTO `regions` VALUES (1336,'Brikama',80);
INSERT  IGNORE INTO `regions` VALUES (1337,'Janjanbureh',80);
INSERT  IGNORE INTO `regions` VALUES (1338,'Kanifing',80);
INSERT  IGNORE INTO `regions` VALUES (1339,'Kerewan',80);
INSERT  IGNORE INTO `regions` VALUES (1340,'Kuntaur',80);
INSERT  IGNORE INTO `regions` VALUES (1341,'Mansakonko',80);
INSERT  IGNORE INTO `regions` VALUES (1342,'Abhasia',81);
INSERT  IGNORE INTO `regions` VALUES (1343,'Ajaria',81);
INSERT  IGNORE INTO `regions` VALUES (1344,'Guria',81);
INSERT  IGNORE INTO `regions` VALUES (1345,'Imereti',81);
INSERT  IGNORE INTO `regions` VALUES (1346,'Kaheti',81);
INSERT  IGNORE INTO `regions` VALUES (1347,'Kvemo Kartli',81);
INSERT  IGNORE INTO `regions` VALUES (1348,'Mcheta-Mtianeti',81);
INSERT  IGNORE INTO `regions` VALUES (1349,'Racha',81);
INSERT  IGNORE INTO `regions` VALUES (1350,'Samagrelo-Zemo Svaneti',81);
INSERT  IGNORE INTO `regions` VALUES (1351,'Samche-Zhavaheti',81);
INSERT  IGNORE INTO `regions` VALUES (1352,'Shida Kartli',81);
INSERT  IGNORE INTO `regions` VALUES (1353,'Tbilisi',81);
INSERT  IGNORE INTO `regions` VALUES (1354,'Auvergne',82);
INSERT  IGNORE INTO `regions` VALUES (1355,'Baden-Wurttemberg',82);
INSERT  IGNORE INTO `regions` VALUES (1356,'Bavaria',82);
INSERT  IGNORE INTO `regions` VALUES (1357,'Bayern',82);
INSERT  IGNORE INTO `regions` VALUES (1358,'Beilstein Wurtt',82);
INSERT  IGNORE INTO `regions` VALUES (1359,'Berlin',82);
INSERT  IGNORE INTO `regions` VALUES (1360,'Brandenburg',82);
INSERT  IGNORE INTO `regions` VALUES (1361,'Bremen',82);
INSERT  IGNORE INTO `regions` VALUES (1362,'Dreisbach',82);
INSERT  IGNORE INTO `regions` VALUES (1363,'Freistaat Bayern',82);
INSERT  IGNORE INTO `regions` VALUES (1364,'Hamburg',82);
INSERT  IGNORE INTO `regions` VALUES (1365,'Hannover',82);
INSERT  IGNORE INTO `regions` VALUES (1366,'Heroldstatt',82);
INSERT  IGNORE INTO `regions` VALUES (1367,'Hessen',82);
INSERT  IGNORE INTO `regions` VALUES (1368,'Kortenberg',82);
INSERT  IGNORE INTO `regions` VALUES (1369,'Laasdorf',82);
INSERT  IGNORE INTO `regions` VALUES (1370,'Land Baden-Wurttemberg',82);
INSERT  IGNORE INTO `regions` VALUES (1371,'Land Bayern',82);
INSERT  IGNORE INTO `regions` VALUES (1372,'Land Brandenburg',82);
INSERT  IGNORE INTO `regions` VALUES (1373,'Land Hessen',82);
INSERT  IGNORE INTO `regions` VALUES (1374,'Land Mecklenburg-Vorpommern',82);
INSERT  IGNORE INTO `regions` VALUES (1375,'Land Nordrhein-Westfalen',82);
INSERT  IGNORE INTO `regions` VALUES (1376,'Land Rheinland-Pfalz',82);
INSERT  IGNORE INTO `regions` VALUES (1377,'Land Sachsen',82);
INSERT  IGNORE INTO `regions` VALUES (1378,'Land Sachsen-Anhalt',82);
INSERT  IGNORE INTO `regions` VALUES (1379,'Land Thuringen',82);
INSERT  IGNORE INTO `regions` VALUES (1380,'Lower Saxony',82);
INSERT  IGNORE INTO `regions` VALUES (1381,'Mecklenburg-Vorpommern',82);
INSERT  IGNORE INTO `regions` VALUES (1382,'Mulfingen',82);
INSERT  IGNORE INTO `regions` VALUES (1383,'Munich',82);
INSERT  IGNORE INTO `regions` VALUES (1384,'Neubeuern',82);
INSERT  IGNORE INTO `regions` VALUES (1385,'Niedersachsen',82);
INSERT  IGNORE INTO `regions` VALUES (1386,'Noord-Holland',82);
INSERT  IGNORE INTO `regions` VALUES (1387,'Nordrhein-Westfalen',82);
INSERT  IGNORE INTO `regions` VALUES (1388,'North Rhine-Westphalia',82);
INSERT  IGNORE INTO `regions` VALUES (1389,'Osterode',82);
INSERT  IGNORE INTO `regions` VALUES (1390,'Rheinland-Pfalz',82);
INSERT  IGNORE INTO `regions` VALUES (1391,'Rhineland-Palatinate',82);
INSERT  IGNORE INTO `regions` VALUES (1392,'Saarland',82);
INSERT  IGNORE INTO `regions` VALUES (1393,'Sachsen',82);
INSERT  IGNORE INTO `regions` VALUES (1394,'Sachsen-Anhalt',82);
INSERT  IGNORE INTO `regions` VALUES (1395,'Saxony',82);
INSERT  IGNORE INTO `regions` VALUES (1396,'Schleswig-Holstein',82);
INSERT  IGNORE INTO `regions` VALUES (1397,'Thuringia',82);
INSERT  IGNORE INTO `regions` VALUES (1398,'Webling',82);
INSERT  IGNORE INTO `regions` VALUES (1399,'Weinstrabe',82);
INSERT  IGNORE INTO `regions` VALUES (1400,'schlobborn',82);
INSERT  IGNORE INTO `regions` VALUES (1401,'Ashanti',83);
INSERT  IGNORE INTO `regions` VALUES (1402,'Brong-Ahafo',83);
INSERT  IGNORE INTO `regions` VALUES (1403,'Central',83);
INSERT  IGNORE INTO `regions` VALUES (1404,'Eastern',83);
INSERT  IGNORE INTO `regions` VALUES (1405,'Greater Accra',83);
INSERT  IGNORE INTO `regions` VALUES (1406,'Northern',83);
INSERT  IGNORE INTO `regions` VALUES (1407,'Upper East',83);
INSERT  IGNORE INTO `regions` VALUES (1408,'Upper West',83);
INSERT  IGNORE INTO `regions` VALUES (1409,'Volta',83);
INSERT  IGNORE INTO `regions` VALUES (1410,'Western',83);
INSERT  IGNORE INTO `regions` VALUES (1411,'Gibraltar',84);
INSERT  IGNORE INTO `regions` VALUES (1412,'Acharnes',85);
INSERT  IGNORE INTO `regions` VALUES (1413,'Ahaia',85);
INSERT  IGNORE INTO `regions` VALUES (1414,'Aitolia kai Akarnania',85);
INSERT  IGNORE INTO `regions` VALUES (1415,'Argolis',85);
INSERT  IGNORE INTO `regions` VALUES (1416,'Arkadia',85);
INSERT  IGNORE INTO `regions` VALUES (1417,'Arta',85);
INSERT  IGNORE INTO `regions` VALUES (1418,'Attica',85);
INSERT  IGNORE INTO `regions` VALUES (1419,'Attiki',85);
INSERT  IGNORE INTO `regions` VALUES (1420,'Ayion Oros',85);
INSERT  IGNORE INTO `regions` VALUES (1421,'Crete',85);
INSERT  IGNORE INTO `regions` VALUES (1422,'Dodekanisos',85);
INSERT  IGNORE INTO `regions` VALUES (1423,'Drama',85);
INSERT  IGNORE INTO `regions` VALUES (1424,'Evia',85);
INSERT  IGNORE INTO `regions` VALUES (1425,'Evritania',85);
INSERT  IGNORE INTO `regions` VALUES (1426,'Evros',85);
INSERT  IGNORE INTO `regions` VALUES (1427,'Evvoia',85);
INSERT  IGNORE INTO `regions` VALUES (1428,'Florina',85);
INSERT  IGNORE INTO `regions` VALUES (1429,'Fokis',85);
INSERT  IGNORE INTO `regions` VALUES (1430,'Fthiotis',85);
INSERT  IGNORE INTO `regions` VALUES (1431,'Grevena',85);
INSERT  IGNORE INTO `regions` VALUES (1432,'Halandri',85);
INSERT  IGNORE INTO `regions` VALUES (1433,'Halkidiki',85);
INSERT  IGNORE INTO `regions` VALUES (1434,'Hania',85);
INSERT  IGNORE INTO `regions` VALUES (1435,'Heraklion',85);
INSERT  IGNORE INTO `regions` VALUES (1436,'Hios',85);
INSERT  IGNORE INTO `regions` VALUES (1437,'Ilia',85);
INSERT  IGNORE INTO `regions` VALUES (1438,'Imathia',85);
INSERT  IGNORE INTO `regions` VALUES (1439,'Ioannina',85);
INSERT  IGNORE INTO `regions` VALUES (1440,'Iraklion',85);
INSERT  IGNORE INTO `regions` VALUES (1441,'Karditsa',85);
INSERT  IGNORE INTO `regions` VALUES (1442,'Kastoria',85);
INSERT  IGNORE INTO `regions` VALUES (1443,'Kavala',85);
INSERT  IGNORE INTO `regions` VALUES (1444,'Kefallinia',85);
INSERT  IGNORE INTO `regions` VALUES (1445,'Kerkira',85);
INSERT  IGNORE INTO `regions` VALUES (1446,'Kiklades',85);
INSERT  IGNORE INTO `regions` VALUES (1447,'Kilkis',85);
INSERT  IGNORE INTO `regions` VALUES (1448,'Korinthia',85);
INSERT  IGNORE INTO `regions` VALUES (1449,'Kozani',85);
INSERT  IGNORE INTO `regions` VALUES (1450,'Lakonia',85);
INSERT  IGNORE INTO `regions` VALUES (1451,'Larisa',85);
INSERT  IGNORE INTO `regions` VALUES (1452,'Lasithi',85);
INSERT  IGNORE INTO `regions` VALUES (1453,'Lesvos',85);
INSERT  IGNORE INTO `regions` VALUES (1454,'Levkas',85);
INSERT  IGNORE INTO `regions` VALUES (1455,'Magnisia',85);
INSERT  IGNORE INTO `regions` VALUES (1456,'Messinia',85);
INSERT  IGNORE INTO `regions` VALUES (1457,'Nomos Attikis',85);
INSERT  IGNORE INTO `regions` VALUES (1458,'Nomos Zakynthou',85);
INSERT  IGNORE INTO `regions` VALUES (1459,'Pella',85);
INSERT  IGNORE INTO `regions` VALUES (1460,'Pieria',85);
INSERT  IGNORE INTO `regions` VALUES (1461,'Piraios',85);
INSERT  IGNORE INTO `regions` VALUES (1462,'Preveza',85);
INSERT  IGNORE INTO `regions` VALUES (1463,'Rethimni',85);
INSERT  IGNORE INTO `regions` VALUES (1464,'Rodopi',85);
INSERT  IGNORE INTO `regions` VALUES (1465,'Samos',85);
INSERT  IGNORE INTO `regions` VALUES (1466,'Serrai',85);
INSERT  IGNORE INTO `regions` VALUES (1467,'Thesprotia',85);
INSERT  IGNORE INTO `regions` VALUES (1468,'Thessaloniki',85);
INSERT  IGNORE INTO `regions` VALUES (1469,'Trikala',85);
INSERT  IGNORE INTO `regions` VALUES (1470,'Voiotia',85);
INSERT  IGNORE INTO `regions` VALUES (1471,'West Greece',85);
INSERT  IGNORE INTO `regions` VALUES (1472,'Xanthi',85);
INSERT  IGNORE INTO `regions` VALUES (1473,'Zakinthos',85);
INSERT  IGNORE INTO `regions` VALUES (1474,'Aasiaat',86);
INSERT  IGNORE INTO `regions` VALUES (1475,'Ammassalik',86);
INSERT  IGNORE INTO `regions` VALUES (1476,'Illoqqortoormiut',86);
INSERT  IGNORE INTO `regions` VALUES (1477,'Ilulissat',86);
INSERT  IGNORE INTO `regions` VALUES (1478,'Ivittuut',86);
INSERT  IGNORE INTO `regions` VALUES (1479,'Kangaatsiaq',86);
INSERT  IGNORE INTO `regions` VALUES (1480,'Maniitsoq',86);
INSERT  IGNORE INTO `regions` VALUES (1481,'Nanortalik',86);
INSERT  IGNORE INTO `regions` VALUES (1482,'Narsaq',86);
INSERT  IGNORE INTO `regions` VALUES (1483,'Nuuk',86);
INSERT  IGNORE INTO `regions` VALUES (1484,'Paamiut',86);
INSERT  IGNORE INTO `regions` VALUES (1485,'Qaanaaq',86);
INSERT  IGNORE INTO `regions` VALUES (1486,'Qaqortoq',86);
INSERT  IGNORE INTO `regions` VALUES (1487,'Qasigiannguit',86);
INSERT  IGNORE INTO `regions` VALUES (1488,'Qeqertarsuaq',86);
INSERT  IGNORE INTO `regions` VALUES (1489,'Sisimiut',86);
INSERT  IGNORE INTO `regions` VALUES (1490,'Udenfor kommunal inddeling',86);
INSERT  IGNORE INTO `regions` VALUES (1491,'Upernavik',86);
INSERT  IGNORE INTO `regions` VALUES (1492,'Uummannaq',86);
INSERT  IGNORE INTO `regions` VALUES (1493,'Carriacou-Petite Martinique',87);
INSERT  IGNORE INTO `regions` VALUES (1494,'Saint Andrew',87);
INSERT  IGNORE INTO `regions` VALUES (1495,'Saint Davids',87);
INSERT  IGNORE INTO `regions` VALUES (1496,'Saint George\'s',87);
INSERT  IGNORE INTO `regions` VALUES (1497,'Saint John',87);
INSERT  IGNORE INTO `regions` VALUES (1498,'Saint Mark',87);
INSERT  IGNORE INTO `regions` VALUES (1499,'Saint Patrick',87);
INSERT  IGNORE INTO `regions` VALUES (1500,'Basse-Terre',88);
INSERT  IGNORE INTO `regions` VALUES (1501,'Grande-Terre',88);
INSERT  IGNORE INTO `regions` VALUES (1502,'Iles des Saintes',88);
INSERT  IGNORE INTO `regions` VALUES (1503,'La Desirade',88);
INSERT  IGNORE INTO `regions` VALUES (1504,'Marie-Galante',88);
INSERT  IGNORE INTO `regions` VALUES (1505,'Saint Barthelemy',88);
INSERT  IGNORE INTO `regions` VALUES (1506,'Saint Martin',88);
INSERT  IGNORE INTO `regions` VALUES (1507,'Agana Heights',89);
INSERT  IGNORE INTO `regions` VALUES (1508,'Agat',89);
INSERT  IGNORE INTO `regions` VALUES (1509,'Barrigada',89);
INSERT  IGNORE INTO `regions` VALUES (1510,'Chalan-Pago-Ordot',89);
INSERT  IGNORE INTO `regions` VALUES (1511,'Dededo',89);
INSERT  IGNORE INTO `regions` VALUES (1512,'Hagatna',89);
INSERT  IGNORE INTO `regions` VALUES (1513,'Inarajan',89);
INSERT  IGNORE INTO `regions` VALUES (1514,'Mangilao',89);
INSERT  IGNORE INTO `regions` VALUES (1515,'Merizo',89);
INSERT  IGNORE INTO `regions` VALUES (1516,'Mongmong-Toto-Maite',89);
INSERT  IGNORE INTO `regions` VALUES (1517,'Santa Rita',89);
INSERT  IGNORE INTO `regions` VALUES (1518,'Sinajana',89);
INSERT  IGNORE INTO `regions` VALUES (1519,'Talofofo',89);
INSERT  IGNORE INTO `regions` VALUES (1520,'Tamuning',89);
INSERT  IGNORE INTO `regions` VALUES (1521,'Yigo',89);
INSERT  IGNORE INTO `regions` VALUES (1522,'Yona',89);
INSERT  IGNORE INTO `regions` VALUES (1523,'Alta Verapaz',90);
INSERT  IGNORE INTO `regions` VALUES (1524,'Baja Verapaz',90);
INSERT  IGNORE INTO `regions` VALUES (1525,'Chimaltenango',90);
INSERT  IGNORE INTO `regions` VALUES (1526,'Chiquimula',90);
INSERT  IGNORE INTO `regions` VALUES (1527,'El Progreso',90);
INSERT  IGNORE INTO `regions` VALUES (1528,'Escuintla',90);
INSERT  IGNORE INTO `regions` VALUES (1529,'Guatemala',90);
INSERT  IGNORE INTO `regions` VALUES (1530,'Huehuetenango',90);
INSERT  IGNORE INTO `regions` VALUES (1531,'Izabal',90);
INSERT  IGNORE INTO `regions` VALUES (1532,'Jalapa',90);
INSERT  IGNORE INTO `regions` VALUES (1533,'Jutiapa',90);
INSERT  IGNORE INTO `regions` VALUES (1534,'Peten',90);
INSERT  IGNORE INTO `regions` VALUES (1535,'Quezaltenango',90);
INSERT  IGNORE INTO `regions` VALUES (1536,'Quiche',90);
INSERT  IGNORE INTO `regions` VALUES (1537,'Retalhuleu',90);
INSERT  IGNORE INTO `regions` VALUES (1538,'Sacatepequez',90);
INSERT  IGNORE INTO `regions` VALUES (1539,'San Marcos',90);
INSERT  IGNORE INTO `regions` VALUES (1540,'Santa Rosa',90);
INSERT  IGNORE INTO `regions` VALUES (1541,'Solola',90);
INSERT  IGNORE INTO `regions` VALUES (1542,'Suchitepequez',90);
INSERT  IGNORE INTO `regions` VALUES (1543,'Totonicapan',90);
INSERT  IGNORE INTO `regions` VALUES (1544,'Zacapa',90);
INSERT  IGNORE INTO `regions` VALUES (1545,'Alderney',91);
INSERT  IGNORE INTO `regions` VALUES (1546,'Castel',91);
INSERT  IGNORE INTO `regions` VALUES (1547,'Forest',91);
INSERT  IGNORE INTO `regions` VALUES (1548,'Saint Andrew',91);
INSERT  IGNORE INTO `regions` VALUES (1549,'Saint Martin',91);
INSERT  IGNORE INTO `regions` VALUES (1550,'Saint Peter Port',91);
INSERT  IGNORE INTO `regions` VALUES (1551,'Saint Pierre du Bois',91);
INSERT  IGNORE INTO `regions` VALUES (1552,'Saint Sampson',91);
INSERT  IGNORE INTO `regions` VALUES (1553,'Saint Saviour',91);
INSERT  IGNORE INTO `regions` VALUES (1554,'Sark',91);
INSERT  IGNORE INTO `regions` VALUES (1555,'Torteval',91);
INSERT  IGNORE INTO `regions` VALUES (1556,'Vale',91);
INSERT  IGNORE INTO `regions` VALUES (1557,'Beyla',92);
INSERT  IGNORE INTO `regions` VALUES (1558,'Boffa',92);
INSERT  IGNORE INTO `regions` VALUES (1559,'Boke',92);
INSERT  IGNORE INTO `regions` VALUES (1560,'Conakry',92);
INSERT  IGNORE INTO `regions` VALUES (1561,'Coyah',92);
INSERT  IGNORE INTO `regions` VALUES (1562,'Dabola',92);
INSERT  IGNORE INTO `regions` VALUES (1563,'Dalaba',92);
INSERT  IGNORE INTO `regions` VALUES (1564,'Dinguiraye',92);
INSERT  IGNORE INTO `regions` VALUES (1565,'Faranah',92);
INSERT  IGNORE INTO `regions` VALUES (1566,'Forecariah',92);
INSERT  IGNORE INTO `regions` VALUES (1567,'Fria',92);
INSERT  IGNORE INTO `regions` VALUES (1568,'Gaoual',92);
INSERT  IGNORE INTO `regions` VALUES (1569,'Gueckedou',92);
INSERT  IGNORE INTO `regions` VALUES (1570,'Kankan',92);
INSERT  IGNORE INTO `regions` VALUES (1571,'Kerouane',92);
INSERT  IGNORE INTO `regions` VALUES (1572,'Kindia',92);
INSERT  IGNORE INTO `regions` VALUES (1573,'Kissidougou',92);
INSERT  IGNORE INTO `regions` VALUES (1574,'Koubia',92);
INSERT  IGNORE INTO `regions` VALUES (1575,'Koundara',92);
INSERT  IGNORE INTO `regions` VALUES (1576,'Kouroussa',92);
INSERT  IGNORE INTO `regions` VALUES (1577,'Labe',92);
INSERT  IGNORE INTO `regions` VALUES (1578,'Lola',92);
INSERT  IGNORE INTO `regions` VALUES (1579,'Macenta',92);
INSERT  IGNORE INTO `regions` VALUES (1580,'Mali',92);
INSERT  IGNORE INTO `regions` VALUES (1581,'Mamou',92);
INSERT  IGNORE INTO `regions` VALUES (1582,'Mandiana',92);
INSERT  IGNORE INTO `regions` VALUES (1583,'Nzerekore',92);
INSERT  IGNORE INTO `regions` VALUES (1584,'Pita',92);
INSERT  IGNORE INTO `regions` VALUES (1585,'Siguiri',92);
INSERT  IGNORE INTO `regions` VALUES (1586,'Telimele',92);
INSERT  IGNORE INTO `regions` VALUES (1587,'Tougue',92);
INSERT  IGNORE INTO `regions` VALUES (1588,'Yomou',92);
INSERT  IGNORE INTO `regions` VALUES (1589,'Bafata',93);
INSERT  IGNORE INTO `regions` VALUES (1590,'Bissau',93);
INSERT  IGNORE INTO `regions` VALUES (1591,'Bolama',93);
INSERT  IGNORE INTO `regions` VALUES (1592,'Cacheu',93);
INSERT  IGNORE INTO `regions` VALUES (1593,'Gabu',93);
INSERT  IGNORE INTO `regions` VALUES (1594,'Oio',93);
INSERT  IGNORE INTO `regions` VALUES (1595,'Quinara',93);
INSERT  IGNORE INTO `regions` VALUES (1596,'Tombali',93);
INSERT  IGNORE INTO `regions` VALUES (1597,'Barima-Waini',94);
INSERT  IGNORE INTO `regions` VALUES (1598,'Cuyuni-Mazaruni',94);
INSERT  IGNORE INTO `regions` VALUES (1599,'Demerara-Mahaica',94);
INSERT  IGNORE INTO `regions` VALUES (1600,'East Berbice-Corentyne',94);
INSERT  IGNORE INTO `regions` VALUES (1601,'Essequibo Islands-West Demerar',94);
INSERT  IGNORE INTO `regions` VALUES (1602,'Mahaica-Berbice',94);
INSERT  IGNORE INTO `regions` VALUES (1603,'Pomeroon-Supenaam',94);
INSERT  IGNORE INTO `regions` VALUES (1604,'Potaro-Siparuni',94);
INSERT  IGNORE INTO `regions` VALUES (1605,'Upper Demerara-Berbice',94);
INSERT  IGNORE INTO `regions` VALUES (1606,'Upper Takutu-Upper Essequibo',94);
INSERT  IGNORE INTO `regions` VALUES (1607,'Artibonite',95);
INSERT  IGNORE INTO `regions` VALUES (1608,'Centre',95);
INSERT  IGNORE INTO `regions` VALUES (1609,'Grand\'Anse',95);
INSERT  IGNORE INTO `regions` VALUES (1610,'Nord',95);
INSERT  IGNORE INTO `regions` VALUES (1611,'Nord-Est',95);
INSERT  IGNORE INTO `regions` VALUES (1612,'Nord-Ouest',95);
INSERT  IGNORE INTO `regions` VALUES (1613,'Ouest',95);
INSERT  IGNORE INTO `regions` VALUES (1614,'Sud',95);
INSERT  IGNORE INTO `regions` VALUES (1615,'Sud-Est',95);
INSERT  IGNORE INTO `regions` VALUES (1616,'Heard and McDonald Islands',96);
INSERT  IGNORE INTO `regions` VALUES (1617,'Atlantida',97);
INSERT  IGNORE INTO `regions` VALUES (1618,'Choluteca',97);
INSERT  IGNORE INTO `regions` VALUES (1619,'Colon',97);
INSERT  IGNORE INTO `regions` VALUES (1620,'Comayagua',97);
INSERT  IGNORE INTO `regions` VALUES (1621,'Copan',97);
INSERT  IGNORE INTO `regions` VALUES (1622,'Cortes',97);
INSERT  IGNORE INTO `regions` VALUES (1623,'Distrito Central',97);
INSERT  IGNORE INTO `regions` VALUES (1624,'El Paraiso',97);
INSERT  IGNORE INTO `regions` VALUES (1625,'Francisco Morazan',97);
INSERT  IGNORE INTO `regions` VALUES (1626,'Gracias a Dios',97);
INSERT  IGNORE INTO `regions` VALUES (1627,'Intibuca',97);
INSERT  IGNORE INTO `regions` VALUES (1628,'Islas de la Bahia',97);
INSERT  IGNORE INTO `regions` VALUES (1629,'La Paz',97);
INSERT  IGNORE INTO `regions` VALUES (1630,'Lempira',97);
INSERT  IGNORE INTO `regions` VALUES (1631,'Ocotepeque',97);
INSERT  IGNORE INTO `regions` VALUES (1632,'Olancho',97);
INSERT  IGNORE INTO `regions` VALUES (1633,'Santa Barbara',97);
INSERT  IGNORE INTO `regions` VALUES (1634,'Valle',97);
INSERT  IGNORE INTO `regions` VALUES (1635,'Yoro',97);
INSERT  IGNORE INTO `regions` VALUES (1636,'Hong Kong',98);
INSERT  IGNORE INTO `regions` VALUES (1637,'Bacs-Kiskun',99);
INSERT  IGNORE INTO `regions` VALUES (1638,'Baranya',99);
INSERT  IGNORE INTO `regions` VALUES (1639,'Bekes',99);
INSERT  IGNORE INTO `regions` VALUES (1640,'Borsod-Abauj-Zemplen',99);
INSERT  IGNORE INTO `regions` VALUES (1641,'Budapest',99);
INSERT  IGNORE INTO `regions` VALUES (1642,'Csongrad',99);
INSERT  IGNORE INTO `regions` VALUES (1643,'Fejer',99);
INSERT  IGNORE INTO `regions` VALUES (1644,'Gyor-Moson-Sopron',99);
INSERT  IGNORE INTO `regions` VALUES (1645,'Hajdu-Bihar',99);
INSERT  IGNORE INTO `regions` VALUES (1646,'Heves',99);
INSERT  IGNORE INTO `regions` VALUES (1647,'Jasz-Nagykun-Szolnok',99);
INSERT  IGNORE INTO `regions` VALUES (1648,'Komarom-Esztergom',99);
INSERT  IGNORE INTO `regions` VALUES (1649,'Nograd',99);
INSERT  IGNORE INTO `regions` VALUES (1650,'Pest',99);
INSERT  IGNORE INTO `regions` VALUES (1651,'Somogy',99);
INSERT  IGNORE INTO `regions` VALUES (1652,'Szabolcs-Szatmar-Bereg',99);
INSERT  IGNORE INTO `regions` VALUES (1653,'Tolna',99);
INSERT  IGNORE INTO `regions` VALUES (1654,'Vas',99);
INSERT  IGNORE INTO `regions` VALUES (1655,'Veszprem',99);
INSERT  IGNORE INTO `regions` VALUES (1656,'Zala',99);
INSERT  IGNORE INTO `regions` VALUES (1657,'Austurland',100);
INSERT  IGNORE INTO `regions` VALUES (1658,'Gullbringusysla',100);
INSERT  IGNORE INTO `regions` VALUES (1659,'Hofu borgarsva i',100);
INSERT  IGNORE INTO `regions` VALUES (1660,'Nor urland eystra',100);
INSERT  IGNORE INTO `regions` VALUES (1661,'Nor urland vestra',100);
INSERT  IGNORE INTO `regions` VALUES (1662,'Su urland',100);
INSERT  IGNORE INTO `regions` VALUES (1663,'Su urnes',100);
INSERT  IGNORE INTO `regions` VALUES (1664,'Vestfir ir',100);
INSERT  IGNORE INTO `regions` VALUES (1665,'Vesturland',100);
INSERT  IGNORE INTO `regions` VALUES (1666,'Aceh',102);
INSERT  IGNORE INTO `regions` VALUES (1667,'Bali',102);
INSERT  IGNORE INTO `regions` VALUES (1668,'Bangka-Belitung',102);
INSERT  IGNORE INTO `regions` VALUES (1669,'Banten',102);
INSERT  IGNORE INTO `regions` VALUES (1670,'Bengkulu',102);
INSERT  IGNORE INTO `regions` VALUES (1671,'Gandaria',102);
INSERT  IGNORE INTO `regions` VALUES (1672,'Gorontalo',102);
INSERT  IGNORE INTO `regions` VALUES (1673,'Jakarta',102);
INSERT  IGNORE INTO `regions` VALUES (1674,'Jambi',102);
INSERT  IGNORE INTO `regions` VALUES (1675,'Jawa Barat',102);
INSERT  IGNORE INTO `regions` VALUES (1676,'Jawa Tengah',102);
INSERT  IGNORE INTO `regions` VALUES (1677,'Jawa Timur',102);
INSERT  IGNORE INTO `regions` VALUES (1678,'Kalimantan Barat',102);
INSERT  IGNORE INTO `regions` VALUES (1679,'Kalimantan Selatan',102);
INSERT  IGNORE INTO `regions` VALUES (1680,'Kalimantan Tengah',102);
INSERT  IGNORE INTO `regions` VALUES (1681,'Kalimantan Timur',102);
INSERT  IGNORE INTO `regions` VALUES (1682,'Kendal',102);
INSERT  IGNORE INTO `regions` VALUES (1683,'Lampung',102);
INSERT  IGNORE INTO `regions` VALUES (1684,'Maluku',102);
INSERT  IGNORE INTO `regions` VALUES (1685,'Maluku Utara',102);
INSERT  IGNORE INTO `regions` VALUES (1686,'Nusa Tenggara Barat',102);
INSERT  IGNORE INTO `regions` VALUES (1687,'Nusa Tenggara Timur',102);
INSERT  IGNORE INTO `regions` VALUES (1688,'Papua',102);
INSERT  IGNORE INTO `regions` VALUES (1689,'Riau',102);
INSERT  IGNORE INTO `regions` VALUES (1690,'Riau Kepulauan',102);
INSERT  IGNORE INTO `regions` VALUES (1691,'Solo',102);
INSERT  IGNORE INTO `regions` VALUES (1692,'Sulawesi Selatan',102);
INSERT  IGNORE INTO `regions` VALUES (1693,'Sulawesi Tengah',102);
INSERT  IGNORE INTO `regions` VALUES (1694,'Sulawesi Tenggara',102);
INSERT  IGNORE INTO `regions` VALUES (1695,'Sulawesi Utara',102);
INSERT  IGNORE INTO `regions` VALUES (1696,'Sumatera Barat',102);
INSERT  IGNORE INTO `regions` VALUES (1697,'Sumatera Selatan',102);
INSERT  IGNORE INTO `regions` VALUES (1698,'Sumatera Utara',102);
INSERT  IGNORE INTO `regions` VALUES (1699,'Yogyakarta',102);
INSERT  IGNORE INTO `regions` VALUES (1700,'Ardabil',103);
INSERT  IGNORE INTO `regions` VALUES (1701,'Azarbayjan-e Bakhtari',103);
INSERT  IGNORE INTO `regions` VALUES (1702,'Azarbayjan-e Khavari',103);
INSERT  IGNORE INTO `regions` VALUES (1703,'Bushehr',103);
INSERT  IGNORE INTO `regions` VALUES (1704,'Chahar Mahal-e Bakhtiari',103);
INSERT  IGNORE INTO `regions` VALUES (1705,'Esfahan',103);
INSERT  IGNORE INTO `regions` VALUES (1706,'Fars',103);
INSERT  IGNORE INTO `regions` VALUES (1707,'Gilan',103);
INSERT  IGNORE INTO `regions` VALUES (1708,'Golestan',103);
INSERT  IGNORE INTO `regions` VALUES (1709,'Hamadan',103);
INSERT  IGNORE INTO `regions` VALUES (1710,'Hormozgan',103);
INSERT  IGNORE INTO `regions` VALUES (1711,'Ilam',103);
INSERT  IGNORE INTO `regions` VALUES (1712,'Kerman',103);
INSERT  IGNORE INTO `regions` VALUES (1713,'Kermanshah',103);
INSERT  IGNORE INTO `regions` VALUES (1714,'Khorasan',103);
INSERT  IGNORE INTO `regions` VALUES (1715,'Khuzestan',103);
INSERT  IGNORE INTO `regions` VALUES (1716,'Kohgiluyeh-e Boyerahmad',103);
INSERT  IGNORE INTO `regions` VALUES (1717,'Kordestan',103);
INSERT  IGNORE INTO `regions` VALUES (1718,'Lorestan',103);
INSERT  IGNORE INTO `regions` VALUES (1719,'Markazi',103);
INSERT  IGNORE INTO `regions` VALUES (1720,'Mazandaran',103);
INSERT  IGNORE INTO `regions` VALUES (1721,'Ostan-e Esfahan',103);
INSERT  IGNORE INTO `regions` VALUES (1722,'Qazvin',103);
INSERT  IGNORE INTO `regions` VALUES (1723,'Qom',103);
INSERT  IGNORE INTO `regions` VALUES (1724,'Semnan',103);
INSERT  IGNORE INTO `regions` VALUES (1725,'Sistan-e Baluchestan',103);
INSERT  IGNORE INTO `regions` VALUES (1726,'Tehran',103);
INSERT  IGNORE INTO `regions` VALUES (1727,'Yazd',103);
INSERT  IGNORE INTO `regions` VALUES (1728,'Zanjan',103);
INSERT  IGNORE INTO `regions` VALUES (1729,'Babil',104);
INSERT  IGNORE INTO `regions` VALUES (1730,'Baghdad',104);
INSERT  IGNORE INTO `regions` VALUES (1731,'Dahuk',104);
INSERT  IGNORE INTO `regions` VALUES (1732,'Dhi Qar',104);
INSERT  IGNORE INTO `regions` VALUES (1733,'Diyala',104);
INSERT  IGNORE INTO `regions` VALUES (1734,'Erbil',104);
INSERT  IGNORE INTO `regions` VALUES (1735,'Irbil',104);
INSERT  IGNORE INTO `regions` VALUES (1736,'Karbala',104);
INSERT  IGNORE INTO `regions` VALUES (1737,'Kurdistan',104);
INSERT  IGNORE INTO `regions` VALUES (1738,'Maysan',104);
INSERT  IGNORE INTO `regions` VALUES (1739,'Ninawa',104);
INSERT  IGNORE INTO `regions` VALUES (1740,'Salah-ad-Din',104);
INSERT  IGNORE INTO `regions` VALUES (1741,'Wasit',104);
INSERT  IGNORE INTO `regions` VALUES (1742,'al-Anbar',104);
INSERT  IGNORE INTO `regions` VALUES (1743,'al-Basrah',104);
INSERT  IGNORE INTO `regions` VALUES (1744,'al-Muthanna',104);
INSERT  IGNORE INTO `regions` VALUES (1745,'al-Qadisiyah',104);
INSERT  IGNORE INTO `regions` VALUES (1746,'an-Najaf',104);
INSERT  IGNORE INTO `regions` VALUES (1747,'as-Sulaymaniyah',104);
INSERT  IGNORE INTO `regions` VALUES (1748,'at-Ta\'mim',104);
INSERT  IGNORE INTO `regions` VALUES (1749,'Armagh',105);
INSERT  IGNORE INTO `regions` VALUES (1750,'Carlow',105);
INSERT  IGNORE INTO `regions` VALUES (1751,'Cavan',105);
INSERT  IGNORE INTO `regions` VALUES (1752,'Clare',105);
INSERT  IGNORE INTO `regions` VALUES (1753,'Cork',105);
INSERT  IGNORE INTO `regions` VALUES (1754,'Donegal',105);
INSERT  IGNORE INTO `regions` VALUES (1755,'Dublin',105);
INSERT  IGNORE INTO `regions` VALUES (1756,'Galway',105);
INSERT  IGNORE INTO `regions` VALUES (1757,'Kerry',105);
INSERT  IGNORE INTO `regions` VALUES (1758,'Kildare',105);
INSERT  IGNORE INTO `regions` VALUES (1759,'Kilkenny',105);
INSERT  IGNORE INTO `regions` VALUES (1760,'Laois',105);
INSERT  IGNORE INTO `regions` VALUES (1761,'Leinster',105);
INSERT  IGNORE INTO `regions` VALUES (1762,'Leitrim',105);
INSERT  IGNORE INTO `regions` VALUES (1763,'Limerick',105);
INSERT  IGNORE INTO `regions` VALUES (1764,'Loch Garman',105);
INSERT  IGNORE INTO `regions` VALUES (1765,'Longford',105);
INSERT  IGNORE INTO `regions` VALUES (1766,'Louth',105);
INSERT  IGNORE INTO `regions` VALUES (1767,'Mayo',105);
INSERT  IGNORE INTO `regions` VALUES (1768,'Meath',105);
INSERT  IGNORE INTO `regions` VALUES (1769,'Monaghan',105);
INSERT  IGNORE INTO `regions` VALUES (1770,'Offaly',105);
INSERT  IGNORE INTO `regions` VALUES (1771,'Roscommon',105);
INSERT  IGNORE INTO `regions` VALUES (1772,'Sligo',105);
INSERT  IGNORE INTO `regions` VALUES (1773,'Tipperary North Riding',105);
INSERT  IGNORE INTO `regions` VALUES (1774,'Tipperary South Riding',105);
INSERT  IGNORE INTO `regions` VALUES (1775,'Ulster',105);
INSERT  IGNORE INTO `regions` VALUES (1776,'Waterford',105);
INSERT  IGNORE INTO `regions` VALUES (1777,'Westmeath',105);
INSERT  IGNORE INTO `regions` VALUES (1778,'Wexford',105);
INSERT  IGNORE INTO `regions` VALUES (1779,'Wicklow',105);
INSERT  IGNORE INTO `regions` VALUES (1780,'Beit Hanania',106);
INSERT  IGNORE INTO `regions` VALUES (1781,'Ben Gurion Airport',106);
INSERT  IGNORE INTO `regions` VALUES (1782,'Bethlehem',106);
INSERT  IGNORE INTO `regions` VALUES (1783,'Caesarea',106);
INSERT  IGNORE INTO `regions` VALUES (1784,'Centre',106);
INSERT  IGNORE INTO `regions` VALUES (1785,'Gaza',106);
INSERT  IGNORE INTO `regions` VALUES (1786,'Hadaron',106);
INSERT  IGNORE INTO `regions` VALUES (1787,'Haifa District',106);
INSERT  IGNORE INTO `regions` VALUES (1788,'Hamerkaz',106);
INSERT  IGNORE INTO `regions` VALUES (1789,'Hazafon',106);
INSERT  IGNORE INTO `regions` VALUES (1790,'Hebron',106);
INSERT  IGNORE INTO `regions` VALUES (1791,'Jaffa',106);
INSERT  IGNORE INTO `regions` VALUES (1792,'Jerusalem',106);
INSERT  IGNORE INTO `regions` VALUES (1793,'Khefa',106);
INSERT  IGNORE INTO `regions` VALUES (1794,'Kiryat Yam',106);
INSERT  IGNORE INTO `regions` VALUES (1795,'Lower Galilee',106);
INSERT  IGNORE INTO `regions` VALUES (1796,'Qalqilya',106);
INSERT  IGNORE INTO `regions` VALUES (1797,'Talme Elazar',106);
INSERT  IGNORE INTO `regions` VALUES (1798,'Tel Aviv',106);
INSERT  IGNORE INTO `regions` VALUES (1799,'Tsafon',106);
INSERT  IGNORE INTO `regions` VALUES (1800,'Umm El Fahem',106);
INSERT  IGNORE INTO `regions` VALUES (1801,'Yerushalayim',106);
INSERT  IGNORE INTO `regions` VALUES (1802,'Abruzzi',107);
INSERT  IGNORE INTO `regions` VALUES (1803,'Abruzzo',107);
INSERT  IGNORE INTO `regions` VALUES (1804,'Agrigento',107);
INSERT  IGNORE INTO `regions` VALUES (1805,'Alessandria',107);
INSERT  IGNORE INTO `regions` VALUES (1806,'Ancona',107);
INSERT  IGNORE INTO `regions` VALUES (1807,'Arezzo',107);
INSERT  IGNORE INTO `regions` VALUES (1808,'Ascoli Piceno',107);
INSERT  IGNORE INTO `regions` VALUES (1809,'Asti',107);
INSERT  IGNORE INTO `regions` VALUES (1810,'Avellino',107);
INSERT  IGNORE INTO `regions` VALUES (1811,'Bari',107);
INSERT  IGNORE INTO `regions` VALUES (1812,'Basilicata',107);
INSERT  IGNORE INTO `regions` VALUES (1813,'Belluno',107);
INSERT  IGNORE INTO `regions` VALUES (1814,'Benevento',107);
INSERT  IGNORE INTO `regions` VALUES (1815,'Bergamo',107);
INSERT  IGNORE INTO `regions` VALUES (1816,'Biella',107);
INSERT  IGNORE INTO `regions` VALUES (1817,'Bologna',107);
INSERT  IGNORE INTO `regions` VALUES (1818,'Bolzano',107);
INSERT  IGNORE INTO `regions` VALUES (1819,'Brescia',107);
INSERT  IGNORE INTO `regions` VALUES (1820,'Brindisi',107);
INSERT  IGNORE INTO `regions` VALUES (1821,'Calabria',107);
INSERT  IGNORE INTO `regions` VALUES (1822,'Campania',107);
INSERT  IGNORE INTO `regions` VALUES (1823,'Cartoceto',107);
INSERT  IGNORE INTO `regions` VALUES (1824,'Caserta',107);
INSERT  IGNORE INTO `regions` VALUES (1825,'Catania',107);
INSERT  IGNORE INTO `regions` VALUES (1826,'Chieti',107);
INSERT  IGNORE INTO `regions` VALUES (1827,'Como',107);
INSERT  IGNORE INTO `regions` VALUES (1828,'Cosenza',107);
INSERT  IGNORE INTO `regions` VALUES (1829,'Cremona',107);
INSERT  IGNORE INTO `regions` VALUES (1830,'Cuneo',107);
INSERT  IGNORE INTO `regions` VALUES (1831,'Emilia-Romagna',107);
INSERT  IGNORE INTO `regions` VALUES (1832,'Ferrara',107);
INSERT  IGNORE INTO `regions` VALUES (1833,'Firenze',107);
INSERT  IGNORE INTO `regions` VALUES (1834,'Florence',107);
INSERT  IGNORE INTO `regions` VALUES (1835,'Forli-Cesena ',107);
INSERT  IGNORE INTO `regions` VALUES (1836,'Friuli-Venezia Giulia',107);
INSERT  IGNORE INTO `regions` VALUES (1837,'Frosinone',107);
INSERT  IGNORE INTO `regions` VALUES (1838,'Genoa',107);
INSERT  IGNORE INTO `regions` VALUES (1839,'Gorizia',107);
INSERT  IGNORE INTO `regions` VALUES (1840,'L\'Aquila',107);
INSERT  IGNORE INTO `regions` VALUES (1841,'Lazio',107);
INSERT  IGNORE INTO `regions` VALUES (1842,'Lecce',107);
INSERT  IGNORE INTO `regions` VALUES (1843,'Lecco',107);
INSERT  IGNORE INTO `regions` VALUES (1844,'Lecco Province',107);
INSERT  IGNORE INTO `regions` VALUES (1845,'Liguria',107);
INSERT  IGNORE INTO `regions` VALUES (1846,'Lodi',107);
INSERT  IGNORE INTO `regions` VALUES (1847,'Lombardia',107);
INSERT  IGNORE INTO `regions` VALUES (1848,'Lombardy',107);
INSERT  IGNORE INTO `regions` VALUES (1849,'Macerata',107);
INSERT  IGNORE INTO `regions` VALUES (1850,'Mantova',107);
INSERT  IGNORE INTO `regions` VALUES (1851,'Marche',107);
INSERT  IGNORE INTO `regions` VALUES (1852,'Messina',107);
INSERT  IGNORE INTO `regions` VALUES (1853,'Milan',107);
INSERT  IGNORE INTO `regions` VALUES (1854,'Modena',107);
INSERT  IGNORE INTO `regions` VALUES (1855,'Molise',107);
INSERT  IGNORE INTO `regions` VALUES (1856,'Molteno',107);
INSERT  IGNORE INTO `regions` VALUES (1857,'Montenegro',107);
INSERT  IGNORE INTO `regions` VALUES (1858,'Monza and Brianza',107);
INSERT  IGNORE INTO `regions` VALUES (1859,'Naples',107);
INSERT  IGNORE INTO `regions` VALUES (1860,'Novara',107);
INSERT  IGNORE INTO `regions` VALUES (1861,'Padova',107);
INSERT  IGNORE INTO `regions` VALUES (1862,'Parma',107);
INSERT  IGNORE INTO `regions` VALUES (1863,'Pavia',107);
INSERT  IGNORE INTO `regions` VALUES (1864,'Perugia',107);
INSERT  IGNORE INTO `regions` VALUES (1865,'Pesaro-Urbino',107);
INSERT  IGNORE INTO `regions` VALUES (1866,'Piacenza',107);
INSERT  IGNORE INTO `regions` VALUES (1867,'Piedmont',107);
INSERT  IGNORE INTO `regions` VALUES (1868,'Piemonte',107);
INSERT  IGNORE INTO `regions` VALUES (1869,'Pisa',107);
INSERT  IGNORE INTO `regions` VALUES (1870,'Pordenone',107);
INSERT  IGNORE INTO `regions` VALUES (1871,'Potenza',107);
INSERT  IGNORE INTO `regions` VALUES (1872,'Puglia',107);
INSERT  IGNORE INTO `regions` VALUES (1873,'Reggio Emilia',107);
INSERT  IGNORE INTO `regions` VALUES (1874,'Rimini',107);
INSERT  IGNORE INTO `regions` VALUES (1875,'Roma',107);
INSERT  IGNORE INTO `regions` VALUES (1876,'Salerno',107);
INSERT  IGNORE INTO `regions` VALUES (1877,'Sardegna',107);
INSERT  IGNORE INTO `regions` VALUES (1878,'Sassari',107);
INSERT  IGNORE INTO `regions` VALUES (1879,'Savona',107);
INSERT  IGNORE INTO `regions` VALUES (1880,'Sicilia',107);
INSERT  IGNORE INTO `regions` VALUES (1881,'Siena',107);
INSERT  IGNORE INTO `regions` VALUES (1882,'Sondrio',107);
INSERT  IGNORE INTO `regions` VALUES (1883,'South Tyrol',107);
INSERT  IGNORE INTO `regions` VALUES (1884,'Taranto',107);
INSERT  IGNORE INTO `regions` VALUES (1885,'Teramo',107);
INSERT  IGNORE INTO `regions` VALUES (1886,'Torino',107);
INSERT  IGNORE INTO `regions` VALUES (1887,'Toscana',107);
INSERT  IGNORE INTO `regions` VALUES (1888,'Trapani',107);
INSERT  IGNORE INTO `regions` VALUES (1889,'Trentino-Alto Adige',107);
INSERT  IGNORE INTO `regions` VALUES (1890,'Trento',107);
INSERT  IGNORE INTO `regions` VALUES (1891,'Treviso',107);
INSERT  IGNORE INTO `regions` VALUES (1892,'Udine',107);
INSERT  IGNORE INTO `regions` VALUES (1893,'Umbria',107);
INSERT  IGNORE INTO `regions` VALUES (1894,'Valle d\'Aosta',107);
INSERT  IGNORE INTO `regions` VALUES (1895,'Varese',107);
INSERT  IGNORE INTO `regions` VALUES (1896,'Veneto',107);
INSERT  IGNORE INTO `regions` VALUES (1897,'Venezia',107);
INSERT  IGNORE INTO `regions` VALUES (1898,'Verbano-Cusio-Ossola',107);
INSERT  IGNORE INTO `regions` VALUES (1899,'Vercelli',107);
INSERT  IGNORE INTO `regions` VALUES (1900,'Verona',107);
INSERT  IGNORE INTO `regions` VALUES (1901,'Vicenza',107);
INSERT  IGNORE INTO `regions` VALUES (1902,'Viterbo',107);
INSERT  IGNORE INTO `regions` VALUES (1903,'Buxoro Viloyati',108);
INSERT  IGNORE INTO `regions` VALUES (1904,'Clarendon',108);
INSERT  IGNORE INTO `regions` VALUES (1905,'Hanover',108);
INSERT  IGNORE INTO `regions` VALUES (1906,'Kingston',108);
INSERT  IGNORE INTO `regions` VALUES (1907,'Manchester',108);
INSERT  IGNORE INTO `regions` VALUES (1908,'Portland',108);
INSERT  IGNORE INTO `regions` VALUES (1909,'Saint Andrews',108);
INSERT  IGNORE INTO `regions` VALUES (1910,'Saint Ann',108);
INSERT  IGNORE INTO `regions` VALUES (1911,'Saint Catherine',108);
INSERT  IGNORE INTO `regions` VALUES (1912,'Saint Elizabeth',108);
INSERT  IGNORE INTO `regions` VALUES (1913,'Saint James',108);
INSERT  IGNORE INTO `regions` VALUES (1914,'Saint Mary',108);
INSERT  IGNORE INTO `regions` VALUES (1915,'Saint Thomas',108);
INSERT  IGNORE INTO `regions` VALUES (1916,'Trelawney',108);
INSERT  IGNORE INTO `regions` VALUES (1917,'Westmoreland',108);
INSERT  IGNORE INTO `regions` VALUES (1918,'Aichi',109);
INSERT  IGNORE INTO `regions` VALUES (1919,'Akita',109);
INSERT  IGNORE INTO `regions` VALUES (1920,'Aomori',109);
INSERT  IGNORE INTO `regions` VALUES (1921,'Chiba',109);
INSERT  IGNORE INTO `regions` VALUES (1922,'Ehime',109);
INSERT  IGNORE INTO `regions` VALUES (1923,'Fukui',109);
INSERT  IGNORE INTO `regions` VALUES (1924,'Fukuoka',109);
INSERT  IGNORE INTO `regions` VALUES (1925,'Fukushima',109);
INSERT  IGNORE INTO `regions` VALUES (1926,'Gifu',109);
INSERT  IGNORE INTO `regions` VALUES (1927,'Gumma',109);
INSERT  IGNORE INTO `regions` VALUES (1928,'Hiroshima',109);
INSERT  IGNORE INTO `regions` VALUES (1929,'Hokkaido',109);
INSERT  IGNORE INTO `regions` VALUES (1930,'Hyogo',109);
INSERT  IGNORE INTO `regions` VALUES (1931,'Ibaraki',109);
INSERT  IGNORE INTO `regions` VALUES (1932,'Ishikawa',109);
INSERT  IGNORE INTO `regions` VALUES (1933,'Iwate',109);
INSERT  IGNORE INTO `regions` VALUES (1934,'Kagawa',109);
INSERT  IGNORE INTO `regions` VALUES (1935,'Kagoshima',109);
INSERT  IGNORE INTO `regions` VALUES (1936,'Kanagawa',109);
INSERT  IGNORE INTO `regions` VALUES (1937,'Kanto',109);
INSERT  IGNORE INTO `regions` VALUES (1938,'Kochi',109);
INSERT  IGNORE INTO `regions` VALUES (1939,'Kumamoto',109);
INSERT  IGNORE INTO `regions` VALUES (1940,'Kyoto',109);
INSERT  IGNORE INTO `regions` VALUES (1941,'Mie',109);
INSERT  IGNORE INTO `regions` VALUES (1942,'Miyagi',109);
INSERT  IGNORE INTO `regions` VALUES (1943,'Miyazaki',109);
INSERT  IGNORE INTO `regions` VALUES (1944,'Nagano',109);
INSERT  IGNORE INTO `regions` VALUES (1945,'Nagasaki',109);
INSERT  IGNORE INTO `regions` VALUES (1946,'Nara',109);
INSERT  IGNORE INTO `regions` VALUES (1947,'Niigata',109);
INSERT  IGNORE INTO `regions` VALUES (1948,'Oita',109);
INSERT  IGNORE INTO `regions` VALUES (1949,'Okayama',109);
INSERT  IGNORE INTO `regions` VALUES (1950,'Okinawa',109);
INSERT  IGNORE INTO `regions` VALUES (1951,'Osaka',109);
INSERT  IGNORE INTO `regions` VALUES (1952,'Saga',109);
INSERT  IGNORE INTO `regions` VALUES (1953,'Saitama',109);
INSERT  IGNORE INTO `regions` VALUES (1954,'Shiga',109);
INSERT  IGNORE INTO `regions` VALUES (1955,'Shimane',109);
INSERT  IGNORE INTO `regions` VALUES (1956,'Shizuoka',109);
INSERT  IGNORE INTO `regions` VALUES (1957,'Tochigi',109);
INSERT  IGNORE INTO `regions` VALUES (1958,'Tokushima',109);
INSERT  IGNORE INTO `regions` VALUES (1959,'Tokyo',109);
INSERT  IGNORE INTO `regions` VALUES (1960,'Tottori',109);
INSERT  IGNORE INTO `regions` VALUES (1961,'Toyama',109);
INSERT  IGNORE INTO `regions` VALUES (1962,'Wakayama',109);
INSERT  IGNORE INTO `regions` VALUES (1963,'Yamagata',109);
INSERT  IGNORE INTO `regions` VALUES (1964,'Yamaguchi',109);
INSERT  IGNORE INTO `regions` VALUES (1965,'Yamanashi',109);
INSERT  IGNORE INTO `regions` VALUES (1966,'Grouville',110);
INSERT  IGNORE INTO `regions` VALUES (1967,'Saint Brelade',110);
INSERT  IGNORE INTO `regions` VALUES (1968,'Saint Clement',110);
INSERT  IGNORE INTO `regions` VALUES (1969,'Saint Helier',110);
INSERT  IGNORE INTO `regions` VALUES (1970,'Saint John',110);
INSERT  IGNORE INTO `regions` VALUES (1971,'Saint Lawrence',110);
INSERT  IGNORE INTO `regions` VALUES (1972,'Saint Martin',110);
INSERT  IGNORE INTO `regions` VALUES (1973,'Saint Mary',110);
INSERT  IGNORE INTO `regions` VALUES (1974,'Saint Peter',110);
INSERT  IGNORE INTO `regions` VALUES (1975,'Saint Saviour',110);
INSERT  IGNORE INTO `regions` VALUES (1976,'Trinity',110);
INSERT  IGNORE INTO `regions` VALUES (1977,'\'Ajlun',111);
INSERT  IGNORE INTO `regions` VALUES (1978,'Amman',111);
INSERT  IGNORE INTO `regions` VALUES (1979,'Irbid',111);
INSERT  IGNORE INTO `regions` VALUES (1980,'Jarash',111);
INSERT  IGNORE INTO `regions` VALUES (1981,'Ma\'an',111);
INSERT  IGNORE INTO `regions` VALUES (1982,'Madaba',111);
INSERT  IGNORE INTO `regions` VALUES (1983,'al-\'Aqabah',111);
INSERT  IGNORE INTO `regions` VALUES (1984,'al-Balqa\'',111);
INSERT  IGNORE INTO `regions` VALUES (1985,'al-Karak',111);
INSERT  IGNORE INTO `regions` VALUES (1986,'al-Mafraq',111);
INSERT  IGNORE INTO `regions` VALUES (1987,'at-Tafilah',111);
INSERT  IGNORE INTO `regions` VALUES (1988,'az-Zarqa\'',111);
INSERT  IGNORE INTO `regions` VALUES (1989,'Akmecet',112);
INSERT  IGNORE INTO `regions` VALUES (1990,'Akmola',112);
INSERT  IGNORE INTO `regions` VALUES (1991,'Aktobe',112);
INSERT  IGNORE INTO `regions` VALUES (1992,'Almati',112);
INSERT  IGNORE INTO `regions` VALUES (1993,'Atirau',112);
INSERT  IGNORE INTO `regions` VALUES (1994,'Batis Kazakstan',112);
INSERT  IGNORE INTO `regions` VALUES (1995,'Burlinsky Region',112);
INSERT  IGNORE INTO `regions` VALUES (1996,'Karagandi',112);
INSERT  IGNORE INTO `regions` VALUES (1997,'Kostanay',112);
INSERT  IGNORE INTO `regions` VALUES (1998,'Mankistau',112);
INSERT  IGNORE INTO `regions` VALUES (1999,'Ontustik Kazakstan',112);
INSERT  IGNORE INTO `regions` VALUES (2000,'Pavlodar',112);
INSERT  IGNORE INTO `regions` VALUES (2001,'Sigis Kazakstan',112);
INSERT  IGNORE INTO `regions` VALUES (2002,'Soltustik Kazakstan',112);
INSERT  IGNORE INTO `regions` VALUES (2003,'Taraz',112);
INSERT  IGNORE INTO `regions` VALUES (2004,'Central',113);
INSERT  IGNORE INTO `regions` VALUES (2005,'Coast',113);
INSERT  IGNORE INTO `regions` VALUES (2006,'Eastern',113);
INSERT  IGNORE INTO `regions` VALUES (2007,'Nairobi',113);
INSERT  IGNORE INTO `regions` VALUES (2008,'North Eastern',113);
INSERT  IGNORE INTO `regions` VALUES (2009,'Nyanza',113);
INSERT  IGNORE INTO `regions` VALUES (2010,'Rift Valley',113);
INSERT  IGNORE INTO `regions` VALUES (2011,'Western',113);
INSERT  IGNORE INTO `regions` VALUES (2012,'Abaiang',114);
INSERT  IGNORE INTO `regions` VALUES (2013,'Abemana',114);
INSERT  IGNORE INTO `regions` VALUES (2014,'Aranuka',114);
INSERT  IGNORE INTO `regions` VALUES (2015,'Arorae',114);
INSERT  IGNORE INTO `regions` VALUES (2016,'Banaba',114);
INSERT  IGNORE INTO `regions` VALUES (2017,'Beru',114);
INSERT  IGNORE INTO `regions` VALUES (2018,'Butaritari',114);
INSERT  IGNORE INTO `regions` VALUES (2019,'Kiritimati',114);
INSERT  IGNORE INTO `regions` VALUES (2020,'Kuria',114);
INSERT  IGNORE INTO `regions` VALUES (2021,'Maiana',114);
INSERT  IGNORE INTO `regions` VALUES (2022,'Makin',114);
INSERT  IGNORE INTO `regions` VALUES (2023,'Marakei',114);
INSERT  IGNORE INTO `regions` VALUES (2024,'Nikunau',114);
INSERT  IGNORE INTO `regions` VALUES (2025,'Nonouti',114);
INSERT  IGNORE INTO `regions` VALUES (2026,'Onotoa',114);
INSERT  IGNORE INTO `regions` VALUES (2027,'Phoenix Islands',114);
INSERT  IGNORE INTO `regions` VALUES (2028,'Tabiteuea North',114);
INSERT  IGNORE INTO `regions` VALUES (2029,'Tabiteuea South',114);
INSERT  IGNORE INTO `regions` VALUES (2030,'Tabuaeran',114);
INSERT  IGNORE INTO `regions` VALUES (2031,'Tamana',114);
INSERT  IGNORE INTO `regions` VALUES (2032,'Tarawa North',114);
INSERT  IGNORE INTO `regions` VALUES (2033,'Tarawa South',114);
INSERT  IGNORE INTO `regions` VALUES (2034,'Teraina',114);
INSERT  IGNORE INTO `regions` VALUES (2035,'Chagangdo',115);
INSERT  IGNORE INTO `regions` VALUES (2036,'Hamgyeongbukto',115);
INSERT  IGNORE INTO `regions` VALUES (2037,'Hamgyeongnamdo',115);
INSERT  IGNORE INTO `regions` VALUES (2038,'Hwanghaebukto',115);
INSERT  IGNORE INTO `regions` VALUES (2039,'Hwanghaenamdo',115);
INSERT  IGNORE INTO `regions` VALUES (2040,'Kaeseong',115);
INSERT  IGNORE INTO `regions` VALUES (2041,'Kangweon',115);
INSERT  IGNORE INTO `regions` VALUES (2042,'Nampo',115);
INSERT  IGNORE INTO `regions` VALUES (2043,'Pyeonganbukto',115);
INSERT  IGNORE INTO `regions` VALUES (2044,'Pyeongannamdo',115);
INSERT  IGNORE INTO `regions` VALUES (2045,'Pyeongyang',115);
INSERT  IGNORE INTO `regions` VALUES (2046,'Yanggang',115);
INSERT  IGNORE INTO `regions` VALUES (2047,'Busan',116);
INSERT  IGNORE INTO `regions` VALUES (2048,'Cheju',116);
INSERT  IGNORE INTO `regions` VALUES (2049,'Chollabuk',116);
INSERT  IGNORE INTO `regions` VALUES (2050,'Chollanam',116);
INSERT  IGNORE INTO `regions` VALUES (2051,'Chungbuk',116);
INSERT  IGNORE INTO `regions` VALUES (2052,'Chungcheongbuk',116);
INSERT  IGNORE INTO `regions` VALUES (2053,'Chungcheongnam',116);
INSERT  IGNORE INTO `regions` VALUES (2054,'Chungnam',116);
INSERT  IGNORE INTO `regions` VALUES (2055,'Daegu',116);
INSERT  IGNORE INTO `regions` VALUES (2056,'Gangwon-do',116);
INSERT  IGNORE INTO `regions` VALUES (2057,'Goyang-si',116);
INSERT  IGNORE INTO `regions` VALUES (2058,'Gyeonggi-do',116);
INSERT  IGNORE INTO `regions` VALUES (2059,'Gyeongsang ',116);
INSERT  IGNORE INTO `regions` VALUES (2060,'Gyeongsangnam-do',116);
INSERT  IGNORE INTO `regions` VALUES (2061,'Incheon',116);
INSERT  IGNORE INTO `regions` VALUES (2062,'Jeju-Si',116);
INSERT  IGNORE INTO `regions` VALUES (2063,'Jeonbuk',116);
INSERT  IGNORE INTO `regions` VALUES (2064,'Kangweon',116);
INSERT  IGNORE INTO `regions` VALUES (2065,'Kwangju',116);
INSERT  IGNORE INTO `regions` VALUES (2066,'Kyeonggi',116);
INSERT  IGNORE INTO `regions` VALUES (2067,'Kyeongsangbuk',116);
INSERT  IGNORE INTO `regions` VALUES (2068,'Kyeongsangnam',116);
INSERT  IGNORE INTO `regions` VALUES (2069,'Kyonggi-do',116);
INSERT  IGNORE INTO `regions` VALUES (2070,'Kyungbuk-Do',116);
INSERT  IGNORE INTO `regions` VALUES (2071,'Kyunggi-Do',116);
INSERT  IGNORE INTO `regions` VALUES (2072,'Kyunggi-do',116);
INSERT  IGNORE INTO `regions` VALUES (2073,'Pusan',116);
INSERT  IGNORE INTO `regions` VALUES (2074,'Seoul',116);
INSERT  IGNORE INTO `regions` VALUES (2075,'Sudogwon',116);
INSERT  IGNORE INTO `regions` VALUES (2076,'Taegu',116);
INSERT  IGNORE INTO `regions` VALUES (2077,'Taejeon',116);
INSERT  IGNORE INTO `regions` VALUES (2078,'Taejon-gwangyoksi',116);
INSERT  IGNORE INTO `regions` VALUES (2079,'Ulsan',116);
INSERT  IGNORE INTO `regions` VALUES (2080,'Wonju',116);
INSERT  IGNORE INTO `regions` VALUES (2081,'gwangyoksi',116);
INSERT  IGNORE INTO `regions` VALUES (2082,'Al Asimah',117);
INSERT  IGNORE INTO `regions` VALUES (2083,'Hawalli',117);
INSERT  IGNORE INTO `regions` VALUES (2084,'Mishref',117);
INSERT  IGNORE INTO `regions` VALUES (2085,'Qadesiya',117);
INSERT  IGNORE INTO `regions` VALUES (2086,'Safat',117);
INSERT  IGNORE INTO `regions` VALUES (2087,'Salmiya',117);
INSERT  IGNORE INTO `regions` VALUES (2088,'al-Ahmadi',117);
INSERT  IGNORE INTO `regions` VALUES (2089,'al-Farwaniyah',117);
INSERT  IGNORE INTO `regions` VALUES (2090,'al-Jahra',117);
INSERT  IGNORE INTO `regions` VALUES (2091,'al-Kuwayt',117);
INSERT  IGNORE INTO `regions` VALUES (2092,'Batken',118);
INSERT  IGNORE INTO `regions` VALUES (2093,'Bishkek',118);
INSERT  IGNORE INTO `regions` VALUES (2094,'Chui',118);
INSERT  IGNORE INTO `regions` VALUES (2095,'Issyk-Kul',118);
INSERT  IGNORE INTO `regions` VALUES (2096,'Jalal-Abad',118);
INSERT  IGNORE INTO `regions` VALUES (2097,'Naryn',118);
INSERT  IGNORE INTO `regions` VALUES (2098,'Osh',118);
INSERT  IGNORE INTO `regions` VALUES (2099,'Talas',118);
INSERT  IGNORE INTO `regions` VALUES (2100,'Attopu',119);
INSERT  IGNORE INTO `regions` VALUES (2101,'Bokeo',119);
INSERT  IGNORE INTO `regions` VALUES (2102,'Bolikhamsay',119);
INSERT  IGNORE INTO `regions` VALUES (2103,'Champasak',119);
INSERT  IGNORE INTO `regions` VALUES (2104,'Houaphanh',119);
INSERT  IGNORE INTO `regions` VALUES (2105,'Khammouane',119);
INSERT  IGNORE INTO `regions` VALUES (2106,'Luang Nam Tha',119);
INSERT  IGNORE INTO `regions` VALUES (2107,'Luang Prabang',119);
INSERT  IGNORE INTO `regions` VALUES (2108,'Oudomxay',119);
INSERT  IGNORE INTO `regions` VALUES (2109,'Phongsaly',119);
INSERT  IGNORE INTO `regions` VALUES (2110,'Saravan',119);
INSERT  IGNORE INTO `regions` VALUES (2111,'Savannakhet',119);
INSERT  IGNORE INTO `regions` VALUES (2112,'Sekong',119);
INSERT  IGNORE INTO `regions` VALUES (2113,'Viangchan Prefecture',119);
INSERT  IGNORE INTO `regions` VALUES (2114,'Viangchan Province',119);
INSERT  IGNORE INTO `regions` VALUES (2115,'Xaignabury',119);
INSERT  IGNORE INTO `regions` VALUES (2116,'Xiang Khuang',119);
INSERT  IGNORE INTO `regions` VALUES (2117,'Aizkraukles',120);
INSERT  IGNORE INTO `regions` VALUES (2118,'Aluksnes',120);
INSERT  IGNORE INTO `regions` VALUES (2119,'Balvu',120);
INSERT  IGNORE INTO `regions` VALUES (2120,'Bauskas',120);
INSERT  IGNORE INTO `regions` VALUES (2121,'Cesu',120);
INSERT  IGNORE INTO `regions` VALUES (2122,'Daugavpils',120);
INSERT  IGNORE INTO `regions` VALUES (2123,'Daugavpils City',120);
INSERT  IGNORE INTO `regions` VALUES (2124,'Dobeles',120);
INSERT  IGNORE INTO `regions` VALUES (2125,'Gulbenes',120);
INSERT  IGNORE INTO `regions` VALUES (2126,'Jekabspils',120);
INSERT  IGNORE INTO `regions` VALUES (2127,'Jelgava',120);
INSERT  IGNORE INTO `regions` VALUES (2128,'Jelgavas',120);
INSERT  IGNORE INTO `regions` VALUES (2129,'Jurmala City',120);
INSERT  IGNORE INTO `regions` VALUES (2130,'Kraslavas',120);
INSERT  IGNORE INTO `regions` VALUES (2131,'Kuldigas',120);
INSERT  IGNORE INTO `regions` VALUES (2132,'Liepaja',120);
INSERT  IGNORE INTO `regions` VALUES (2133,'Liepajas',120);
INSERT  IGNORE INTO `regions` VALUES (2134,'Limbazhu',120);
INSERT  IGNORE INTO `regions` VALUES (2135,'Ludzas',120);
INSERT  IGNORE INTO `regions` VALUES (2136,'Madonas',120);
INSERT  IGNORE INTO `regions` VALUES (2137,'Ogres',120);
INSERT  IGNORE INTO `regions` VALUES (2138,'Preilu',120);
INSERT  IGNORE INTO `regions` VALUES (2139,'Rezekne',120);
INSERT  IGNORE INTO `regions` VALUES (2140,'Rezeknes',120);
INSERT  IGNORE INTO `regions` VALUES (2141,'Riga',120);
INSERT  IGNORE INTO `regions` VALUES (2142,'Rigas',120);
INSERT  IGNORE INTO `regions` VALUES (2143,'Saldus',120);
INSERT  IGNORE INTO `regions` VALUES (2144,'Talsu',120);
INSERT  IGNORE INTO `regions` VALUES (2145,'Tukuma',120);
INSERT  IGNORE INTO `regions` VALUES (2146,'Valkas',120);
INSERT  IGNORE INTO `regions` VALUES (2147,'Valmieras',120);
INSERT  IGNORE INTO `regions` VALUES (2148,'Ventspils',120);
INSERT  IGNORE INTO `regions` VALUES (2149,'Ventspils City',120);
INSERT  IGNORE INTO `regions` VALUES (2150,'Beirut',121);
INSERT  IGNORE INTO `regions` VALUES (2151,'Jabal Lubnan',121);
INSERT  IGNORE INTO `regions` VALUES (2152,'Mohafazat Liban-Nord',121);
INSERT  IGNORE INTO `regions` VALUES (2153,'Mohafazat Mont-Liban',121);
INSERT  IGNORE INTO `regions` VALUES (2154,'Sidon',121);
INSERT  IGNORE INTO `regions` VALUES (2155,'al-Biqa',121);
INSERT  IGNORE INTO `regions` VALUES (2156,'al-Janub',121);
INSERT  IGNORE INTO `regions` VALUES (2157,'an-Nabatiyah',121);
INSERT  IGNORE INTO `regions` VALUES (2158,'ash-Shamal',121);
INSERT  IGNORE INTO `regions` VALUES (2159,'Berea',122);
INSERT  IGNORE INTO `regions` VALUES (2160,'Butha-Buthe',122);
INSERT  IGNORE INTO `regions` VALUES (2161,'Leribe',122);
INSERT  IGNORE INTO `regions` VALUES (2162,'Mafeteng',122);
INSERT  IGNORE INTO `regions` VALUES (2163,'Maseru',122);
INSERT  IGNORE INTO `regions` VALUES (2164,'Mohale\'s Hoek',122);
INSERT  IGNORE INTO `regions` VALUES (2165,'Mokhotlong',122);
INSERT  IGNORE INTO `regions` VALUES (2166,'Qacha\'s Nek',122);
INSERT  IGNORE INTO `regions` VALUES (2167,'Quthing',122);
INSERT  IGNORE INTO `regions` VALUES (2168,'Thaba-Tseka',122);
INSERT  IGNORE INTO `regions` VALUES (2169,'Bomi',123);
INSERT  IGNORE INTO `regions` VALUES (2170,'Bong',123);
INSERT  IGNORE INTO `regions` VALUES (2171,'Grand Bassa',123);
INSERT  IGNORE INTO `regions` VALUES (2172,'Grand Cape Mount',123);
INSERT  IGNORE INTO `regions` VALUES (2173,'Grand Gedeh',123);
INSERT  IGNORE INTO `regions` VALUES (2174,'Loffa',123);
INSERT  IGNORE INTO `regions` VALUES (2175,'Margibi',123);
INSERT  IGNORE INTO `regions` VALUES (2176,'Maryland and Grand Kru',123);
INSERT  IGNORE INTO `regions` VALUES (2177,'Montserrado',123);
INSERT  IGNORE INTO `regions` VALUES (2178,'Nimba',123);
INSERT  IGNORE INTO `regions` VALUES (2179,'Rivercess',123);
INSERT  IGNORE INTO `regions` VALUES (2180,'Sinoe',123);
INSERT  IGNORE INTO `regions` VALUES (2181,'Ajdabiya',124);
INSERT  IGNORE INTO `regions` VALUES (2182,'Fezzan',124);
INSERT  IGNORE INTO `regions` VALUES (2183,'Banghazi',124);
INSERT  IGNORE INTO `regions` VALUES (2184,'Darnah',124);
INSERT  IGNORE INTO `regions` VALUES (2185,'Ghadamis',124);
INSERT  IGNORE INTO `regions` VALUES (2186,'Gharyan',124);
INSERT  IGNORE INTO `regions` VALUES (2187,'Misratah',124);
INSERT  IGNORE INTO `regions` VALUES (2188,'Murzuq',124);
INSERT  IGNORE INTO `regions` VALUES (2189,'Sabha',124);
INSERT  IGNORE INTO `regions` VALUES (2190,'Sawfajjin',124);
INSERT  IGNORE INTO `regions` VALUES (2191,'Surt',124);
INSERT  IGNORE INTO `regions` VALUES (2192,'Tarabulus',124);
INSERT  IGNORE INTO `regions` VALUES (2193,'Tarhunah',124);
INSERT  IGNORE INTO `regions` VALUES (2194,'Tripolitania',124);
INSERT  IGNORE INTO `regions` VALUES (2195,'Tubruq',124);
INSERT  IGNORE INTO `regions` VALUES (2196,'Yafran',124);
INSERT  IGNORE INTO `regions` VALUES (2197,'Zlitan',124);
INSERT  IGNORE INTO `regions` VALUES (2198,'al-\'Aziziyah',124);
INSERT  IGNORE INTO `regions` VALUES (2199,'al-Fatih',124);
INSERT  IGNORE INTO `regions` VALUES (2200,'al-Jabal al Akhdar',124);
INSERT  IGNORE INTO `regions` VALUES (2201,'al-Jufrah',124);
INSERT  IGNORE INTO `regions` VALUES (2202,'al-Khums',124);
INSERT  IGNORE INTO `regions` VALUES (2203,'al-Kufrah',124);
INSERT  IGNORE INTO `regions` VALUES (2204,'an-Nuqat al-Khams',124);
INSERT  IGNORE INTO `regions` VALUES (2205,'ash-Shati\'',124);
INSERT  IGNORE INTO `regions` VALUES (2206,'az-Zawiyah',124);
INSERT  IGNORE INTO `regions` VALUES (2207,'Balzers',125);
INSERT  IGNORE INTO `regions` VALUES (2208,'Eschen',125);
INSERT  IGNORE INTO `regions` VALUES (2209,'Gamprin',125);
INSERT  IGNORE INTO `regions` VALUES (2210,'Mauren',125);
INSERT  IGNORE INTO `regions` VALUES (2211,'Planken',125);
INSERT  IGNORE INTO `regions` VALUES (2212,'Ruggell',125);
INSERT  IGNORE INTO `regions` VALUES (2213,'Schaan',125);
INSERT  IGNORE INTO `regions` VALUES (2214,'Schellenberg',125);
INSERT  IGNORE INTO `regions` VALUES (2215,'Triesen',125);
INSERT  IGNORE INTO `regions` VALUES (2216,'Triesenberg',125);
INSERT  IGNORE INTO `regions` VALUES (2217,'Vaduz',125);
INSERT  IGNORE INTO `regions` VALUES (2218,'Alytaus',126);
INSERT  IGNORE INTO `regions` VALUES (2219,'Anyksciai',126);
INSERT  IGNORE INTO `regions` VALUES (2220,'Kauno',126);
INSERT  IGNORE INTO `regions` VALUES (2221,'Klaipedos',126);
INSERT  IGNORE INTO `regions` VALUES (2222,'Marijampoles',126);
INSERT  IGNORE INTO `regions` VALUES (2223,'Panevezhio',126);
INSERT  IGNORE INTO `regions` VALUES (2224,'Panevezys',126);
INSERT  IGNORE INTO `regions` VALUES (2225,'Shiauliu',126);
INSERT  IGNORE INTO `regions` VALUES (2226,'Taurages',126);
INSERT  IGNORE INTO `regions` VALUES (2227,'Telshiu',126);
INSERT  IGNORE INTO `regions` VALUES (2228,'Telsiai',126);
INSERT  IGNORE INTO `regions` VALUES (2229,'Utenos',126);
INSERT  IGNORE INTO `regions` VALUES (2230,'Vilniaus',126);
INSERT  IGNORE INTO `regions` VALUES (2231,'Capellen',127);
INSERT  IGNORE INTO `regions` VALUES (2232,'Clervaux',127);
INSERT  IGNORE INTO `regions` VALUES (2233,'Diekirch',127);
INSERT  IGNORE INTO `regions` VALUES (2234,'Echternach',127);
INSERT  IGNORE INTO `regions` VALUES (2235,'Esch-sur-Alzette',127);
INSERT  IGNORE INTO `regions` VALUES (2236,'Grevenmacher',127);
INSERT  IGNORE INTO `regions` VALUES (2237,'Luxembourg',127);
INSERT  IGNORE INTO `regions` VALUES (2238,'Mersch',127);
INSERT  IGNORE INTO `regions` VALUES (2239,'Redange',127);
INSERT  IGNORE INTO `regions` VALUES (2240,'Remich',127);
INSERT  IGNORE INTO `regions` VALUES (2241,'Vianden',127);
INSERT  IGNORE INTO `regions` VALUES (2242,'Wiltz',127);
INSERT  IGNORE INTO `regions` VALUES (2243,'Macau',128);
INSERT  IGNORE INTO `regions` VALUES (2244,'Berovo',129);
INSERT  IGNORE INTO `regions` VALUES (2245,'Bitola',129);
INSERT  IGNORE INTO `regions` VALUES (2246,'Brod',129);
INSERT  IGNORE INTO `regions` VALUES (2247,'Debar',129);
INSERT  IGNORE INTO `regions` VALUES (2248,'Delchevo',129);
INSERT  IGNORE INTO `regions` VALUES (2249,'Demir Hisar',129);
INSERT  IGNORE INTO `regions` VALUES (2250,'Gevgelija',129);
INSERT  IGNORE INTO `regions` VALUES (2251,'Gostivar',129);
INSERT  IGNORE INTO `regions` VALUES (2252,'Kavadarci',129);
INSERT  IGNORE INTO `regions` VALUES (2253,'Kichevo',129);
INSERT  IGNORE INTO `regions` VALUES (2254,'Kochani',129);
INSERT  IGNORE INTO `regions` VALUES (2255,'Kratovo',129);
INSERT  IGNORE INTO `regions` VALUES (2256,'Kriva Palanka',129);
INSERT  IGNORE INTO `regions` VALUES (2257,'Krushevo',129);
INSERT  IGNORE INTO `regions` VALUES (2258,'Kumanovo',129);
INSERT  IGNORE INTO `regions` VALUES (2259,'Negotino',129);
INSERT  IGNORE INTO `regions` VALUES (2260,'Ohrid',129);
INSERT  IGNORE INTO `regions` VALUES (2261,'Prilep',129);
INSERT  IGNORE INTO `regions` VALUES (2262,'Probishtip',129);
INSERT  IGNORE INTO `regions` VALUES (2263,'Radovish',129);
INSERT  IGNORE INTO `regions` VALUES (2264,'Resen',129);
INSERT  IGNORE INTO `regions` VALUES (2265,'Shtip',129);
INSERT  IGNORE INTO `regions` VALUES (2266,'Skopje',129);
INSERT  IGNORE INTO `regions` VALUES (2267,'Struga',129);
INSERT  IGNORE INTO `regions` VALUES (2268,'Strumica',129);
INSERT  IGNORE INTO `regions` VALUES (2269,'Sveti Nikole',129);
INSERT  IGNORE INTO `regions` VALUES (2270,'Tetovo',129);
INSERT  IGNORE INTO `regions` VALUES (2271,'Valandovo',129);
INSERT  IGNORE INTO `regions` VALUES (2272,'Veles',129);
INSERT  IGNORE INTO `regions` VALUES (2273,'Vinica',129);
INSERT  IGNORE INTO `regions` VALUES (2274,'Antananarivo',130);
INSERT  IGNORE INTO `regions` VALUES (2275,'Antsiranana',130);
INSERT  IGNORE INTO `regions` VALUES (2276,'Fianarantsoa',130);
INSERT  IGNORE INTO `regions` VALUES (2277,'Mahajanga',130);
INSERT  IGNORE INTO `regions` VALUES (2278,'Toamasina',130);
INSERT  IGNORE INTO `regions` VALUES (2279,'Toliary',130);
INSERT  IGNORE INTO `regions` VALUES (2280,'Balaka',131);
INSERT  IGNORE INTO `regions` VALUES (2281,'Blantyre City',131);
INSERT  IGNORE INTO `regions` VALUES (2282,'Chikwawa',131);
INSERT  IGNORE INTO `regions` VALUES (2283,'Chiradzulu',131);
INSERT  IGNORE INTO `regions` VALUES (2284,'Chitipa',131);
INSERT  IGNORE INTO `regions` VALUES (2285,'Dedza',131);
INSERT  IGNORE INTO `regions` VALUES (2286,'Dowa',131);
INSERT  IGNORE INTO `regions` VALUES (2287,'Karonga',131);
INSERT  IGNORE INTO `regions` VALUES (2288,'Kasungu',131);
INSERT  IGNORE INTO `regions` VALUES (2289,'Lilongwe City',131);
INSERT  IGNORE INTO `regions` VALUES (2290,'Machinga',131);
INSERT  IGNORE INTO `regions` VALUES (2291,'Mangochi',131);
INSERT  IGNORE INTO `regions` VALUES (2292,'Mchinji',131);
INSERT  IGNORE INTO `regions` VALUES (2293,'Mulanje',131);
INSERT  IGNORE INTO `regions` VALUES (2294,'Mwanza',131);
INSERT  IGNORE INTO `regions` VALUES (2295,'Mzimba',131);
INSERT  IGNORE INTO `regions` VALUES (2296,'Mzuzu City',131);
INSERT  IGNORE INTO `regions` VALUES (2297,'Nkhata Bay',131);
INSERT  IGNORE INTO `regions` VALUES (2298,'Nkhotakota',131);
INSERT  IGNORE INTO `regions` VALUES (2299,'Nsanje',131);
INSERT  IGNORE INTO `regions` VALUES (2300,'Ntcheu',131);
INSERT  IGNORE INTO `regions` VALUES (2301,'Ntchisi',131);
INSERT  IGNORE INTO `regions` VALUES (2302,'Phalombe',131);
INSERT  IGNORE INTO `regions` VALUES (2303,'Rumphi',131);
INSERT  IGNORE INTO `regions` VALUES (2304,'Salima',131);
INSERT  IGNORE INTO `regions` VALUES (2305,'Thyolo',131);
INSERT  IGNORE INTO `regions` VALUES (2306,'Zomba Municipality',131);
INSERT  IGNORE INTO `regions` VALUES (2307,'Johor',132);
INSERT  IGNORE INTO `regions` VALUES (2308,'Kedah',132);
INSERT  IGNORE INTO `regions` VALUES (2309,'Kelantan',132);
INSERT  IGNORE INTO `regions` VALUES (2310,'Kuala Lumpur',132);
INSERT  IGNORE INTO `regions` VALUES (2311,'Labuan',132);
INSERT  IGNORE INTO `regions` VALUES (2312,'Melaka',132);
INSERT  IGNORE INTO `regions` VALUES (2313,'Negeri Johor',132);
INSERT  IGNORE INTO `regions` VALUES (2314,'Negeri Sembilan',132);
INSERT  IGNORE INTO `regions` VALUES (2315,'Pahang',132);
INSERT  IGNORE INTO `regions` VALUES (2316,'Penang',132);
INSERT  IGNORE INTO `regions` VALUES (2317,'Perak',132);
INSERT  IGNORE INTO `regions` VALUES (2318,'Perlis',132);
INSERT  IGNORE INTO `regions` VALUES (2319,'Pulau Pinang',132);
INSERT  IGNORE INTO `regions` VALUES (2320,'Sabah',132);
INSERT  IGNORE INTO `regions` VALUES (2321,'Sarawak',132);
INSERT  IGNORE INTO `regions` VALUES (2322,'Selangor',132);
INSERT  IGNORE INTO `regions` VALUES (2323,'Sembilan',132);
INSERT  IGNORE INTO `regions` VALUES (2324,'Terengganu',132);
INSERT  IGNORE INTO `regions` VALUES (2325,'Alif Alif',133);
INSERT  IGNORE INTO `regions` VALUES (2326,'Alif Dhaal',133);
INSERT  IGNORE INTO `regions` VALUES (2327,'Baa',133);
INSERT  IGNORE INTO `regions` VALUES (2328,'Dhaal',133);
INSERT  IGNORE INTO `regions` VALUES (2329,'Faaf',133);
INSERT  IGNORE INTO `regions` VALUES (2330,'Gaaf Alif',133);
INSERT  IGNORE INTO `regions` VALUES (2331,'Gaaf Dhaal',133);
INSERT  IGNORE INTO `regions` VALUES (2332,'Ghaviyani',133);
INSERT  IGNORE INTO `regions` VALUES (2333,'Haa Alif',133);
INSERT  IGNORE INTO `regions` VALUES (2334,'Haa Dhaal',133);
INSERT  IGNORE INTO `regions` VALUES (2335,'Kaaf',133);
INSERT  IGNORE INTO `regions` VALUES (2336,'Laam',133);
INSERT  IGNORE INTO `regions` VALUES (2337,'Lhaviyani',133);
INSERT  IGNORE INTO `regions` VALUES (2338,'Male',133);
INSERT  IGNORE INTO `regions` VALUES (2339,'Miim',133);
INSERT  IGNORE INTO `regions` VALUES (2340,'Nuun',133);
INSERT  IGNORE INTO `regions` VALUES (2341,'Raa',133);
INSERT  IGNORE INTO `regions` VALUES (2342,'Shaviyani',133);
INSERT  IGNORE INTO `regions` VALUES (2343,'Siin',133);
INSERT  IGNORE INTO `regions` VALUES (2344,'Thaa',133);
INSERT  IGNORE INTO `regions` VALUES (2345,'Vaav',133);
INSERT  IGNORE INTO `regions` VALUES (2346,'Bamako',134);
INSERT  IGNORE INTO `regions` VALUES (2347,'Gao',134);
INSERT  IGNORE INTO `regions` VALUES (2348,'Kayes',134);
INSERT  IGNORE INTO `regions` VALUES (2349,'Kidal',134);
INSERT  IGNORE INTO `regions` VALUES (2350,'Koulikoro',134);
INSERT  IGNORE INTO `regions` VALUES (2351,'Mopti',134);
INSERT  IGNORE INTO `regions` VALUES (2352,'Segou',134);
INSERT  IGNORE INTO `regions` VALUES (2353,'Sikasso',134);
INSERT  IGNORE INTO `regions` VALUES (2354,'Tombouctou',134);
INSERT  IGNORE INTO `regions` VALUES (2355,'Gozo and Comino',135);
INSERT  IGNORE INTO `regions` VALUES (2356,'Inner Harbour',135);
INSERT  IGNORE INTO `regions` VALUES (2357,'Northern',135);
INSERT  IGNORE INTO `regions` VALUES (2358,'Outer Harbour',135);
INSERT  IGNORE INTO `regions` VALUES (2359,'South Eastern',135);
INSERT  IGNORE INTO `regions` VALUES (2360,'Valletta',135);
INSERT  IGNORE INTO `regions` VALUES (2361,'Western',135);
INSERT  IGNORE INTO `regions` VALUES (2362,'Castletown',136);
INSERT  IGNORE INTO `regions` VALUES (2363,'Douglas',136);
INSERT  IGNORE INTO `regions` VALUES (2364,'Laxey',136);
INSERT  IGNORE INTO `regions` VALUES (2365,'Onchan',136);
INSERT  IGNORE INTO `regions` VALUES (2366,'Peel',136);
INSERT  IGNORE INTO `regions` VALUES (2367,'Port Erin',136);
INSERT  IGNORE INTO `regions` VALUES (2368,'Port Saint Mary',136);
INSERT  IGNORE INTO `regions` VALUES (2369,'Ramsey',136);
INSERT  IGNORE INTO `regions` VALUES (2370,'Ailinlaplap',137);
INSERT  IGNORE INTO `regions` VALUES (2371,'Ailuk',137);
INSERT  IGNORE INTO `regions` VALUES (2372,'Arno',137);
INSERT  IGNORE INTO `regions` VALUES (2373,'Aur',137);
INSERT  IGNORE INTO `regions` VALUES (2374,'Bikini',137);
INSERT  IGNORE INTO `regions` VALUES (2375,'Ebon',137);
INSERT  IGNORE INTO `regions` VALUES (2376,'Enewetak',137);
INSERT  IGNORE INTO `regions` VALUES (2377,'Jabat',137);
INSERT  IGNORE INTO `regions` VALUES (2378,'Jaluit',137);
INSERT  IGNORE INTO `regions` VALUES (2379,'Kili',137);
INSERT  IGNORE INTO `regions` VALUES (2380,'Kwajalein',137);
INSERT  IGNORE INTO `regions` VALUES (2381,'Lae',137);
INSERT  IGNORE INTO `regions` VALUES (2382,'Lib',137);
INSERT  IGNORE INTO `regions` VALUES (2383,'Likiep',137);
INSERT  IGNORE INTO `regions` VALUES (2384,'Majuro',137);
INSERT  IGNORE INTO `regions` VALUES (2385,'Maloelap',137);
INSERT  IGNORE INTO `regions` VALUES (2386,'Mejit',137);
INSERT  IGNORE INTO `regions` VALUES (2387,'Mili',137);
INSERT  IGNORE INTO `regions` VALUES (2388,'Namorik',137);
INSERT  IGNORE INTO `regions` VALUES (2389,'Namu',137);
INSERT  IGNORE INTO `regions` VALUES (2390,'Rongelap',137);
INSERT  IGNORE INTO `regions` VALUES (2391,'Ujae',137);
INSERT  IGNORE INTO `regions` VALUES (2392,'Utrik',137);
INSERT  IGNORE INTO `regions` VALUES (2393,'Wotho',137);
INSERT  IGNORE INTO `regions` VALUES (2394,'Wotje',137);
INSERT  IGNORE INTO `regions` VALUES (2395,'Fort-de-France',138);
INSERT  IGNORE INTO `regions` VALUES (2396,'La Trinite',138);
INSERT  IGNORE INTO `regions` VALUES (2397,'Le Marin',138);
INSERT  IGNORE INTO `regions` VALUES (2398,'Saint-Pierre',138);
INSERT  IGNORE INTO `regions` VALUES (2399,'Adrar',139);
INSERT  IGNORE INTO `regions` VALUES (2400,'Assaba',139);
INSERT  IGNORE INTO `regions` VALUES (2401,'Brakna',139);
INSERT  IGNORE INTO `regions` VALUES (2402,'Dhakhlat Nawadibu',139);
INSERT  IGNORE INTO `regions` VALUES (2403,'Hudh-al-Gharbi',139);
INSERT  IGNORE INTO `regions` VALUES (2404,'Hudh-ash-Sharqi',139);
INSERT  IGNORE INTO `regions` VALUES (2405,'Inshiri',139);
INSERT  IGNORE INTO `regions` VALUES (2406,'Nawakshut',139);
INSERT  IGNORE INTO `regions` VALUES (2407,'Qidimagha',139);
INSERT  IGNORE INTO `regions` VALUES (2408,'Qurqul',139);
INSERT  IGNORE INTO `regions` VALUES (2409,'Taqant',139);
INSERT  IGNORE INTO `regions` VALUES (2410,'Tiris Zammur',139);
INSERT  IGNORE INTO `regions` VALUES (2411,'Trarza',139);
INSERT  IGNORE INTO `regions` VALUES (2412,'Black River',140);
INSERT  IGNORE INTO `regions` VALUES (2413,'Eau Coulee',140);
INSERT  IGNORE INTO `regions` VALUES (2414,'Flacq',140);
INSERT  IGNORE INTO `regions` VALUES (2415,'Floreal',140);
INSERT  IGNORE INTO `regions` VALUES (2416,'Grand Port',140);
INSERT  IGNORE INTO `regions` VALUES (2417,'Moka',140);
INSERT  IGNORE INTO `regions` VALUES (2418,'Pamplempousses',140);
INSERT  IGNORE INTO `regions` VALUES (2419,'Plaines Wilhelm',140);
INSERT  IGNORE INTO `regions` VALUES (2420,'Port Louis',140);
INSERT  IGNORE INTO `regions` VALUES (2421,'Riviere du Rempart',140);
INSERT  IGNORE INTO `regions` VALUES (2422,'Rodrigues',140);
INSERT  IGNORE INTO `regions` VALUES (2423,'Rose Hill',140);
INSERT  IGNORE INTO `regions` VALUES (2424,'Savanne',140);
INSERT  IGNORE INTO `regions` VALUES (2425,'Mayotte',141);
INSERT  IGNORE INTO `regions` VALUES (2426,'Pamanzi',141);
INSERT  IGNORE INTO `regions` VALUES (2427,'Aguascalientes',142);
INSERT  IGNORE INTO `regions` VALUES (2428,'Baja California',142);
INSERT  IGNORE INTO `regions` VALUES (2429,'Baja California Sur',142);
INSERT  IGNORE INTO `regions` VALUES (2430,'Campeche',142);
INSERT  IGNORE INTO `regions` VALUES (2431,'Chiapas',142);
INSERT  IGNORE INTO `regions` VALUES (2432,'Chihuahua',142);
INSERT  IGNORE INTO `regions` VALUES (2433,'Coahuila',142);
INSERT  IGNORE INTO `regions` VALUES (2434,'Colima',142);
INSERT  IGNORE INTO `regions` VALUES (2435,'Distrito Federal',142);
INSERT  IGNORE INTO `regions` VALUES (2436,'Durango',142);
INSERT  IGNORE INTO `regions` VALUES (2437,'Estado de Mexico',142);
INSERT  IGNORE INTO `regions` VALUES (2438,'Guanajuato',142);
INSERT  IGNORE INTO `regions` VALUES (2439,'Guerrero',142);
INSERT  IGNORE INTO `regions` VALUES (2440,'Hidalgo',142);
INSERT  IGNORE INTO `regions` VALUES (2441,'Jalisco',142);
INSERT  IGNORE INTO `regions` VALUES (2442,'Mexico',142);
INSERT  IGNORE INTO `regions` VALUES (2443,'Michoacan',142);
INSERT  IGNORE INTO `regions` VALUES (2444,'Morelos',142);
INSERT  IGNORE INTO `regions` VALUES (2445,'Nayarit',142);
INSERT  IGNORE INTO `regions` VALUES (2446,'Nuevo Leon',142);
INSERT  IGNORE INTO `regions` VALUES (2447,'Oaxaca',142);
INSERT  IGNORE INTO `regions` VALUES (2448,'Puebla',142);
INSERT  IGNORE INTO `regions` VALUES (2449,'Queretaro',142);
INSERT  IGNORE INTO `regions` VALUES (2450,'Quintana Roo',142);
INSERT  IGNORE INTO `regions` VALUES (2451,'San Luis Potosi',142);
INSERT  IGNORE INTO `regions` VALUES (2452,'Sinaloa',142);
INSERT  IGNORE INTO `regions` VALUES (2453,'Sonora',142);
INSERT  IGNORE INTO `regions` VALUES (2454,'Tabasco',142);
INSERT  IGNORE INTO `regions` VALUES (2455,'Tamaulipas',142);
INSERT  IGNORE INTO `regions` VALUES (2456,'Tlaxcala',142);
INSERT  IGNORE INTO `regions` VALUES (2457,'Veracruz',142);
INSERT  IGNORE INTO `regions` VALUES (2458,'Yucatan',142);
INSERT  IGNORE INTO `regions` VALUES (2459,'Zacatecas',142);
INSERT  IGNORE INTO `regions` VALUES (2460,'Chuuk',143);
INSERT  IGNORE INTO `regions` VALUES (2461,'Kusaie',143);
INSERT  IGNORE INTO `regions` VALUES (2462,'Pohnpei',143);
INSERT  IGNORE INTO `regions` VALUES (2463,'Yap',143);
INSERT  IGNORE INTO `regions` VALUES (2464,'Balti',144);
INSERT  IGNORE INTO `regions` VALUES (2465,'Cahul',144);
INSERT  IGNORE INTO `regions` VALUES (2466,'Chisinau',144);
INSERT  IGNORE INTO `regions` VALUES (2467,'Chisinau Oras',144);
INSERT  IGNORE INTO `regions` VALUES (2468,'Edinet',144);
INSERT  IGNORE INTO `regions` VALUES (2469,'Gagauzia',144);
INSERT  IGNORE INTO `regions` VALUES (2470,'Lapusna',144);
INSERT  IGNORE INTO `regions` VALUES (2471,'Orhei',144);
INSERT  IGNORE INTO `regions` VALUES (2472,'Soroca',144);
INSERT  IGNORE INTO `regions` VALUES (2473,'Taraclia',144);
INSERT  IGNORE INTO `regions` VALUES (2474,'Tighina',144);
INSERT  IGNORE INTO `regions` VALUES (2475,'Transnistria',144);
INSERT  IGNORE INTO `regions` VALUES (2476,'Ungheni',144);
INSERT  IGNORE INTO `regions` VALUES (2477,'Fontvieille',145);
INSERT  IGNORE INTO `regions` VALUES (2478,'La Condamine',145);
INSERT  IGNORE INTO `regions` VALUES (2479,'Monaco-Ville',145);
INSERT  IGNORE INTO `regions` VALUES (2480,'Monte Carlo',145);
INSERT  IGNORE INTO `regions` VALUES (2481,'Arhangaj',146);
INSERT  IGNORE INTO `regions` VALUES (2482,'Bajan-Olgij',146);
INSERT  IGNORE INTO `regions` VALUES (2483,'Bajanhongor',146);
INSERT  IGNORE INTO `regions` VALUES (2484,'Bulgan',146);
INSERT  IGNORE INTO `regions` VALUES (2485,'Darhan-Uul',146);
INSERT  IGNORE INTO `regions` VALUES (2486,'Dornod',146);
INSERT  IGNORE INTO `regions` VALUES (2487,'Dornogovi',146);
INSERT  IGNORE INTO `regions` VALUES (2488,'Dundgovi',146);
INSERT  IGNORE INTO `regions` VALUES (2489,'Govi-Altaj',146);
INSERT  IGNORE INTO `regions` VALUES (2490,'Govisumber',146);
INSERT  IGNORE INTO `regions` VALUES (2491,'Hentij',146);
INSERT  IGNORE INTO `regions` VALUES (2492,'Hovd',146);
INSERT  IGNORE INTO `regions` VALUES (2493,'Hovsgol',146);
INSERT  IGNORE INTO `regions` VALUES (2494,'Omnogovi',146);
INSERT  IGNORE INTO `regions` VALUES (2495,'Orhon',146);
INSERT  IGNORE INTO `regions` VALUES (2496,'Ovorhangaj',146);
INSERT  IGNORE INTO `regions` VALUES (2497,'Selenge',146);
INSERT  IGNORE INTO `regions` VALUES (2498,'Suhbaatar',146);
INSERT  IGNORE INTO `regions` VALUES (2499,'Tov',146);
INSERT  IGNORE INTO `regions` VALUES (2500,'Ulaanbaatar',146);
INSERT  IGNORE INTO `regions` VALUES (2501,'Uvs',146);
INSERT  IGNORE INTO `regions` VALUES (2502,'Zavhan',146);
INSERT  IGNORE INTO `regions` VALUES (2503,'Montserrat',147);
INSERT  IGNORE INTO `regions` VALUES (2504,'Agadir',148);
INSERT  IGNORE INTO `regions` VALUES (2505,'Casablanca',148);
INSERT  IGNORE INTO `regions` VALUES (2506,'Chaouia-Ouardigha',148);
INSERT  IGNORE INTO `regions` VALUES (2507,'Doukkala-Abda',148);
INSERT  IGNORE INTO `regions` VALUES (2508,'Fes-Boulemane',148);
INSERT  IGNORE INTO `regions` VALUES (2509,'Gharb-Chrarda-Beni Hssen',148);
INSERT  IGNORE INTO `regions` VALUES (2510,'Guelmim',148);
INSERT  IGNORE INTO `regions` VALUES (2511,'Kenitra',148);
INSERT  IGNORE INTO `regions` VALUES (2512,'Marrakech-Tensift-Al Haouz',148);
INSERT  IGNORE INTO `regions` VALUES (2513,'Meknes-Tafilalet',148);
INSERT  IGNORE INTO `regions` VALUES (2514,'Oriental',148);
INSERT  IGNORE INTO `regions` VALUES (2515,'Oujda',148);
INSERT  IGNORE INTO `regions` VALUES (2516,'Province de Tanger',148);
INSERT  IGNORE INTO `regions` VALUES (2517,'Rabat-Sale-Zammour-Zaer',148);
INSERT  IGNORE INTO `regions` VALUES (2518,'Sala Al Jadida',148);
INSERT  IGNORE INTO `regions` VALUES (2519,'Settat',148);
INSERT  IGNORE INTO `regions` VALUES (2520,'Souss Massa-Draa',148);
INSERT  IGNORE INTO `regions` VALUES (2521,'Tadla-Azilal',148);
INSERT  IGNORE INTO `regions` VALUES (2522,'Tangier-Tetouan',148);
INSERT  IGNORE INTO `regions` VALUES (2523,'Taza-Al Hoceima-Taounate',148);
INSERT  IGNORE INTO `regions` VALUES (2524,'Wilaya de Casablanca',148);
INSERT  IGNORE INTO `regions` VALUES (2525,'Wilaya de Rabat-Sale',148);
INSERT  IGNORE INTO `regions` VALUES (2526,'Cabo Delgado',149);
INSERT  IGNORE INTO `regions` VALUES (2527,'Gaza',149);
INSERT  IGNORE INTO `regions` VALUES (2528,'Inhambane',149);
INSERT  IGNORE INTO `regions` VALUES (2529,'Manica',149);
INSERT  IGNORE INTO `regions` VALUES (2530,'Maputo',149);
INSERT  IGNORE INTO `regions` VALUES (2531,'Maputo Provincia',149);
INSERT  IGNORE INTO `regions` VALUES (2532,'Nampula',149);
INSERT  IGNORE INTO `regions` VALUES (2533,'Niassa',149);
INSERT  IGNORE INTO `regions` VALUES (2534,'Sofala',149);
INSERT  IGNORE INTO `regions` VALUES (2535,'Tete',149);
INSERT  IGNORE INTO `regions` VALUES (2536,'Zambezia',149);
INSERT  IGNORE INTO `regions` VALUES (2537,'Ayeyarwady',150);
INSERT  IGNORE INTO `regions` VALUES (2538,'Bago',150);
INSERT  IGNORE INTO `regions` VALUES (2539,'Chin',150);
INSERT  IGNORE INTO `regions` VALUES (2540,'Kachin',150);
INSERT  IGNORE INTO `regions` VALUES (2541,'Kayah',150);
INSERT  IGNORE INTO `regions` VALUES (2542,'Kayin',150);
INSERT  IGNORE INTO `regions` VALUES (2543,'Magway',150);
INSERT  IGNORE INTO `regions` VALUES (2544,'Mandalay',150);
INSERT  IGNORE INTO `regions` VALUES (2545,'Mon',150);
INSERT  IGNORE INTO `regions` VALUES (2546,'Nay Pyi Taw',150);
INSERT  IGNORE INTO `regions` VALUES (2547,'Rakhine',150);
INSERT  IGNORE INTO `regions` VALUES (2548,'Sagaing',150);
INSERT  IGNORE INTO `regions` VALUES (2549,'Shan',150);
INSERT  IGNORE INTO `regions` VALUES (2550,'Tanintharyi',150);
INSERT  IGNORE INTO `regions` VALUES (2551,'Yangon',150);
INSERT  IGNORE INTO `regions` VALUES (2552,'Caprivi',151);
INSERT  IGNORE INTO `regions` VALUES (2553,'Erongo',151);
INSERT  IGNORE INTO `regions` VALUES (2554,'Hardap',151);
INSERT  IGNORE INTO `regions` VALUES (2555,'Karas',151);
INSERT  IGNORE INTO `regions` VALUES (2556,'Kavango',151);
INSERT  IGNORE INTO `regions` VALUES (2557,'Khomas',151);
INSERT  IGNORE INTO `regions` VALUES (2558,'Kunene',151);
INSERT  IGNORE INTO `regions` VALUES (2559,'Ohangwena',151);
INSERT  IGNORE INTO `regions` VALUES (2560,'Omaheke',151);
INSERT  IGNORE INTO `regions` VALUES (2561,'Omusati',151);
INSERT  IGNORE INTO `regions` VALUES (2562,'Oshana',151);
INSERT  IGNORE INTO `regions` VALUES (2563,'Oshikoto',151);
INSERT  IGNORE INTO `regions` VALUES (2564,'Otjozondjupa',151);
INSERT  IGNORE INTO `regions` VALUES (2565,'Yaren',152);
INSERT  IGNORE INTO `regions` VALUES (2566,'Bagmati',153);
INSERT  IGNORE INTO `regions` VALUES (2567,'Bheri',153);
INSERT  IGNORE INTO `regions` VALUES (2568,'Dhawalagiri',153);
INSERT  IGNORE INTO `regions` VALUES (2569,'Gandaki',153);
INSERT  IGNORE INTO `regions` VALUES (2570,'Janakpur',153);
INSERT  IGNORE INTO `regions` VALUES (2571,'Karnali',153);
INSERT  IGNORE INTO `regions` VALUES (2572,'Koshi',153);
INSERT  IGNORE INTO `regions` VALUES (2573,'Lumbini',153);
INSERT  IGNORE INTO `regions` VALUES (2574,'Mahakali',153);
INSERT  IGNORE INTO `regions` VALUES (2575,'Mechi',153);
INSERT  IGNORE INTO `regions` VALUES (2576,'Narayani',153);
INSERT  IGNORE INTO `regions` VALUES (2577,'Rapti',153);
INSERT  IGNORE INTO `regions` VALUES (2578,'Sagarmatha',153);
INSERT  IGNORE INTO `regions` VALUES (2579,'Seti',153);
INSERT  IGNORE INTO `regions` VALUES (2580,'Bonaire',154);
INSERT  IGNORE INTO `regions` VALUES (2581,'Curacao',154);
INSERT  IGNORE INTO `regions` VALUES (2582,'Saba',154);
INSERT  IGNORE INTO `regions` VALUES (2583,'Sint Eustatius',154);
INSERT  IGNORE INTO `regions` VALUES (2584,'Sint Maarten',154);
INSERT  IGNORE INTO `regions` VALUES (2585,'Amsterdam',155);
INSERT  IGNORE INTO `regions` VALUES (2586,'Benelux',155);
INSERT  IGNORE INTO `regions` VALUES (2587,'Drenthe',155);
INSERT  IGNORE INTO `regions` VALUES (2588,'Flevoland',155);
INSERT  IGNORE INTO `regions` VALUES (2589,'Friesland',155);
INSERT  IGNORE INTO `regions` VALUES (2590,'Gelderland',155);
INSERT  IGNORE INTO `regions` VALUES (2591,'Groningen',155);
INSERT  IGNORE INTO `regions` VALUES (2592,'Limburg',155);
INSERT  IGNORE INTO `regions` VALUES (2593,'Noord-Brabant',155);
INSERT  IGNORE INTO `regions` VALUES (2594,'Noord-Holland',155);
INSERT  IGNORE INTO `regions` VALUES (2595,'Overijssel',155);
INSERT  IGNORE INTO `regions` VALUES (2596,'South Holland',155);
INSERT  IGNORE INTO `regions` VALUES (2597,'Utrecht',155);
INSERT  IGNORE INTO `regions` VALUES (2598,'Zeeland',155);
INSERT  IGNORE INTO `regions` VALUES (2599,'Zuid-Holland',155);
INSERT  IGNORE INTO `regions` VALUES (2600,'Iles',156);
INSERT  IGNORE INTO `regions` VALUES (2601,'Nord',156);
INSERT  IGNORE INTO `regions` VALUES (2602,'Sud',156);
INSERT  IGNORE INTO `regions` VALUES (2603,'Area Outside Region',157);
INSERT  IGNORE INTO `regions` VALUES (2604,'Auckland',157);
INSERT  IGNORE INTO `regions` VALUES (2605,'Bay of Plenty',157);
INSERT  IGNORE INTO `regions` VALUES (2606,'Canterbury',157);
INSERT  IGNORE INTO `regions` VALUES (2607,'Christchurch',157);
INSERT  IGNORE INTO `regions` VALUES (2608,'Gisborne',157);
INSERT  IGNORE INTO `regions` VALUES (2609,'Hawke\'s Bay',157);
INSERT  IGNORE INTO `regions` VALUES (2610,'Manawatu-Wanganui',157);
INSERT  IGNORE INTO `regions` VALUES (2611,'Marlborough',157);
INSERT  IGNORE INTO `regions` VALUES (2612,'Nelson',157);
INSERT  IGNORE INTO `regions` VALUES (2613,'Northland',157);
INSERT  IGNORE INTO `regions` VALUES (2614,'Otago',157);
INSERT  IGNORE INTO `regions` VALUES (2615,'Rodney',157);
INSERT  IGNORE INTO `regions` VALUES (2616,'Southland',157);
INSERT  IGNORE INTO `regions` VALUES (2617,'Taranaki',157);
INSERT  IGNORE INTO `regions` VALUES (2618,'Tasman',157);
INSERT  IGNORE INTO `regions` VALUES (2619,'Waikato',157);
INSERT  IGNORE INTO `regions` VALUES (2620,'Wellington',157);
INSERT  IGNORE INTO `regions` VALUES (2621,'West Coast',157);
INSERT  IGNORE INTO `regions` VALUES (2622,'Atlantico Norte',158);
INSERT  IGNORE INTO `regions` VALUES (2623,'Atlantico Sur',158);
INSERT  IGNORE INTO `regions` VALUES (2624,'Boaco',158);
INSERT  IGNORE INTO `regions` VALUES (2625,'Carazo',158);
INSERT  IGNORE INTO `regions` VALUES (2626,'Chinandega',158);
INSERT  IGNORE INTO `regions` VALUES (2627,'Chontales',158);
INSERT  IGNORE INTO `regions` VALUES (2628,'Esteli',158);
INSERT  IGNORE INTO `regions` VALUES (2629,'Granada',158);
INSERT  IGNORE INTO `regions` VALUES (2630,'Jinotega',158);
INSERT  IGNORE INTO `regions` VALUES (2631,'Leon',158);
INSERT  IGNORE INTO `regions` VALUES (2632,'Madriz',158);
INSERT  IGNORE INTO `regions` VALUES (2633,'Managua',158);
INSERT  IGNORE INTO `regions` VALUES (2634,'Masaya',158);
INSERT  IGNORE INTO `regions` VALUES (2635,'Matagalpa',158);
INSERT  IGNORE INTO `regions` VALUES (2636,'Nueva Segovia',158);
INSERT  IGNORE INTO `regions` VALUES (2637,'Rio San Juan',158);
INSERT  IGNORE INTO `regions` VALUES (2638,'Rivas',158);
INSERT  IGNORE INTO `regions` VALUES (2639,'Agadez',159);
INSERT  IGNORE INTO `regions` VALUES (2640,'Diffa',159);
INSERT  IGNORE INTO `regions` VALUES (2641,'Dosso',159);
INSERT  IGNORE INTO `regions` VALUES (2642,'Maradi',159);
INSERT  IGNORE INTO `regions` VALUES (2643,'Niamey',159);
INSERT  IGNORE INTO `regions` VALUES (2644,'Tahoua',159);
INSERT  IGNORE INTO `regions` VALUES (2645,'Tillabery',159);
INSERT  IGNORE INTO `regions` VALUES (2646,'Zinder',159);
INSERT  IGNORE INTO `regions` VALUES (2647,'Abia',160);
INSERT  IGNORE INTO `regions` VALUES (2648,'Abuja Federal Capital Territor',160);
INSERT  IGNORE INTO `regions` VALUES (2649,'Adamawa',160);
INSERT  IGNORE INTO `regions` VALUES (2650,'Akwa Ibom',160);
INSERT  IGNORE INTO `regions` VALUES (2651,'Anambra',160);
INSERT  IGNORE INTO `regions` VALUES (2652,'Bauchi',160);
INSERT  IGNORE INTO `regions` VALUES (2653,'Bayelsa',160);
INSERT  IGNORE INTO `regions` VALUES (2654,'Benue',160);
INSERT  IGNORE INTO `regions` VALUES (2655,'Borno',160);
INSERT  IGNORE INTO `regions` VALUES (2656,'Cross River',160);
INSERT  IGNORE INTO `regions` VALUES (2657,'Delta',160);
INSERT  IGNORE INTO `regions` VALUES (2658,'Ebonyi',160);
INSERT  IGNORE INTO `regions` VALUES (2659,'Edo',160);
INSERT  IGNORE INTO `regions` VALUES (2660,'Ekiti',160);
INSERT  IGNORE INTO `regions` VALUES (2661,'Enugu',160);
INSERT  IGNORE INTO `regions` VALUES (2662,'Gombe',160);
INSERT  IGNORE INTO `regions` VALUES (2663,'Imo',160);
INSERT  IGNORE INTO `regions` VALUES (2664,'Jigawa',160);
INSERT  IGNORE INTO `regions` VALUES (2665,'Kaduna',160);
INSERT  IGNORE INTO `regions` VALUES (2666,'Kano',160);
INSERT  IGNORE INTO `regions` VALUES (2667,'Katsina',160);
INSERT  IGNORE INTO `regions` VALUES (2668,'Kebbi',160);
INSERT  IGNORE INTO `regions` VALUES (2669,'Kogi',160);
INSERT  IGNORE INTO `regions` VALUES (2670,'Kwara',160);
INSERT  IGNORE INTO `regions` VALUES (2671,'Lagos',160);
INSERT  IGNORE INTO `regions` VALUES (2672,'Nassarawa',160);
INSERT  IGNORE INTO `regions` VALUES (2673,'Niger',160);
INSERT  IGNORE INTO `regions` VALUES (2674,'Ogun',160);
INSERT  IGNORE INTO `regions` VALUES (2675,'Ondo',160);
INSERT  IGNORE INTO `regions` VALUES (2676,'Osun',160);
INSERT  IGNORE INTO `regions` VALUES (2677,'Oyo',160);
INSERT  IGNORE INTO `regions` VALUES (2678,'Plateau',160);
INSERT  IGNORE INTO `regions` VALUES (2679,'Rivers',160);
INSERT  IGNORE INTO `regions` VALUES (2680,'Sokoto',160);
INSERT  IGNORE INTO `regions` VALUES (2681,'Taraba',160);
INSERT  IGNORE INTO `regions` VALUES (2682,'Yobe',160);
INSERT  IGNORE INTO `regions` VALUES (2683,'Zamfara',160);
INSERT  IGNORE INTO `regions` VALUES (2684,'Niue',161);
INSERT  IGNORE INTO `regions` VALUES (2685,'Norfolk Island',162);
INSERT  IGNORE INTO `regions` VALUES (2686,'Northern Islands',163);
INSERT  IGNORE INTO `regions` VALUES (2687,'Rota',163);
INSERT  IGNORE INTO `regions` VALUES (2688,'Saipan',163);
INSERT  IGNORE INTO `regions` VALUES (2689,'Tinian',163);
INSERT  IGNORE INTO `regions` VALUES (2690,'Akershus',164);
INSERT  IGNORE INTO `regions` VALUES (2691,'Aust Agder',164);
INSERT  IGNORE INTO `regions` VALUES (2692,'Bergen',164);
INSERT  IGNORE INTO `regions` VALUES (2693,'Buskerud',164);
INSERT  IGNORE INTO `regions` VALUES (2694,'Finnmark',164);
INSERT  IGNORE INTO `regions` VALUES (2695,'Hedmark',164);
INSERT  IGNORE INTO `regions` VALUES (2696,'Hordaland',164);
INSERT  IGNORE INTO `regions` VALUES (2697,'Moere og Romsdal',164);
INSERT  IGNORE INTO `regions` VALUES (2698,'Nord Trondelag',164);
INSERT  IGNORE INTO `regions` VALUES (2699,'Nordland',164);
INSERT  IGNORE INTO `regions` VALUES (2700,'Oestfold',164);
INSERT  IGNORE INTO `regions` VALUES (2701,'Oppland',164);
INSERT  IGNORE INTO `regions` VALUES (2702,'Oslo',164);
INSERT  IGNORE INTO `regions` VALUES (2703,'Rogaland',164);
INSERT  IGNORE INTO `regions` VALUES (2704,'Soer Troendelag',164);
INSERT  IGNORE INTO `regions` VALUES (2705,'Sogn og Fjordane',164);
INSERT  IGNORE INTO `regions` VALUES (2706,'Stavern',164);
INSERT  IGNORE INTO `regions` VALUES (2707,'Sykkylven',164);
INSERT  IGNORE INTO `regions` VALUES (2708,'Telemark',164);
INSERT  IGNORE INTO `regions` VALUES (2709,'Troms',164);
INSERT  IGNORE INTO `regions` VALUES (2710,'Vest Agder',164);
INSERT  IGNORE INTO `regions` VALUES (2711,'Vestfold',164);
INSERT  IGNORE INTO `regions` VALUES (2712,'ÃƒÂ˜stfold',164);
INSERT  IGNORE INTO `regions` VALUES (2713,'Al Buraimi',165);
INSERT  IGNORE INTO `regions` VALUES (2714,'Dhufar',165);
INSERT  IGNORE INTO `regions` VALUES (2715,'Masqat',165);
INSERT  IGNORE INTO `regions` VALUES (2716,'Musandam',165);
INSERT  IGNORE INTO `regions` VALUES (2717,'Rusayl',165);
INSERT  IGNORE INTO `regions` VALUES (2718,'Wadi Kabir',165);
INSERT  IGNORE INTO `regions` VALUES (2719,'ad-Dakhiliyah',165);
INSERT  IGNORE INTO `regions` VALUES (2720,'adh-Dhahirah',165);
INSERT  IGNORE INTO `regions` VALUES (2721,'al-Batinah',165);
INSERT  IGNORE INTO `regions` VALUES (2722,'ash-Sharqiyah',165);
INSERT  IGNORE INTO `regions` VALUES (2723,'Baluchistan',166);
INSERT  IGNORE INTO `regions` VALUES (2724,'Federal Capital Area',166);
INSERT  IGNORE INTO `regions` VALUES (2725,'Federally administered Tribal ',166);
INSERT  IGNORE INTO `regions` VALUES (2726,'North-West Frontier',166);
INSERT  IGNORE INTO `regions` VALUES (2727,'Northern Areas',166);
INSERT  IGNORE INTO `regions` VALUES (2728,'Punjab',166);
INSERT  IGNORE INTO `regions` VALUES (2729,'Sind',166);
INSERT  IGNORE INTO `regions` VALUES (2730,'Aimeliik',167);
INSERT  IGNORE INTO `regions` VALUES (2731,'Airai',167);
INSERT  IGNORE INTO `regions` VALUES (2732,'Angaur',167);
INSERT  IGNORE INTO `regions` VALUES (2733,'Hatobohei',167);
INSERT  IGNORE INTO `regions` VALUES (2734,'Kayangel',167);
INSERT  IGNORE INTO `regions` VALUES (2735,'Koror',167);
INSERT  IGNORE INTO `regions` VALUES (2736,'Melekeok',167);
INSERT  IGNORE INTO `regions` VALUES (2737,'Ngaraard',167);
INSERT  IGNORE INTO `regions` VALUES (2738,'Ngardmau',167);
INSERT  IGNORE INTO `regions` VALUES (2739,'Ngaremlengui',167);
INSERT  IGNORE INTO `regions` VALUES (2740,'Ngatpang',167);
INSERT  IGNORE INTO `regions` VALUES (2741,'Ngchesar',167);
INSERT  IGNORE INTO `regions` VALUES (2742,'Ngerchelong',167);
INSERT  IGNORE INTO `regions` VALUES (2743,'Ngiwal',167);
INSERT  IGNORE INTO `regions` VALUES (2744,'Peleliu',167);
INSERT  IGNORE INTO `regions` VALUES (2745,'Sonsorol',167);
INSERT  IGNORE INTO `regions` VALUES (2746,'Ariha',168);
INSERT  IGNORE INTO `regions` VALUES (2747,'Bayt Lahm',168);
INSERT  IGNORE INTO `regions` VALUES (2748,'Bethlehem',168);
INSERT  IGNORE INTO `regions` VALUES (2749,'Dayr-al-Balah',168);
INSERT  IGNORE INTO `regions` VALUES (2750,'Ghazzah',168);
INSERT  IGNORE INTO `regions` VALUES (2751,'Ghazzah ash-Shamaliyah',168);
INSERT  IGNORE INTO `regions` VALUES (2752,'Janin',168);
INSERT  IGNORE INTO `regions` VALUES (2753,'Khan Yunis',168);
INSERT  IGNORE INTO `regions` VALUES (2754,'Nabulus',168);
INSERT  IGNORE INTO `regions` VALUES (2755,'Qalqilyah',168);
INSERT  IGNORE INTO `regions` VALUES (2756,'Rafah',168);
INSERT  IGNORE INTO `regions` VALUES (2757,'Ram Allah wal-Birah',168);
INSERT  IGNORE INTO `regions` VALUES (2758,'Salfit',168);
INSERT  IGNORE INTO `regions` VALUES (2759,'Tubas',168);
INSERT  IGNORE INTO `regions` VALUES (2760,'Tulkarm',168);
INSERT  IGNORE INTO `regions` VALUES (2761,'al-Khalil',168);
INSERT  IGNORE INTO `regions` VALUES (2762,'al-Quds',168);
INSERT  IGNORE INTO `regions` VALUES (2763,'Bocas del Toro',169);
INSERT  IGNORE INTO `regions` VALUES (2764,'Chiriqui',169);
INSERT  IGNORE INTO `regions` VALUES (2765,'Cocle',169);
INSERT  IGNORE INTO `regions` VALUES (2766,'Colon',169);
INSERT  IGNORE INTO `regions` VALUES (2767,'Darien',169);
INSERT  IGNORE INTO `regions` VALUES (2768,'Embera',169);
INSERT  IGNORE INTO `regions` VALUES (2769,'Herrera',169);
INSERT  IGNORE INTO `regions` VALUES (2770,'Kuna Yala',169);
INSERT  IGNORE INTO `regions` VALUES (2771,'Los Santos',169);
INSERT  IGNORE INTO `regions` VALUES (2772,'Ngobe Bugle',169);
INSERT  IGNORE INTO `regions` VALUES (2773,'Panama',169);
INSERT  IGNORE INTO `regions` VALUES (2774,'Veraguas',169);
INSERT  IGNORE INTO `regions` VALUES (2775,'East New Britain',170);
INSERT  IGNORE INTO `regions` VALUES (2776,'East Sepik',170);
INSERT  IGNORE INTO `regions` VALUES (2777,'Eastern Highlands',170);
INSERT  IGNORE INTO `regions` VALUES (2778,'Enga',170);
INSERT  IGNORE INTO `regions` VALUES (2779,'Fly River',170);
INSERT  IGNORE INTO `regions` VALUES (2780,'Gulf',170);
INSERT  IGNORE INTO `regions` VALUES (2781,'Madang',170);
INSERT  IGNORE INTO `regions` VALUES (2782,'Manus',170);
INSERT  IGNORE INTO `regions` VALUES (2783,'Milne Bay',170);
INSERT  IGNORE INTO `regions` VALUES (2784,'Morobe',170);
INSERT  IGNORE INTO `regions` VALUES (2785,'National Capital District',170);
INSERT  IGNORE INTO `regions` VALUES (2786,'New Ireland',170);
INSERT  IGNORE INTO `regions` VALUES (2787,'North Solomons',170);
INSERT  IGNORE INTO `regions` VALUES (2788,'Oro',170);
INSERT  IGNORE INTO `regions` VALUES (2789,'Sandaun',170);
INSERT  IGNORE INTO `regions` VALUES (2790,'Simbu',170);
INSERT  IGNORE INTO `regions` VALUES (2791,'Southern Highlands',170);
INSERT  IGNORE INTO `regions` VALUES (2792,'West New Britain',170);
INSERT  IGNORE INTO `regions` VALUES (2793,'Western Highlands',170);
INSERT  IGNORE INTO `regions` VALUES (2794,'Alto Paraguay',171);
INSERT  IGNORE INTO `regions` VALUES (2795,'Alto Parana',171);
INSERT  IGNORE INTO `regions` VALUES (2796,'Amambay',171);
INSERT  IGNORE INTO `regions` VALUES (2797,'Asuncion',171);
INSERT  IGNORE INTO `regions` VALUES (2798,'Boqueron',171);
INSERT  IGNORE INTO `regions` VALUES (2799,'Caaguazu',171);
INSERT  IGNORE INTO `regions` VALUES (2800,'Caazapa',171);
INSERT  IGNORE INTO `regions` VALUES (2801,'Canendiyu',171);
INSERT  IGNORE INTO `regions` VALUES (2802,'Central',171);
INSERT  IGNORE INTO `regions` VALUES (2803,'Concepcion',171);
INSERT  IGNORE INTO `regions` VALUES (2804,'Cordillera',171);
INSERT  IGNORE INTO `regions` VALUES (2805,'Guaira',171);
INSERT  IGNORE INTO `regions` VALUES (2806,'Itapua',171);
INSERT  IGNORE INTO `regions` VALUES (2807,'Misiones',171);
INSERT  IGNORE INTO `regions` VALUES (2808,'Neembucu',171);
INSERT  IGNORE INTO `regions` VALUES (2809,'Paraguari',171);
INSERT  IGNORE INTO `regions` VALUES (2810,'Presidente Hayes',171);
INSERT  IGNORE INTO `regions` VALUES (2811,'San Pedro',171);
INSERT  IGNORE INTO `regions` VALUES (2812,'Amazonas',172);
INSERT  IGNORE INTO `regions` VALUES (2813,'Ancash',172);
INSERT  IGNORE INTO `regions` VALUES (2814,'Apurimac',172);
INSERT  IGNORE INTO `regions` VALUES (2815,'Arequipa',172);
INSERT  IGNORE INTO `regions` VALUES (2816,'Ayacucho',172);
INSERT  IGNORE INTO `regions` VALUES (2817,'Cajamarca',172);
INSERT  IGNORE INTO `regions` VALUES (2818,'Cusco',172);
INSERT  IGNORE INTO `regions` VALUES (2819,'Huancavelica',172);
INSERT  IGNORE INTO `regions` VALUES (2820,'Huanuco',172);
INSERT  IGNORE INTO `regions` VALUES (2821,'Ica',172);
INSERT  IGNORE INTO `regions` VALUES (2822,'Junin',172);
INSERT  IGNORE INTO `regions` VALUES (2823,'La Libertad',172);
INSERT  IGNORE INTO `regions` VALUES (2824,'Lambayeque',172);
INSERT  IGNORE INTO `regions` VALUES (2825,'Lima y Callao',172);
INSERT  IGNORE INTO `regions` VALUES (2826,'Loreto',172);
INSERT  IGNORE INTO `regions` VALUES (2827,'Madre de Dios',172);
INSERT  IGNORE INTO `regions` VALUES (2828,'Moquegua',172);
INSERT  IGNORE INTO `regions` VALUES (2829,'Pasco',172);
INSERT  IGNORE INTO `regions` VALUES (2830,'Piura',172);
INSERT  IGNORE INTO `regions` VALUES (2831,'Puno',172);
INSERT  IGNORE INTO `regions` VALUES (2832,'San Martin',172);
INSERT  IGNORE INTO `regions` VALUES (2833,'Tacna',172);
INSERT  IGNORE INTO `regions` VALUES (2834,'Tumbes',172);
INSERT  IGNORE INTO `regions` VALUES (2835,'Ucayali',172);
INSERT  IGNORE INTO `regions` VALUES (2836,'Batangas',173);
INSERT  IGNORE INTO `regions` VALUES (2837,'Bicol',173);
INSERT  IGNORE INTO `regions` VALUES (2838,'Bulacan',173);
INSERT  IGNORE INTO `regions` VALUES (2839,'Cagayan',173);
INSERT  IGNORE INTO `regions` VALUES (2840,'Caraga',173);
INSERT  IGNORE INTO `regions` VALUES (2841,'Central Luzon',173);
INSERT  IGNORE INTO `regions` VALUES (2842,'Central Mindanao',173);
INSERT  IGNORE INTO `regions` VALUES (2843,'Central Visayas',173);
INSERT  IGNORE INTO `regions` VALUES (2844,'Cordillera',173);
INSERT  IGNORE INTO `regions` VALUES (2845,'Davao',173);
INSERT  IGNORE INTO `regions` VALUES (2846,'Eastern Visayas',173);
INSERT  IGNORE INTO `regions` VALUES (2847,'Greater Metropolitan Area',173);
INSERT  IGNORE INTO `regions` VALUES (2848,'Ilocos',173);
INSERT  IGNORE INTO `regions` VALUES (2849,'Laguna',173);
INSERT  IGNORE INTO `regions` VALUES (2850,'Luzon',173);
INSERT  IGNORE INTO `regions` VALUES (2851,'Mactan',173);
INSERT  IGNORE INTO `regions` VALUES (2852,'Metropolitan Manila Area',173);
INSERT  IGNORE INTO `regions` VALUES (2853,'Muslim Mindanao',173);
INSERT  IGNORE INTO `regions` VALUES (2854,'Northern Mindanao',173);
INSERT  IGNORE INTO `regions` VALUES (2855,'Southern Mindanao',173);
INSERT  IGNORE INTO `regions` VALUES (2856,'Southern Tagalog',173);
INSERT  IGNORE INTO `regions` VALUES (2857,'Western Mindanao',173);
INSERT  IGNORE INTO `regions` VALUES (2858,'Western Visayas',173);
INSERT  IGNORE INTO `regions` VALUES (2859,'Pitcairn Island',174);
INSERT  IGNORE INTO `regions` VALUES (2860,'Biale Blota',175);
INSERT  IGNORE INTO `regions` VALUES (2861,'Dobroszyce',175);
INSERT  IGNORE INTO `regions` VALUES (2862,'Dolnoslaskie',175);
INSERT  IGNORE INTO `regions` VALUES (2863,'Dziekanow Lesny',175);
INSERT  IGNORE INTO `regions` VALUES (2864,'Hopowo',175);
INSERT  IGNORE INTO `regions` VALUES (2865,'Kartuzy',175);
INSERT  IGNORE INTO `regions` VALUES (2866,'Koscian',175);
INSERT  IGNORE INTO `regions` VALUES (2867,'Krakow',175);
INSERT  IGNORE INTO `regions` VALUES (2868,'Kujawsko-Pomorskie',175);
INSERT  IGNORE INTO `regions` VALUES (2869,'Lodzkie',175);
INSERT  IGNORE INTO `regions` VALUES (2870,'Lubelskie',175);
INSERT  IGNORE INTO `regions` VALUES (2871,'Lubuskie',175);
INSERT  IGNORE INTO `regions` VALUES (2872,'Malomice',175);
INSERT  IGNORE INTO `regions` VALUES (2873,'Malopolskie',175);
INSERT  IGNORE INTO `regions` VALUES (2874,'Mazowieckie',175);
INSERT  IGNORE INTO `regions` VALUES (2875,'Mirkow',175);
INSERT  IGNORE INTO `regions` VALUES (2876,'Opolskie',175);
INSERT  IGNORE INTO `regions` VALUES (2877,'Ostrowiec',175);
INSERT  IGNORE INTO `regions` VALUES (2878,'Podkarpackie',175);
INSERT  IGNORE INTO `regions` VALUES (2879,'Podlaskie',175);
INSERT  IGNORE INTO `regions` VALUES (2880,'Polska',175);
INSERT  IGNORE INTO `regions` VALUES (2881,'Pomorskie',175);
INSERT  IGNORE INTO `regions` VALUES (2882,'Poznan',175);
INSERT  IGNORE INTO `regions` VALUES (2883,'Pruszkow',175);
INSERT  IGNORE INTO `regions` VALUES (2884,'Rymanowska',175);
INSERT  IGNORE INTO `regions` VALUES (2885,'Rzeszow',175);
INSERT  IGNORE INTO `regions` VALUES (2886,'Slaskie',175);
INSERT  IGNORE INTO `regions` VALUES (2887,'Stare Pole',175);
INSERT  IGNORE INTO `regions` VALUES (2888,'Swietokrzyskie',175);
INSERT  IGNORE INTO `regions` VALUES (2889,'Warminsko-Mazurskie',175);
INSERT  IGNORE INTO `regions` VALUES (2890,'Warsaw',175);
INSERT  IGNORE INTO `regions` VALUES (2891,'Wejherowo',175);
INSERT  IGNORE INTO `regions` VALUES (2892,'Wielkopolskie',175);
INSERT  IGNORE INTO `regions` VALUES (2893,'Wroclaw',175);
INSERT  IGNORE INTO `regions` VALUES (2894,'Zachodnio-Pomorskie',175);
INSERT  IGNORE INTO `regions` VALUES (2895,'Zukowo',175);
INSERT  IGNORE INTO `regions` VALUES (2896,'Abrantes',176);
INSERT  IGNORE INTO `regions` VALUES (2897,'Acores',176);
INSERT  IGNORE INTO `regions` VALUES (2898,'Alentejo',176);
INSERT  IGNORE INTO `regions` VALUES (2899,'Algarve',176);
INSERT  IGNORE INTO `regions` VALUES (2900,'Braga',176);
INSERT  IGNORE INTO `regions` VALUES (2901,'Centro',176);
INSERT  IGNORE INTO `regions` VALUES (2902,'Distrito de Leiria',176);
INSERT  IGNORE INTO `regions` VALUES (2903,'Distrito de Viana do Castelo',176);
INSERT  IGNORE INTO `regions` VALUES (2904,'Distrito de Vila Real',176);
INSERT  IGNORE INTO `regions` VALUES (2905,'Distrito do Porto',176);
INSERT  IGNORE INTO `regions` VALUES (2906,'Lisboa e Vale do Tejo',176);
INSERT  IGNORE INTO `regions` VALUES (2907,'Madeira',176);
INSERT  IGNORE INTO `regions` VALUES (2908,'Norte',176);
INSERT  IGNORE INTO `regions` VALUES (2909,'Paivas',176);
INSERT  IGNORE INTO `regions` VALUES (2910,'Arecibo',177);
INSERT  IGNORE INTO `regions` VALUES (2911,'Bayamon',177);
INSERT  IGNORE INTO `regions` VALUES (2912,'Carolina',177);
INSERT  IGNORE INTO `regions` VALUES (2913,'Florida',177);
INSERT  IGNORE INTO `regions` VALUES (2914,'Guayama',177);
INSERT  IGNORE INTO `regions` VALUES (2915,'Humacao',177);
INSERT  IGNORE INTO `regions` VALUES (2916,'Mayaguez-Aguadilla',177);
INSERT  IGNORE INTO `regions` VALUES (2917,'Ponce',177);
INSERT  IGNORE INTO `regions` VALUES (2918,'Salinas',177);
INSERT  IGNORE INTO `regions` VALUES (2919,'San Juan',177);
INSERT  IGNORE INTO `regions` VALUES (2920,'Doha',178);
INSERT  IGNORE INTO `regions` VALUES (2921,'Jarian-al-Batnah',178);
INSERT  IGNORE INTO `regions` VALUES (2922,'Umm Salal',178);
INSERT  IGNORE INTO `regions` VALUES (2923,'ad-Dawhah',178);
INSERT  IGNORE INTO `regions` VALUES (2924,'al-Ghuwayriyah',178);
INSERT  IGNORE INTO `regions` VALUES (2925,'al-Jumayliyah',178);
INSERT  IGNORE INTO `regions` VALUES (2926,'al-Khawr',178);
INSERT  IGNORE INTO `regions` VALUES (2927,'al-Wakrah',178);
INSERT  IGNORE INTO `regions` VALUES (2928,'ar-Rayyan',178);
INSERT  IGNORE INTO `regions` VALUES (2929,'ash-Shamal',178);
INSERT  IGNORE INTO `regions` VALUES (2930,'Saint-Benoit',179);
INSERT  IGNORE INTO `regions` VALUES (2931,'Saint-Denis',179);
INSERT  IGNORE INTO `regions` VALUES (2932,'Saint-Paul',179);
INSERT  IGNORE INTO `regions` VALUES (2933,'Saint-Pierre',179);
INSERT  IGNORE INTO `regions` VALUES (2934,'Alba',180);
INSERT  IGNORE INTO `regions` VALUES (2935,'Arad',180);
INSERT  IGNORE INTO `regions` VALUES (2936,'Arges',180);
INSERT  IGNORE INTO `regions` VALUES (2937,'Bacau',180);
INSERT  IGNORE INTO `regions` VALUES (2938,'Bihor',180);
INSERT  IGNORE INTO `regions` VALUES (2939,'Bistrita-Nasaud',180);
INSERT  IGNORE INTO `regions` VALUES (2940,'Botosani',180);
INSERT  IGNORE INTO `regions` VALUES (2941,'Braila',180);
INSERT  IGNORE INTO `regions` VALUES (2942,'Brasov',180);
INSERT  IGNORE INTO `regions` VALUES (2943,'Bucuresti',180);
INSERT  IGNORE INTO `regions` VALUES (2944,'Buzau',180);
INSERT  IGNORE INTO `regions` VALUES (2945,'Calarasi',180);
INSERT  IGNORE INTO `regions` VALUES (2946,'Caras-Severin',180);
INSERT  IGNORE INTO `regions` VALUES (2947,'Cluj',180);
INSERT  IGNORE INTO `regions` VALUES (2948,'Constanta',180);
INSERT  IGNORE INTO `regions` VALUES (2949,'Covasna',180);
INSERT  IGNORE INTO `regions` VALUES (2950,'Dambovita',180);
INSERT  IGNORE INTO `regions` VALUES (2951,'Dolj',180);
INSERT  IGNORE INTO `regions` VALUES (2952,'Galati',180);
INSERT  IGNORE INTO `regions` VALUES (2953,'Giurgiu',180);
INSERT  IGNORE INTO `regions` VALUES (2954,'Gorj',180);
INSERT  IGNORE INTO `regions` VALUES (2955,'Harghita',180);
INSERT  IGNORE INTO `regions` VALUES (2956,'Hunedoara',180);
INSERT  IGNORE INTO `regions` VALUES (2957,'Ialomita',180);
INSERT  IGNORE INTO `regions` VALUES (2958,'Iasi',180);
INSERT  IGNORE INTO `regions` VALUES (2959,'Ilfov',180);
INSERT  IGNORE INTO `regions` VALUES (2960,'Maramures',180);
INSERT  IGNORE INTO `regions` VALUES (2961,'Mehedinti',180);
INSERT  IGNORE INTO `regions` VALUES (2962,'Mures',180);
INSERT  IGNORE INTO `regions` VALUES (2963,'Neamt',180);
INSERT  IGNORE INTO `regions` VALUES (2964,'Olt',180);
INSERT  IGNORE INTO `regions` VALUES (2965,'Prahova',180);
INSERT  IGNORE INTO `regions` VALUES (2966,'Salaj',180);
INSERT  IGNORE INTO `regions` VALUES (2967,'Satu Mare',180);
INSERT  IGNORE INTO `regions` VALUES (2968,'Sibiu',180);
INSERT  IGNORE INTO `regions` VALUES (2969,'Sondelor',180);
INSERT  IGNORE INTO `regions` VALUES (2970,'Suceava',180);
INSERT  IGNORE INTO `regions` VALUES (2971,'Teleorman',180);
INSERT  IGNORE INTO `regions` VALUES (2972,'Timis',180);
INSERT  IGNORE INTO `regions` VALUES (2973,'Tulcea',180);
INSERT  IGNORE INTO `regions` VALUES (2974,'Valcea',180);
INSERT  IGNORE INTO `regions` VALUES (2975,'Vaslui',180);
INSERT  IGNORE INTO `regions` VALUES (2976,'Vrancea',180);
INSERT  IGNORE INTO `regions` VALUES (2977,'Adygeja',181);
INSERT  IGNORE INTO `regions` VALUES (2978,'Aga',181);
INSERT  IGNORE INTO `regions` VALUES (2979,'Alanija',181);
INSERT  IGNORE INTO `regions` VALUES (2980,'Altaj',181);
INSERT  IGNORE INTO `regions` VALUES (2981,'Amur',181);
INSERT  IGNORE INTO `regions` VALUES (2982,'Arhangelsk',181);
INSERT  IGNORE INTO `regions` VALUES (2983,'Astrahan',181);
INSERT  IGNORE INTO `regions` VALUES (2984,'Bashkortostan',181);
INSERT  IGNORE INTO `regions` VALUES (2985,'Belgorod',181);
INSERT  IGNORE INTO `regions` VALUES (2986,'Brjansk',181);
INSERT  IGNORE INTO `regions` VALUES (2987,'Burjatija',181);
INSERT  IGNORE INTO `regions` VALUES (2988,'Chechenija',181);
INSERT  IGNORE INTO `regions` VALUES (2989,'Cheljabinsk',181);
INSERT  IGNORE INTO `regions` VALUES (2990,'Chita',181);
INSERT  IGNORE INTO `regions` VALUES (2991,'Chukotka',181);
INSERT  IGNORE INTO `regions` VALUES (2992,'Chuvashija',181);
INSERT  IGNORE INTO `regions` VALUES (2993,'Dagestan',181);
INSERT  IGNORE INTO `regions` VALUES (2994,'Evenkija',181);
INSERT  IGNORE INTO `regions` VALUES (2995,'Gorno-Altaj',181);
INSERT  IGNORE INTO `regions` VALUES (2996,'Habarovsk',181);
INSERT  IGNORE INTO `regions` VALUES (2997,'Hakasija',181);
INSERT  IGNORE INTO `regions` VALUES (2998,'Hanty-Mansija',181);
INSERT  IGNORE INTO `regions` VALUES (2999,'Ingusetija',181);
INSERT  IGNORE INTO `regions` VALUES (3000,'Irkutsk',181);
INSERT  IGNORE INTO `regions` VALUES (3001,'Ivanovo',181);
INSERT  IGNORE INTO `regions` VALUES (3002,'Jamalo-Nenets',181);
INSERT  IGNORE INTO `regions` VALUES (3003,'Jaroslavl',181);
INSERT  IGNORE INTO `regions` VALUES (3004,'Jevrej',181);
INSERT  IGNORE INTO `regions` VALUES (3005,'Kabardino-Balkarija',181);
INSERT  IGNORE INTO `regions` VALUES (3006,'Kaliningrad',181);
INSERT  IGNORE INTO `regions` VALUES (3007,'Kalmykija',181);
INSERT  IGNORE INTO `regions` VALUES (3008,'Kaluga',181);
INSERT  IGNORE INTO `regions` VALUES (3009,'Kamchatka',181);
INSERT  IGNORE INTO `regions` VALUES (3010,'Karachaj-Cherkessija',181);
INSERT  IGNORE INTO `regions` VALUES (3011,'Karelija',181);
INSERT  IGNORE INTO `regions` VALUES (3012,'Kemerovo',181);
INSERT  IGNORE INTO `regions` VALUES (3013,'Khabarovskiy Kray',181);
INSERT  IGNORE INTO `regions` VALUES (3014,'Kirov',181);
INSERT  IGNORE INTO `regions` VALUES (3015,'Komi',181);
INSERT  IGNORE INTO `regions` VALUES (3016,'Komi-Permjakija',181);
INSERT  IGNORE INTO `regions` VALUES (3017,'Korjakija',181);
INSERT  IGNORE INTO `regions` VALUES (3018,'Kostroma',181);
INSERT  IGNORE INTO `regions` VALUES (3019,'Krasnodar',181);
INSERT  IGNORE INTO `regions` VALUES (3020,'Krasnojarsk',181);
INSERT  IGNORE INTO `regions` VALUES (3021,'Krasnoyarskiy Kray',181);
INSERT  IGNORE INTO `regions` VALUES (3022,'Kurgan',181);
INSERT  IGNORE INTO `regions` VALUES (3023,'Kursk',181);
INSERT  IGNORE INTO `regions` VALUES (3024,'Leningrad',181);
INSERT  IGNORE INTO `regions` VALUES (3025,'Lipeck',181);
INSERT  IGNORE INTO `regions` VALUES (3026,'Magadan',181);
INSERT  IGNORE INTO `regions` VALUES (3027,'Marij El',181);
INSERT  IGNORE INTO `regions` VALUES (3028,'Mordovija',181);
INSERT  IGNORE INTO `regions` VALUES (3029,'Moscow',181);
INSERT  IGNORE INTO `regions` VALUES (3030,'Moskovskaja Oblast',181);
INSERT  IGNORE INTO `regions` VALUES (3031,'Moskovskaya Oblast',181);
INSERT  IGNORE INTO `regions` VALUES (3032,'Moskva',181);
INSERT  IGNORE INTO `regions` VALUES (3033,'Murmansk',181);
INSERT  IGNORE INTO `regions` VALUES (3034,'Nenets',181);
INSERT  IGNORE INTO `regions` VALUES (3035,'Nizhnij Novgorod',181);
INSERT  IGNORE INTO `regions` VALUES (3036,'Novgorod',181);
INSERT  IGNORE INTO `regions` VALUES (3037,'Novokusnezk',181);
INSERT  IGNORE INTO `regions` VALUES (3038,'Novosibirsk',181);
INSERT  IGNORE INTO `regions` VALUES (3039,'Omsk',181);
INSERT  IGNORE INTO `regions` VALUES (3040,'Orenburg',181);
INSERT  IGNORE INTO `regions` VALUES (3041,'Orjol',181);
INSERT  IGNORE INTO `regions` VALUES (3042,'Penza',181);
INSERT  IGNORE INTO `regions` VALUES (3043,'Perm',181);
INSERT  IGNORE INTO `regions` VALUES (3044,'Primorje',181);
INSERT  IGNORE INTO `regions` VALUES (3045,'Pskov',181);
INSERT  IGNORE INTO `regions` VALUES (3046,'Pskovskaya Oblast',181);
INSERT  IGNORE INTO `regions` VALUES (3047,'Rjazan',181);
INSERT  IGNORE INTO `regions` VALUES (3048,'Rostov',181);
INSERT  IGNORE INTO `regions` VALUES (3049,'Saha',181);
INSERT  IGNORE INTO `regions` VALUES (3050,'Sahalin',181);
INSERT  IGNORE INTO `regions` VALUES (3051,'Samara',181);
INSERT  IGNORE INTO `regions` VALUES (3052,'Samarskaya',181);
INSERT  IGNORE INTO `regions` VALUES (3053,'Sankt-Peterburg',181);
INSERT  IGNORE INTO `regions` VALUES (3054,'Saratov',181);
INSERT  IGNORE INTO `regions` VALUES (3055,'Smolensk',181);
INSERT  IGNORE INTO `regions` VALUES (3056,'Stavropol',181);
INSERT  IGNORE INTO `regions` VALUES (3057,'Sverdlovsk',181);
INSERT  IGNORE INTO `regions` VALUES (3058,'Tajmyrija',181);
INSERT  IGNORE INTO `regions` VALUES (3059,'Tambov',181);
INSERT  IGNORE INTO `regions` VALUES (3060,'Tatarstan',181);
INSERT  IGNORE INTO `regions` VALUES (3061,'Tjumen',181);
INSERT  IGNORE INTO `regions` VALUES (3062,'Tomsk',181);
INSERT  IGNORE INTO `regions` VALUES (3063,'Tula',181);
INSERT  IGNORE INTO `regions` VALUES (3064,'Tver',181);
INSERT  IGNORE INTO `regions` VALUES (3065,'Tyva',181);
INSERT  IGNORE INTO `regions` VALUES (3066,'Udmurtija',181);
INSERT  IGNORE INTO `regions` VALUES (3067,'Uljanovsk',181);
INSERT  IGNORE INTO `regions` VALUES (3068,'Ulyanovskaya Oblast',181);
INSERT  IGNORE INTO `regions` VALUES (3069,'Ust-Orda',181);
INSERT  IGNORE INTO `regions` VALUES (3070,'Vladimir',181);
INSERT  IGNORE INTO `regions` VALUES (3071,'Volgograd',181);
INSERT  IGNORE INTO `regions` VALUES (3072,'Vologda',181);
INSERT  IGNORE INTO `regions` VALUES (3073,'Voronezh',181);
INSERT  IGNORE INTO `regions` VALUES (3074,'Butare',182);
INSERT  IGNORE INTO `regions` VALUES (3075,'Byumba',182);
INSERT  IGNORE INTO `regions` VALUES (3076,'Cyangugu',182);
INSERT  IGNORE INTO `regions` VALUES (3077,'Gikongoro',182);
INSERT  IGNORE INTO `regions` VALUES (3078,'Gisenyi',182);
INSERT  IGNORE INTO `regions` VALUES (3079,'Gitarama',182);
INSERT  IGNORE INTO `regions` VALUES (3080,'Kibungo',182);
INSERT  IGNORE INTO `regions` VALUES (3081,'Kibuye',182);
INSERT  IGNORE INTO `regions` VALUES (3082,'Kigali-ngali',182);
INSERT  IGNORE INTO `regions` VALUES (3083,'Ruhengeri',182);
INSERT  IGNORE INTO `regions` VALUES (3084,'Ascension',183);
INSERT  IGNORE INTO `regions` VALUES (3085,'Gough Island',183);
INSERT  IGNORE INTO `regions` VALUES (3086,'Saint Helena',183);
INSERT  IGNORE INTO `regions` VALUES (3087,'Tristan da Cunha',183);
INSERT  IGNORE INTO `regions` VALUES (3088,'Christ Church Nichola Town',184);
INSERT  IGNORE INTO `regions` VALUES (3089,'Saint Anne Sandy Point',184);
INSERT  IGNORE INTO `regions` VALUES (3090,'Saint George Basseterre',184);
INSERT  IGNORE INTO `regions` VALUES (3091,'Saint George Gingerland',184);
INSERT  IGNORE INTO `regions` VALUES (3092,'Saint James Windward',184);
INSERT  IGNORE INTO `regions` VALUES (3093,'Saint John Capesterre',184);
INSERT  IGNORE INTO `regions` VALUES (3094,'Saint John Figtree',184);
INSERT  IGNORE INTO `regions` VALUES (3095,'Saint Mary Cayon',184);
INSERT  IGNORE INTO `regions` VALUES (3096,'Saint Paul Capesterre',184);
INSERT  IGNORE INTO `regions` VALUES (3097,'Saint Paul Charlestown',184);
INSERT  IGNORE INTO `regions` VALUES (3098,'Saint Peter Basseterre',184);
INSERT  IGNORE INTO `regions` VALUES (3099,'Saint Thomas Lowland',184);
INSERT  IGNORE INTO `regions` VALUES (3100,'Saint Thomas Middle Island',184);
INSERT  IGNORE INTO `regions` VALUES (3101,'Trinity Palmetto Point',184);
INSERT  IGNORE INTO `regions` VALUES (3102,'Anse-la-Raye',185);
INSERT  IGNORE INTO `regions` VALUES (3103,'Canaries',185);
INSERT  IGNORE INTO `regions` VALUES (3104,'Castries',185);
INSERT  IGNORE INTO `regions` VALUES (3105,'Choiseul',185);
INSERT  IGNORE INTO `regions` VALUES (3106,'Dennery',185);
INSERT  IGNORE INTO `regions` VALUES (3107,'Gros Inlet',185);
INSERT  IGNORE INTO `regions` VALUES (3108,'Laborie',185);
INSERT  IGNORE INTO `regions` VALUES (3109,'Micoud',185);
INSERT  IGNORE INTO `regions` VALUES (3110,'Soufriere',185);
INSERT  IGNORE INTO `regions` VALUES (3111,'Vieux Fort',185);
INSERT  IGNORE INTO `regions` VALUES (3112,'Miquelon-Langlade',186);
INSERT  IGNORE INTO `regions` VALUES (3113,'Saint-Pierre',186);
INSERT  IGNORE INTO `regions` VALUES (3114,'Charlotte',187);
INSERT  IGNORE INTO `regions` VALUES (3115,'Grenadines',187);
INSERT  IGNORE INTO `regions` VALUES (3116,'Saint Andrew',187);
INSERT  IGNORE INTO `regions` VALUES (3117,'Saint David',187);
INSERT  IGNORE INTO `regions` VALUES (3118,'Saint George',187);
INSERT  IGNORE INTO `regions` VALUES (3119,'Saint Patrick',187);
INSERT  IGNORE INTO `regions` VALUES (3120,'A\'ana',188);
INSERT  IGNORE INTO `regions` VALUES (3121,'Aiga-i-le-Tai',188);
INSERT  IGNORE INTO `regions` VALUES (3122,'Atua',188);
INSERT  IGNORE INTO `regions` VALUES (3123,'Fa\'asaleleaga',188);
INSERT  IGNORE INTO `regions` VALUES (3124,'Gaga\'emauga',188);
INSERT  IGNORE INTO `regions` VALUES (3125,'Gagaifomauga',188);
INSERT  IGNORE INTO `regions` VALUES (3126,'Palauli',188);
INSERT  IGNORE INTO `regions` VALUES (3127,'Satupa\'itea',188);
INSERT  IGNORE INTO `regions` VALUES (3128,'Tuamasaga',188);
INSERT  IGNORE INTO `regions` VALUES (3129,'Va\'a-o-Fonoti',188);
INSERT  IGNORE INTO `regions` VALUES (3130,'Vaisigano',188);
INSERT  IGNORE INTO `regions` VALUES (3131,'Acquaviva',189);
INSERT  IGNORE INTO `regions` VALUES (3132,'Borgo Maggiore',189);
INSERT  IGNORE INTO `regions` VALUES (3133,'Chiesanuova',189);
INSERT  IGNORE INTO `regions` VALUES (3134,'Domagnano',189);
INSERT  IGNORE INTO `regions` VALUES (3135,'Faetano',189);
INSERT  IGNORE INTO `regions` VALUES (3136,'Fiorentino',189);
INSERT  IGNORE INTO `regions` VALUES (3137,'Montegiardino',189);
INSERT  IGNORE INTO `regions` VALUES (3138,'San Marino',189);
INSERT  IGNORE INTO `regions` VALUES (3139,'Serravalle',189);
INSERT  IGNORE INTO `regions` VALUES (3140,'Agua Grande',190);
INSERT  IGNORE INTO `regions` VALUES (3141,'Cantagalo',190);
INSERT  IGNORE INTO `regions` VALUES (3142,'Lemba',190);
INSERT  IGNORE INTO `regions` VALUES (3143,'Lobata',190);
INSERT  IGNORE INTO `regions` VALUES (3144,'Me-Zochi',190);
INSERT  IGNORE INTO `regions` VALUES (3145,'Pague',190);
INSERT  IGNORE INTO `regions` VALUES (3146,'Al Khobar',191);
INSERT  IGNORE INTO `regions` VALUES (3147,'Aseer',191);
INSERT  IGNORE INTO `regions` VALUES (3148,'Ash Sharqiyah',191);
INSERT  IGNORE INTO `regions` VALUES (3149,'Asir',191);
INSERT  IGNORE INTO `regions` VALUES (3150,'Central Province',191);
INSERT  IGNORE INTO `regions` VALUES (3151,'Eastern Province',191);
INSERT  IGNORE INTO `regions` VALUES (3152,'Ha\'il',191);
INSERT  IGNORE INTO `regions` VALUES (3153,'Jawf',191);
INSERT  IGNORE INTO `regions` VALUES (3154,'Jizan',191);
INSERT  IGNORE INTO `regions` VALUES (3155,'Makkah',191);
INSERT  IGNORE INTO `regions` VALUES (3156,'Najran',191);
INSERT  IGNORE INTO `regions` VALUES (3157,'Qasim',191);
INSERT  IGNORE INTO `regions` VALUES (3158,'Tabuk',191);
INSERT  IGNORE INTO `regions` VALUES (3159,'Western Province',191);
INSERT  IGNORE INTO `regions` VALUES (3160,'al-Bahah',191);
INSERT  IGNORE INTO `regions` VALUES (3161,'al-Hudud-ash-Shamaliyah',191);
INSERT  IGNORE INTO `regions` VALUES (3162,'al-Madinah',191);
INSERT  IGNORE INTO `regions` VALUES (3163,'ar-Riyad',191);
INSERT  IGNORE INTO `regions` VALUES (3164,'Dakar',192);
INSERT  IGNORE INTO `regions` VALUES (3165,'Diourbel',192);
INSERT  IGNORE INTO `regions` VALUES (3166,'Fatick',192);
INSERT  IGNORE INTO `regions` VALUES (3167,'Kaolack',192);
INSERT  IGNORE INTO `regions` VALUES (3168,'Kolda',192);
INSERT  IGNORE INTO `regions` VALUES (3169,'Louga',192);
INSERT  IGNORE INTO `regions` VALUES (3170,'Saint-Louis',192);
INSERT  IGNORE INTO `regions` VALUES (3171,'Tambacounda',192);
INSERT  IGNORE INTO `regions` VALUES (3172,'Thies',192);
INSERT  IGNORE INTO `regions` VALUES (3173,'Ziguinchor',192);
INSERT  IGNORE INTO `regions` VALUES (3174,'Central Serbia',193);
INSERT  IGNORE INTO `regions` VALUES (3175,'Kosovo and Metohija',193);
INSERT  IGNORE INTO `regions` VALUES (3176,'Vojvodina',193);
INSERT  IGNORE INTO `regions` VALUES (3177,'Anse Boileau',194);
INSERT  IGNORE INTO `regions` VALUES (3178,'Anse Royale',194);
INSERT  IGNORE INTO `regions` VALUES (3179,'Cascade',194);
INSERT  IGNORE INTO `regions` VALUES (3180,'Takamaka',194);
INSERT  IGNORE INTO `regions` VALUES (3181,'Victoria',194);
INSERT  IGNORE INTO `regions` VALUES (3182,'Eastern',195);
INSERT  IGNORE INTO `regions` VALUES (3183,'Northern',195);
INSERT  IGNORE INTO `regions` VALUES (3184,'Southern',195);
INSERT  IGNORE INTO `regions` VALUES (3185,'Western',195);
INSERT  IGNORE INTO `regions` VALUES (3186,'Singapore',196);
INSERT  IGNORE INTO `regions` VALUES (3187,'Banskobystricky',197);
INSERT  IGNORE INTO `regions` VALUES (3188,'Bratislavsky',197);
INSERT  IGNORE INTO `regions` VALUES (3189,'Kosicky',197);
INSERT  IGNORE INTO `regions` VALUES (3190,'Nitriansky',197);
INSERT  IGNORE INTO `regions` VALUES (3191,'Presovsky',197);
INSERT  IGNORE INTO `regions` VALUES (3192,'Trenciansky',197);
INSERT  IGNORE INTO `regions` VALUES (3193,'Trnavsky',197);
INSERT  IGNORE INTO `regions` VALUES (3194,'Zilinsky',197);
INSERT  IGNORE INTO `regions` VALUES (3195,'Benedikt',198);
INSERT  IGNORE INTO `regions` VALUES (3196,'Gorenjska',198);
INSERT  IGNORE INTO `regions` VALUES (3197,'Gorishka',198);
INSERT  IGNORE INTO `regions` VALUES (3198,'Jugovzhodna Slovenija',198);
INSERT  IGNORE INTO `regions` VALUES (3199,'Koroshka',198);
INSERT  IGNORE INTO `regions` VALUES (3200,'Notranjsko-krashka',198);
INSERT  IGNORE INTO `regions` VALUES (3201,'Obalno-krashka',198);
INSERT  IGNORE INTO `regions` VALUES (3202,'Obcina Domzale',198);
INSERT  IGNORE INTO `regions` VALUES (3203,'Obcina Vitanje',198);
INSERT  IGNORE INTO `regions` VALUES (3204,'Osrednjeslovenska',198);
INSERT  IGNORE INTO `regions` VALUES (3205,'Podravska',198);
INSERT  IGNORE INTO `regions` VALUES (3206,'Pomurska',198);
INSERT  IGNORE INTO `regions` VALUES (3207,'Savinjska',198);
INSERT  IGNORE INTO `regions` VALUES (3208,'Slovenian Littoral',198);
INSERT  IGNORE INTO `regions` VALUES (3209,'Spodnjeposavska',198);
INSERT  IGNORE INTO `regions` VALUES (3210,'Zasavska',198);
INSERT  IGNORE INTO `regions` VALUES (3211,'Pitcairn',199);
INSERT  IGNORE INTO `regions` VALUES (3212,'Central',200);
INSERT  IGNORE INTO `regions` VALUES (3213,'Choiseul',200);
INSERT  IGNORE INTO `regions` VALUES (3214,'Guadalcanal',200);
INSERT  IGNORE INTO `regions` VALUES (3215,'Isabel',200);
INSERT  IGNORE INTO `regions` VALUES (3216,'Makira and Ulawa',200);
INSERT  IGNORE INTO `regions` VALUES (3217,'Malaita',200);
INSERT  IGNORE INTO `regions` VALUES (3218,'Rennell and Bellona',200);
INSERT  IGNORE INTO `regions` VALUES (3219,'Temotu',200);
INSERT  IGNORE INTO `regions` VALUES (3220,'Western',200);
INSERT  IGNORE INTO `regions` VALUES (3221,'Awdal',201);
INSERT  IGNORE INTO `regions` VALUES (3222,'Bakol',201);
INSERT  IGNORE INTO `regions` VALUES (3223,'Banadir',201);
INSERT  IGNORE INTO `regions` VALUES (3224,'Bari',201);
INSERT  IGNORE INTO `regions` VALUES (3225,'Bay',201);
INSERT  IGNORE INTO `regions` VALUES (3226,'Galgudug',201);
INSERT  IGNORE INTO `regions` VALUES (3227,'Gedo',201);
INSERT  IGNORE INTO `regions` VALUES (3228,'Hiran',201);
INSERT  IGNORE INTO `regions` VALUES (3229,'Jubbada Hose',201);
INSERT  IGNORE INTO `regions` VALUES (3230,'Jubbadha Dexe',201);
INSERT  IGNORE INTO `regions` VALUES (3231,'Mudug',201);
INSERT  IGNORE INTO `regions` VALUES (3232,'Nugal',201);
INSERT  IGNORE INTO `regions` VALUES (3233,'Sanag',201);
INSERT  IGNORE INTO `regions` VALUES (3234,'Shabellaha Dhexe',201);
INSERT  IGNORE INTO `regions` VALUES (3235,'Shabellaha Hose',201);
INSERT  IGNORE INTO `regions` VALUES (3236,'Togdher',201);
INSERT  IGNORE INTO `regions` VALUES (3237,'Woqoyi Galbed',201);
INSERT  IGNORE INTO `regions` VALUES (3238,'Eastern Cape',202);
INSERT  IGNORE INTO `regions` VALUES (3239,'Free State',202);
INSERT  IGNORE INTO `regions` VALUES (3240,'Gauteng',202);
INSERT  IGNORE INTO `regions` VALUES (3241,'Kempton Park',202);
INSERT  IGNORE INTO `regions` VALUES (3242,'Kramerville',202);
INSERT  IGNORE INTO `regions` VALUES (3243,'KwaZulu Natal',202);
INSERT  IGNORE INTO `regions` VALUES (3244,'Limpopo',202);
INSERT  IGNORE INTO `regions` VALUES (3245,'Mpumalanga',202);
INSERT  IGNORE INTO `regions` VALUES (3246,'North West',202);
INSERT  IGNORE INTO `regions` VALUES (3247,'Northern Cape',202);
INSERT  IGNORE INTO `regions` VALUES (3248,'Parow',202);
INSERT  IGNORE INTO `regions` VALUES (3249,'Table View',202);
INSERT  IGNORE INTO `regions` VALUES (3250,'Umtentweni',202);
INSERT  IGNORE INTO `regions` VALUES (3251,'Western Cape',202);
INSERT  IGNORE INTO `regions` VALUES (3252,'South Georgia',203);
INSERT  IGNORE INTO `regions` VALUES (3253,'Central Equatoria',204);
INSERT  IGNORE INTO `regions` VALUES (3254,'A Coruna',205);
INSERT  IGNORE INTO `regions` VALUES (3255,'Alacant',205);
INSERT  IGNORE INTO `regions` VALUES (3256,'Alava',205);
INSERT  IGNORE INTO `regions` VALUES (3257,'Albacete',205);
INSERT  IGNORE INTO `regions` VALUES (3258,'Almeria',205);
INSERT  IGNORE INTO `regions` VALUES (3259,'Andalucia',205);
INSERT  IGNORE INTO `regions` VALUES (3260,'Asturias',205);
INSERT  IGNORE INTO `regions` VALUES (3261,'Avila',205);
INSERT  IGNORE INTO `regions` VALUES (3262,'Badajoz',205);
INSERT  IGNORE INTO `regions` VALUES (3263,'Balears',205);
INSERT  IGNORE INTO `regions` VALUES (3264,'Barcelona',205);
INSERT  IGNORE INTO `regions` VALUES (3265,'Bertamirans',205);
INSERT  IGNORE INTO `regions` VALUES (3266,'Biscay',205);
INSERT  IGNORE INTO `regions` VALUES (3267,'Burgos',205);
INSERT  IGNORE INTO `regions` VALUES (3268,'Caceres',205);
INSERT  IGNORE INTO `regions` VALUES (3269,'Cadiz',205);
INSERT  IGNORE INTO `regions` VALUES (3270,'Cantabria',205);
INSERT  IGNORE INTO `regions` VALUES (3271,'Castello',205);
INSERT  IGNORE INTO `regions` VALUES (3272,'Catalunya',205);
INSERT  IGNORE INTO `regions` VALUES (3273,'Ceuta',205);
INSERT  IGNORE INTO `regions` VALUES (3274,'Ciudad Real',205);
INSERT  IGNORE INTO `regions` VALUES (3275,'Comunidad Autonoma de Canarias',205);
INSERT  IGNORE INTO `regions` VALUES (3276,'Comunidad Autonoma de Cataluna',205);
INSERT  IGNORE INTO `regions` VALUES (3277,'Comunidad Autonoma de Galicia',205);
INSERT  IGNORE INTO `regions` VALUES (3278,'Comunidad Autonoma de las Isla',205);
INSERT  IGNORE INTO `regions` VALUES (3279,'Comunidad Autonoma del Princip',205);
INSERT  IGNORE INTO `regions` VALUES (3280,'Comunidad Valenciana',205);
INSERT  IGNORE INTO `regions` VALUES (3281,'Cordoba',205);
INSERT  IGNORE INTO `regions` VALUES (3282,'Cuenca',205);
INSERT  IGNORE INTO `regions` VALUES (3283,'Gipuzkoa',205);
INSERT  IGNORE INTO `regions` VALUES (3284,'Girona',205);
INSERT  IGNORE INTO `regions` VALUES (3285,'Granada',205);
INSERT  IGNORE INTO `regions` VALUES (3286,'Guadalajara',205);
INSERT  IGNORE INTO `regions` VALUES (3287,'Guipuzcoa',205);
INSERT  IGNORE INTO `regions` VALUES (3288,'Huelva',205);
INSERT  IGNORE INTO `regions` VALUES (3289,'Huesca',205);
INSERT  IGNORE INTO `regions` VALUES (3290,'Jaen',205);
INSERT  IGNORE INTO `regions` VALUES (3291,'La Rioja',205);
INSERT  IGNORE INTO `regions` VALUES (3292,'Las Palmas',205);
INSERT  IGNORE INTO `regions` VALUES (3293,'Leon',205);
INSERT  IGNORE INTO `regions` VALUES (3294,'Lerida',205);
INSERT  IGNORE INTO `regions` VALUES (3295,'Lleida',205);
INSERT  IGNORE INTO `regions` VALUES (3296,'Lugo',205);
INSERT  IGNORE INTO `regions` VALUES (3297,'Madrid',205);
INSERT  IGNORE INTO `regions` VALUES (3298,'Malaga',205);
INSERT  IGNORE INTO `regions` VALUES (3299,'Melilla',205);
INSERT  IGNORE INTO `regions` VALUES (3300,'Murcia',205);
INSERT  IGNORE INTO `regions` VALUES (3301,'Navarra',205);
INSERT  IGNORE INTO `regions` VALUES (3302,'Ourense',205);
INSERT  IGNORE INTO `regions` VALUES (3303,'Pais Vasco',205);
INSERT  IGNORE INTO `regions` VALUES (3304,'Palencia',205);
INSERT  IGNORE INTO `regions` VALUES (3305,'Pontevedra',205);
INSERT  IGNORE INTO `regions` VALUES (3306,'Salamanca',205);
INSERT  IGNORE INTO `regions` VALUES (3307,'Santa Cruz de Tenerife',205);
INSERT  IGNORE INTO `regions` VALUES (3308,'Segovia',205);
INSERT  IGNORE INTO `regions` VALUES (3309,'Sevilla',205);
INSERT  IGNORE INTO `regions` VALUES (3310,'Soria',205);
INSERT  IGNORE INTO `regions` VALUES (3311,'Tarragona',205);
INSERT  IGNORE INTO `regions` VALUES (3312,'Tenerife',205);
INSERT  IGNORE INTO `regions` VALUES (3313,'Teruel',205);
INSERT  IGNORE INTO `regions` VALUES (3314,'Toledo',205);
INSERT  IGNORE INTO `regions` VALUES (3315,'Valencia',205);
INSERT  IGNORE INTO `regions` VALUES (3316,'Valladolid',205);
INSERT  IGNORE INTO `regions` VALUES (3317,'Vizcaya',205);
INSERT  IGNORE INTO `regions` VALUES (3318,'Zamora',205);
INSERT  IGNORE INTO `regions` VALUES (3319,'Zaragoza',205);
INSERT  IGNORE INTO `regions` VALUES (3320,'Amparai',206);
INSERT  IGNORE INTO `regions` VALUES (3321,'Anuradhapuraya',206);
INSERT  IGNORE INTO `regions` VALUES (3322,'Badulla',206);
INSERT  IGNORE INTO `regions` VALUES (3323,'Boralesgamuwa',206);
INSERT  IGNORE INTO `regions` VALUES (3324,'Colombo',206);
INSERT  IGNORE INTO `regions` VALUES (3325,'Galla',206);
INSERT  IGNORE INTO `regions` VALUES (3326,'Gampaha',206);
INSERT  IGNORE INTO `regions` VALUES (3327,'Hambantota',206);
INSERT  IGNORE INTO `regions` VALUES (3328,'Kalatura',206);
INSERT  IGNORE INTO `regions` VALUES (3329,'Kegalla',206);
INSERT  IGNORE INTO `regions` VALUES (3330,'Kilinochchi',206);
INSERT  IGNORE INTO `regions` VALUES (3331,'Kurunegala',206);
INSERT  IGNORE INTO `regions` VALUES (3332,'Madakalpuwa',206);
INSERT  IGNORE INTO `regions` VALUES (3333,'Maha Nuwara',206);
INSERT  IGNORE INTO `regions` VALUES (3334,'Malwana',206);
INSERT  IGNORE INTO `regions` VALUES (3335,'Mannarama',206);
INSERT  IGNORE INTO `regions` VALUES (3336,'Matale',206);
INSERT  IGNORE INTO `regions` VALUES (3337,'Matara',206);
INSERT  IGNORE INTO `regions` VALUES (3338,'Monaragala',206);
INSERT  IGNORE INTO `regions` VALUES (3339,'Mullaitivu',206);
INSERT  IGNORE INTO `regions` VALUES (3340,'North Eastern Province',206);
INSERT  IGNORE INTO `regions` VALUES (3341,'North Western Province',206);
INSERT  IGNORE INTO `regions` VALUES (3342,'Nuwara Eliya',206);
INSERT  IGNORE INTO `regions` VALUES (3343,'Polonnaruwa',206);
INSERT  IGNORE INTO `regions` VALUES (3344,'Puttalama',206);
INSERT  IGNORE INTO `regions` VALUES (3345,'Ratnapuraya',206);
INSERT  IGNORE INTO `regions` VALUES (3346,'Southern Province',206);
INSERT  IGNORE INTO `regions` VALUES (3347,'Tirikunamalaya',206);
INSERT  IGNORE INTO `regions` VALUES (3348,'Tuscany',206);
INSERT  IGNORE INTO `regions` VALUES (3349,'Vavuniyawa',206);
INSERT  IGNORE INTO `regions` VALUES (3350,'Western Province',206);
INSERT  IGNORE INTO `regions` VALUES (3351,'Yapanaya',206);
INSERT  IGNORE INTO `regions` VALUES (3352,'kadawatha',206);
INSERT  IGNORE INTO `regions` VALUES (3353,'A\'ali-an-Nil',207);
INSERT  IGNORE INTO `regions` VALUES (3354,'Bahr-al-Jabal',207);
INSERT  IGNORE INTO `regions` VALUES (3355,'Central Equatoria',207);
INSERT  IGNORE INTO `regions` VALUES (3356,'Gharb Bahr-al-Ghazal',207);
INSERT  IGNORE INTO `regions` VALUES (3357,'Gharb Darfur',207);
INSERT  IGNORE INTO `regions` VALUES (3358,'Gharb Kurdufan',207);
INSERT  IGNORE INTO `regions` VALUES (3359,'Gharb-al-Istiwa\'iyah',207);
INSERT  IGNORE INTO `regions` VALUES (3360,'Janub Darfur',207);
INSERT  IGNORE INTO `regions` VALUES (3361,'Janub Kurdufan',207);
INSERT  IGNORE INTO `regions` VALUES (3362,'Junqali',207);
INSERT  IGNORE INTO `regions` VALUES (3363,'Kassala',207);
INSERT  IGNORE INTO `regions` VALUES (3364,'Nahr-an-Nil',207);
INSERT  IGNORE INTO `regions` VALUES (3365,'Shamal Bahr-al-Ghazal',207);
INSERT  IGNORE INTO `regions` VALUES (3366,'Shamal Darfur',207);
INSERT  IGNORE INTO `regions` VALUES (3367,'Shamal Kurdufan',207);
INSERT  IGNORE INTO `regions` VALUES (3368,'Sharq-al-Istiwa\'iyah',207);
INSERT  IGNORE INTO `regions` VALUES (3369,'Sinnar',207);
INSERT  IGNORE INTO `regions` VALUES (3370,'Warab',207);
INSERT  IGNORE INTO `regions` VALUES (3371,'Wilayat al Khartum',207);
INSERT  IGNORE INTO `regions` VALUES (3372,'al-Bahr-al-Ahmar',207);
INSERT  IGNORE INTO `regions` VALUES (3373,'al-Buhayrat',207);
INSERT  IGNORE INTO `regions` VALUES (3374,'al-Jazirah',207);
INSERT  IGNORE INTO `regions` VALUES (3375,'al-Khartum',207);
INSERT  IGNORE INTO `regions` VALUES (3376,'al-Qadarif',207);
INSERT  IGNORE INTO `regions` VALUES (3377,'al-Wahdah',207);
INSERT  IGNORE INTO `regions` VALUES (3378,'an-Nil-al-Abyad',207);
INSERT  IGNORE INTO `regions` VALUES (3379,'an-Nil-al-Azraq',207);
INSERT  IGNORE INTO `regions` VALUES (3380,'ash-Shamaliyah',207);
INSERT  IGNORE INTO `regions` VALUES (3381,'Brokopondo',208);
INSERT  IGNORE INTO `regions` VALUES (3382,'Commewijne',208);
INSERT  IGNORE INTO `regions` VALUES (3383,'Coronie',208);
INSERT  IGNORE INTO `regions` VALUES (3384,'Marowijne',208);
INSERT  IGNORE INTO `regions` VALUES (3385,'Nickerie',208);
INSERT  IGNORE INTO `regions` VALUES (3386,'Para',208);
INSERT  IGNORE INTO `regions` VALUES (3387,'Paramaribo',208);
INSERT  IGNORE INTO `regions` VALUES (3388,'Saramacca',208);
INSERT  IGNORE INTO `regions` VALUES (3389,'Wanica',208);
INSERT  IGNORE INTO `regions` VALUES (3390,'Svalbard',209);
INSERT  IGNORE INTO `regions` VALUES (3391,'Hhohho',210);
INSERT  IGNORE INTO `regions` VALUES (3392,'Lubombo',210);
INSERT  IGNORE INTO `regions` VALUES (3393,'Manzini',210);
INSERT  IGNORE INTO `regions` VALUES (3394,'Shiselweni',210);
INSERT  IGNORE INTO `regions` VALUES (3395,'Alvsborgs Lan',211);
INSERT  IGNORE INTO `regions` VALUES (3396,'Angermanland',211);
INSERT  IGNORE INTO `regions` VALUES (3397,'Blekinge',211);
INSERT  IGNORE INTO `regions` VALUES (3398,'Bohuslan',211);
INSERT  IGNORE INTO `regions` VALUES (3399,'Dalarna',211);
INSERT  IGNORE INTO `regions` VALUES (3400,'Gavleborg',211);
INSERT  IGNORE INTO `regions` VALUES (3401,'Gaza',211);
INSERT  IGNORE INTO `regions` VALUES (3402,'Gotland',211);
INSERT  IGNORE INTO `regions` VALUES (3403,'Halland',211);
INSERT  IGNORE INTO `regions` VALUES (3404,'Jamtland',211);
INSERT  IGNORE INTO `regions` VALUES (3405,'Jonkoping',211);
INSERT  IGNORE INTO `regions` VALUES (3406,'Kalmar',211);
INSERT  IGNORE INTO `regions` VALUES (3407,'Kristianstads',211);
INSERT  IGNORE INTO `regions` VALUES (3408,'Kronoberg',211);
INSERT  IGNORE INTO `regions` VALUES (3409,'Norrbotten',211);
INSERT  IGNORE INTO `regions` VALUES (3410,'Orebro',211);
INSERT  IGNORE INTO `regions` VALUES (3411,'Ostergotland',211);
INSERT  IGNORE INTO `regions` VALUES (3412,'Saltsjo-Boo',211);
INSERT  IGNORE INTO `regions` VALUES (3413,'Skane',211);
INSERT  IGNORE INTO `regions` VALUES (3414,'Smaland',211);
INSERT  IGNORE INTO `regions` VALUES (3415,'Sodermanland',211);
INSERT  IGNORE INTO `regions` VALUES (3416,'Stockholm',211);
INSERT  IGNORE INTO `regions` VALUES (3417,'Uppsala',211);
INSERT  IGNORE INTO `regions` VALUES (3418,'Varmland',211);
INSERT  IGNORE INTO `regions` VALUES (3419,'Vasterbotten',211);
INSERT  IGNORE INTO `regions` VALUES (3420,'Vastergotland',211);
INSERT  IGNORE INTO `regions` VALUES (3421,'Vasternorrland',211);
INSERT  IGNORE INTO `regions` VALUES (3422,'Vastmanland',211);
INSERT  IGNORE INTO `regions` VALUES (3423,'Vastra Gotaland',211);
INSERT  IGNORE INTO `regions` VALUES (3424,'Aargau',212);
INSERT  IGNORE INTO `regions` VALUES (3425,'Appenzell Inner-Rhoden',212);
INSERT  IGNORE INTO `regions` VALUES (3426,'Appenzell-Ausser Rhoden',212);
INSERT  IGNORE INTO `regions` VALUES (3427,'Basel-Landschaft',212);
INSERT  IGNORE INTO `regions` VALUES (3428,'Basel-Stadt',212);
INSERT  IGNORE INTO `regions` VALUES (3429,'Bern',212);
INSERT  IGNORE INTO `regions` VALUES (3430,'Canton Ticino',212);
INSERT  IGNORE INTO `regions` VALUES (3431,'Fribourg',212);
INSERT  IGNORE INTO `regions` VALUES (3432,'Geneve',212);
INSERT  IGNORE INTO `regions` VALUES (3433,'Glarus',212);
INSERT  IGNORE INTO `regions` VALUES (3434,'Graubunden',212);
INSERT  IGNORE INTO `regions` VALUES (3435,'Heerbrugg',212);
INSERT  IGNORE INTO `regions` VALUES (3436,'Jura',212);
INSERT  IGNORE INTO `regions` VALUES (3437,'Kanton Aargau',212);
INSERT  IGNORE INTO `regions` VALUES (3438,'Luzern',212);
INSERT  IGNORE INTO `regions` VALUES (3439,'Morbio Inferiore',212);
INSERT  IGNORE INTO `regions` VALUES (3440,'Muhen',212);
INSERT  IGNORE INTO `regions` VALUES (3441,'Neuchatel',212);
INSERT  IGNORE INTO `regions` VALUES (3442,'Nidwalden',212);
INSERT  IGNORE INTO `regions` VALUES (3443,'Obwalden',212);
INSERT  IGNORE INTO `regions` VALUES (3444,'Sankt Gallen',212);
INSERT  IGNORE INTO `regions` VALUES (3445,'Schaffhausen',212);
INSERT  IGNORE INTO `regions` VALUES (3446,'Schwyz',212);
INSERT  IGNORE INTO `regions` VALUES (3447,'Solothurn',212);
INSERT  IGNORE INTO `regions` VALUES (3448,'Thurgau',212);
INSERT  IGNORE INTO `regions` VALUES (3449,'Ticino',212);
INSERT  IGNORE INTO `regions` VALUES (3450,'Uri',212);
INSERT  IGNORE INTO `regions` VALUES (3451,'Valais',212);
INSERT  IGNORE INTO `regions` VALUES (3452,'Vaud',212);
INSERT  IGNORE INTO `regions` VALUES (3453,'Vauffelin',212);
INSERT  IGNORE INTO `regions` VALUES (3454,'Zug',212);
INSERT  IGNORE INTO `regions` VALUES (3455,'Zurich',212);
INSERT  IGNORE INTO `regions` VALUES (3456,'Aleppo',213);
INSERT  IGNORE INTO `regions` VALUES (3457,'Dar\'a',213);
INSERT  IGNORE INTO `regions` VALUES (3458,'Dayr-az-Zawr',213);
INSERT  IGNORE INTO `regions` VALUES (3459,'Dimashq',213);
INSERT  IGNORE INTO `regions` VALUES (3460,'Halab',213);
INSERT  IGNORE INTO `regions` VALUES (3461,'Hamah',213);
INSERT  IGNORE INTO `regions` VALUES (3462,'Hims',213);
INSERT  IGNORE INTO `regions` VALUES (3463,'Idlib',213);
INSERT  IGNORE INTO `regions` VALUES (3464,'Madinat Dimashq',213);
INSERT  IGNORE INTO `regions` VALUES (3465,'Tartus',213);
INSERT  IGNORE INTO `regions` VALUES (3466,'al-Hasakah',213);
INSERT  IGNORE INTO `regions` VALUES (3467,'al-Ladhiqiyah',213);
INSERT  IGNORE INTO `regions` VALUES (3468,'al-Qunaytirah',213);
INSERT  IGNORE INTO `regions` VALUES (3469,'ar-Raqqah',213);
INSERT  IGNORE INTO `regions` VALUES (3470,'as-Suwayda',213);
INSERT  IGNORE INTO `regions` VALUES (3471,'Changhwa',214);
INSERT  IGNORE INTO `regions` VALUES (3472,'Chiayi Hsien',214);
INSERT  IGNORE INTO `regions` VALUES (3473,'Chiayi Shih',214);
INSERT  IGNORE INTO `regions` VALUES (3474,'Eastern Taipei',214);
INSERT  IGNORE INTO `regions` VALUES (3475,'Hsinchu Hsien',214);
INSERT  IGNORE INTO `regions` VALUES (3476,'Hsinchu Shih',214);
INSERT  IGNORE INTO `regions` VALUES (3477,'Hualien',214);
INSERT  IGNORE INTO `regions` VALUES (3478,'Ilan',214);
INSERT  IGNORE INTO `regions` VALUES (3479,'Kaohsiung Hsien',214);
INSERT  IGNORE INTO `regions` VALUES (3480,'Kaohsiung Shih',214);
INSERT  IGNORE INTO `regions` VALUES (3481,'Keelung Shih',214);
INSERT  IGNORE INTO `regions` VALUES (3482,'Kinmen',214);
INSERT  IGNORE INTO `regions` VALUES (3483,'Miaoli',214);
INSERT  IGNORE INTO `regions` VALUES (3484,'Nantou',214);
INSERT  IGNORE INTO `regions` VALUES (3485,'Northern Taiwan',214);
INSERT  IGNORE INTO `regions` VALUES (3486,'Penghu',214);
INSERT  IGNORE INTO `regions` VALUES (3487,'Pingtung',214);
INSERT  IGNORE INTO `regions` VALUES (3488,'Taichung',214);
INSERT  IGNORE INTO `regions` VALUES (3489,'Taichung Hsien',214);
INSERT  IGNORE INTO `regions` VALUES (3490,'Taichung Shih',214);
INSERT  IGNORE INTO `regions` VALUES (3491,'Tainan Hsien',214);
INSERT  IGNORE INTO `regions` VALUES (3492,'Tainan Shih',214);
INSERT  IGNORE INTO `regions` VALUES (3493,'Taipei Hsien',214);
INSERT  IGNORE INTO `regions` VALUES (3494,'Taipei Shih / Taipei Hsien',214);
INSERT  IGNORE INTO `regions` VALUES (3495,'Taitung',214);
INSERT  IGNORE INTO `regions` VALUES (3496,'Taoyuan',214);
INSERT  IGNORE INTO `regions` VALUES (3497,'Yilan',214);
INSERT  IGNORE INTO `regions` VALUES (3498,'Yun-Lin Hsien',214);
INSERT  IGNORE INTO `regions` VALUES (3499,'Yunlin',214);
INSERT  IGNORE INTO `regions` VALUES (3500,'Dushanbe',215);
INSERT  IGNORE INTO `regions` VALUES (3501,'Gorno-Badakhshan',215);
INSERT  IGNORE INTO `regions` VALUES (3502,'Karotegin',215);
INSERT  IGNORE INTO `regions` VALUES (3503,'Khatlon',215);
INSERT  IGNORE INTO `regions` VALUES (3504,'Sughd',215);
INSERT  IGNORE INTO `regions` VALUES (3505,'Arusha',216);
INSERT  IGNORE INTO `regions` VALUES (3506,'Dar es Salaam',216);
INSERT  IGNORE INTO `regions` VALUES (3507,'Dodoma',216);
INSERT  IGNORE INTO `regions` VALUES (3508,'Iringa',216);
INSERT  IGNORE INTO `regions` VALUES (3509,'Kagera',216);
INSERT  IGNORE INTO `regions` VALUES (3510,'Kigoma',216);
INSERT  IGNORE INTO `regions` VALUES (3511,'Kilimanjaro',216);
INSERT  IGNORE INTO `regions` VALUES (3512,'Lindi',216);
INSERT  IGNORE INTO `regions` VALUES (3513,'Mara',216);
INSERT  IGNORE INTO `regions` VALUES (3514,'Mbeya',216);
INSERT  IGNORE INTO `regions` VALUES (3515,'Morogoro',216);
INSERT  IGNORE INTO `regions` VALUES (3516,'Mtwara',216);
INSERT  IGNORE INTO `regions` VALUES (3517,'Mwanza',216);
INSERT  IGNORE INTO `regions` VALUES (3518,'Pwani',216);
INSERT  IGNORE INTO `regions` VALUES (3519,'Rukwa',216);
INSERT  IGNORE INTO `regions` VALUES (3520,'Ruvuma',216);
INSERT  IGNORE INTO `regions` VALUES (3521,'Shinyanga',216);
INSERT  IGNORE INTO `regions` VALUES (3522,'Singida',216);
INSERT  IGNORE INTO `regions` VALUES (3523,'Tabora',216);
INSERT  IGNORE INTO `regions` VALUES (3524,'Tanga',216);
INSERT  IGNORE INTO `regions` VALUES (3525,'Zanzibar and Pemba',216);
INSERT  IGNORE INTO `regions` VALUES (3526,'Amnat Charoen',217);
INSERT  IGNORE INTO `regions` VALUES (3527,'Ang Thong',217);
INSERT  IGNORE INTO `regions` VALUES (3528,'Bangkok',217);
INSERT  IGNORE INTO `regions` VALUES (3529,'Buri Ram',217);
INSERT  IGNORE INTO `regions` VALUES (3530,'Chachoengsao',217);
INSERT  IGNORE INTO `regions` VALUES (3531,'Chai Nat',217);
INSERT  IGNORE INTO `regions` VALUES (3532,'Chaiyaphum',217);
INSERT  IGNORE INTO `regions` VALUES (3533,'Changwat Chaiyaphum',217);
INSERT  IGNORE INTO `regions` VALUES (3534,'Chanthaburi',217);
INSERT  IGNORE INTO `regions` VALUES (3535,'Chiang Mai',217);
INSERT  IGNORE INTO `regions` VALUES (3536,'Chiang Rai',217);
INSERT  IGNORE INTO `regions` VALUES (3537,'Chon Buri',217);
INSERT  IGNORE INTO `regions` VALUES (3538,'Chumphon',217);
INSERT  IGNORE INTO `regions` VALUES (3539,'Kalasin',217);
INSERT  IGNORE INTO `regions` VALUES (3540,'Kamphaeng Phet',217);
INSERT  IGNORE INTO `regions` VALUES (3541,'Kanchanaburi',217);
INSERT  IGNORE INTO `regions` VALUES (3542,'Khon Kaen',217);
INSERT  IGNORE INTO `regions` VALUES (3543,'Krabi',217);
INSERT  IGNORE INTO `regions` VALUES (3544,'Krung Thep',217);
INSERT  IGNORE INTO `regions` VALUES (3545,'Lampang',217);
INSERT  IGNORE INTO `regions` VALUES (3546,'Lamphun',217);
INSERT  IGNORE INTO `regions` VALUES (3547,'Loei',217);
INSERT  IGNORE INTO `regions` VALUES (3548,'Lop Buri',217);
INSERT  IGNORE INTO `regions` VALUES (3549,'Mae Hong Son',217);
INSERT  IGNORE INTO `regions` VALUES (3550,'Maha Sarakham',217);
INSERT  IGNORE INTO `regions` VALUES (3551,'Mukdahan',217);
INSERT  IGNORE INTO `regions` VALUES (3552,'Nakhon Nayok',217);
INSERT  IGNORE INTO `regions` VALUES (3553,'Nakhon Pathom',217);
INSERT  IGNORE INTO `regions` VALUES (3554,'Nakhon Phanom',217);
INSERT  IGNORE INTO `regions` VALUES (3555,'Nakhon Ratchasima',217);
INSERT  IGNORE INTO `regions` VALUES (3556,'Nakhon Sawan',217);
INSERT  IGNORE INTO `regions` VALUES (3557,'Nakhon Si Thammarat',217);
INSERT  IGNORE INTO `regions` VALUES (3558,'Nan',217);
INSERT  IGNORE INTO `regions` VALUES (3559,'Narathiwat',217);
INSERT  IGNORE INTO `regions` VALUES (3560,'Nong Bua Lam Phu',217);
INSERT  IGNORE INTO `regions` VALUES (3561,'Nong Khai',217);
INSERT  IGNORE INTO `regions` VALUES (3562,'Nonthaburi',217);
INSERT  IGNORE INTO `regions` VALUES (3563,'Pathum Thani',217);
INSERT  IGNORE INTO `regions` VALUES (3564,'Pattani',217);
INSERT  IGNORE INTO `regions` VALUES (3565,'Phangnga',217);
INSERT  IGNORE INTO `regions` VALUES (3566,'Phatthalung',217);
INSERT  IGNORE INTO `regions` VALUES (3567,'Phayao',217);
INSERT  IGNORE INTO `regions` VALUES (3568,'Phetchabun',217);
INSERT  IGNORE INTO `regions` VALUES (3569,'Phetchaburi',217);
INSERT  IGNORE INTO `regions` VALUES (3570,'Phichit',217);
INSERT  IGNORE INTO `regions` VALUES (3571,'Phitsanulok',217);
INSERT  IGNORE INTO `regions` VALUES (3572,'Phra Nakhon Si Ayutthaya',217);
INSERT  IGNORE INTO `regions` VALUES (3573,'Phrae',217);
INSERT  IGNORE INTO `regions` VALUES (3574,'Phuket',217);
INSERT  IGNORE INTO `regions` VALUES (3575,'Prachin Buri',217);
INSERT  IGNORE INTO `regions` VALUES (3576,'Prachuap Khiri Khan',217);
INSERT  IGNORE INTO `regions` VALUES (3577,'Ranong',217);
INSERT  IGNORE INTO `regions` VALUES (3578,'Ratchaburi',217);
INSERT  IGNORE INTO `regions` VALUES (3579,'Rayong',217);
INSERT  IGNORE INTO `regions` VALUES (3580,'Roi Et',217);
INSERT  IGNORE INTO `regions` VALUES (3581,'Sa Kaeo',217);
INSERT  IGNORE INTO `regions` VALUES (3582,'Sakon Nakhon',217);
INSERT  IGNORE INTO `regions` VALUES (3583,'Samut Prakan',217);
INSERT  IGNORE INTO `regions` VALUES (3584,'Samut Sakhon',217);
INSERT  IGNORE INTO `regions` VALUES (3585,'Samut Songkhran',217);
INSERT  IGNORE INTO `regions` VALUES (3586,'Saraburi',217);
INSERT  IGNORE INTO `regions` VALUES (3587,'Satun',217);
INSERT  IGNORE INTO `regions` VALUES (3588,'Si Sa Ket',217);
INSERT  IGNORE INTO `regions` VALUES (3589,'Sing Buri',217);
INSERT  IGNORE INTO `regions` VALUES (3590,'Songkhla',217);
INSERT  IGNORE INTO `regions` VALUES (3591,'Sukhothai',217);
INSERT  IGNORE INTO `regions` VALUES (3592,'Suphan Buri',217);
INSERT  IGNORE INTO `regions` VALUES (3593,'Surat Thani',217);
INSERT  IGNORE INTO `regions` VALUES (3594,'Surin',217);
INSERT  IGNORE INTO `regions` VALUES (3595,'Tak',217);
INSERT  IGNORE INTO `regions` VALUES (3596,'Trang',217);
INSERT  IGNORE INTO `regions` VALUES (3597,'Trat',217);
INSERT  IGNORE INTO `regions` VALUES (3598,'Ubon Ratchathani',217);
INSERT  IGNORE INTO `regions` VALUES (3599,'Udon Thani',217);
INSERT  IGNORE INTO `regions` VALUES (3600,'Uthai Thani',217);
INSERT  IGNORE INTO `regions` VALUES (3601,'Uttaradit',217);
INSERT  IGNORE INTO `regions` VALUES (3602,'Yala',217);
INSERT  IGNORE INTO `regions` VALUES (3603,'Yasothon',217);
INSERT  IGNORE INTO `regions` VALUES (3604,'Centre',218);
INSERT  IGNORE INTO `regions` VALUES (3605,'Kara',218);
INSERT  IGNORE INTO `regions` VALUES (3606,'Maritime',218);
INSERT  IGNORE INTO `regions` VALUES (3607,'Plateaux',218);
INSERT  IGNORE INTO `regions` VALUES (3608,'Savanes',218);
INSERT  IGNORE INTO `regions` VALUES (3609,'Atafu',219);
INSERT  IGNORE INTO `regions` VALUES (3610,'Fakaofo',219);
INSERT  IGNORE INTO `regions` VALUES (3611,'Nukunonu',219);
INSERT  IGNORE INTO `regions` VALUES (3612,'Eua',220);
INSERT  IGNORE INTO `regions` VALUES (3613,'Ha\'apai',220);
INSERT  IGNORE INTO `regions` VALUES (3614,'Niuas',220);
INSERT  IGNORE INTO `regions` VALUES (3615,'Tongatapu',220);
INSERT  IGNORE INTO `regions` VALUES (3616,'Vava\'u',220);
INSERT  IGNORE INTO `regions` VALUES (3617,'Arima-Tunapuna-Piarco',221);
INSERT  IGNORE INTO `regions` VALUES (3618,'Caroni',221);
INSERT  IGNORE INTO `regions` VALUES (3619,'Chaguanas',221);
INSERT  IGNORE INTO `regions` VALUES (3620,'Couva-Tabaquite-Talparo',221);
INSERT  IGNORE INTO `regions` VALUES (3621,'Diego Martin',221);
INSERT  IGNORE INTO `regions` VALUES (3622,'Glencoe',221);
INSERT  IGNORE INTO `regions` VALUES (3623,'Penal Debe',221);
INSERT  IGNORE INTO `regions` VALUES (3624,'Point Fortin',221);
INSERT  IGNORE INTO `regions` VALUES (3625,'Port of Spain',221);
INSERT  IGNORE INTO `regions` VALUES (3626,'Princes Town',221);
INSERT  IGNORE INTO `regions` VALUES (3627,'Saint George',221);
INSERT  IGNORE INTO `regions` VALUES (3628,'San Fernando',221);
INSERT  IGNORE INTO `regions` VALUES (3629,'San Juan',221);
INSERT  IGNORE INTO `regions` VALUES (3630,'Sangre Grande',221);
INSERT  IGNORE INTO `regions` VALUES (3631,'Siparia',221);
INSERT  IGNORE INTO `regions` VALUES (3632,'Tobago',221);
INSERT  IGNORE INTO `regions` VALUES (3633,'Aryanah',222);
INSERT  IGNORE INTO `regions` VALUES (3634,'Bajah',222);
INSERT  IGNORE INTO `regions` VALUES (3635,'Bin \'Arus',222);
INSERT  IGNORE INTO `regions` VALUES (3636,'Binzart',222);
INSERT  IGNORE INTO `regions` VALUES (3637,'Gouvernorat de Ariana',222);
INSERT  IGNORE INTO `regions` VALUES (3638,'Gouvernorat de Nabeul',222);
INSERT  IGNORE INTO `regions` VALUES (3639,'Gouvernorat de Sousse',222);
INSERT  IGNORE INTO `regions` VALUES (3640,'Hammamet Yasmine',222);
INSERT  IGNORE INTO `regions` VALUES (3641,'Jundubah',222);
INSERT  IGNORE INTO `regions` VALUES (3642,'Madaniyin',222);
INSERT  IGNORE INTO `regions` VALUES (3643,'Manubah',222);
INSERT  IGNORE INTO `regions` VALUES (3644,'Monastir',222);
INSERT  IGNORE INTO `regions` VALUES (3645,'Nabul',222);
INSERT  IGNORE INTO `regions` VALUES (3646,'Qabis',222);
INSERT  IGNORE INTO `regions` VALUES (3647,'Qafsah',222);
INSERT  IGNORE INTO `regions` VALUES (3648,'Qibili',222);
INSERT  IGNORE INTO `regions` VALUES (3649,'Safaqis',222);
INSERT  IGNORE INTO `regions` VALUES (3650,'Sfax',222);
INSERT  IGNORE INTO `regions` VALUES (3651,'Sidi Bu Zayd',222);
INSERT  IGNORE INTO `regions` VALUES (3652,'Silyanah',222);
INSERT  IGNORE INTO `regions` VALUES (3653,'Susah',222);
INSERT  IGNORE INTO `regions` VALUES (3654,'Tatawin',222);
INSERT  IGNORE INTO `regions` VALUES (3655,'Tawzar',222);
INSERT  IGNORE INTO `regions` VALUES (3656,'Tunis',222);
INSERT  IGNORE INTO `regions` VALUES (3657,'Zaghwan',222);
INSERT  IGNORE INTO `regions` VALUES (3658,'al-Kaf',222);
INSERT  IGNORE INTO `regions` VALUES (3659,'al-Mahdiyah',222);
INSERT  IGNORE INTO `regions` VALUES (3660,'al-Munastir',222);
INSERT  IGNORE INTO `regions` VALUES (3661,'al-Qasrayn',222);
INSERT  IGNORE INTO `regions` VALUES (3662,'al-Qayrawan',222);
INSERT  IGNORE INTO `regions` VALUES (3663,'Adana',223);
INSERT  IGNORE INTO `regions` VALUES (3664,'Adiyaman',223);
INSERT  IGNORE INTO `regions` VALUES (3665,'Afyon',223);
INSERT  IGNORE INTO `regions` VALUES (3666,'Agri',223);
INSERT  IGNORE INTO `regions` VALUES (3667,'Aksaray',223);
INSERT  IGNORE INTO `regions` VALUES (3668,'Amasya',223);
INSERT  IGNORE INTO `regions` VALUES (3669,'Ankara',223);
INSERT  IGNORE INTO `regions` VALUES (3670,'Antalya',223);
INSERT  IGNORE INTO `regions` VALUES (3671,'Ardahan',223);
INSERT  IGNORE INTO `regions` VALUES (3672,'Artvin',223);
INSERT  IGNORE INTO `regions` VALUES (3673,'Aydin',223);
INSERT  IGNORE INTO `regions` VALUES (3674,'Balikesir',223);
INSERT  IGNORE INTO `regions` VALUES (3675,'Bartin',223);
INSERT  IGNORE INTO `regions` VALUES (3676,'Batman',223);
INSERT  IGNORE INTO `regions` VALUES (3677,'Bayburt',223);
INSERT  IGNORE INTO `regions` VALUES (3678,'Bilecik',223);
INSERT  IGNORE INTO `regions` VALUES (3679,'Bingol',223);
INSERT  IGNORE INTO `regions` VALUES (3680,'Bitlis',223);
INSERT  IGNORE INTO `regions` VALUES (3681,'Bolu',223);
INSERT  IGNORE INTO `regions` VALUES (3682,'Burdur',223);
INSERT  IGNORE INTO `regions` VALUES (3683,'Bursa',223);
INSERT  IGNORE INTO `regions` VALUES (3684,'Canakkale',223);
INSERT  IGNORE INTO `regions` VALUES (3685,'Cankiri',223);
INSERT  IGNORE INTO `regions` VALUES (3686,'Corum',223);
INSERT  IGNORE INTO `regions` VALUES (3687,'Denizli',223);
INSERT  IGNORE INTO `regions` VALUES (3688,'Diyarbakir',223);
INSERT  IGNORE INTO `regions` VALUES (3689,'Duzce',223);
INSERT  IGNORE INTO `regions` VALUES (3690,'Edirne',223);
INSERT  IGNORE INTO `regions` VALUES (3691,'Elazig',223);
INSERT  IGNORE INTO `regions` VALUES (3692,'Erzincan',223);
INSERT  IGNORE INTO `regions` VALUES (3693,'Erzurum',223);
INSERT  IGNORE INTO `regions` VALUES (3694,'Eskisehir',223);
INSERT  IGNORE INTO `regions` VALUES (3695,'Gaziantep',223);
INSERT  IGNORE INTO `regions` VALUES (3696,'Giresun',223);
INSERT  IGNORE INTO `regions` VALUES (3697,'Gumushane',223);
INSERT  IGNORE INTO `regions` VALUES (3698,'Hakkari',223);
INSERT  IGNORE INTO `regions` VALUES (3699,'Hatay',223);
INSERT  IGNORE INTO `regions` VALUES (3700,'Icel',223);
INSERT  IGNORE INTO `regions` VALUES (3701,'Igdir',223);
INSERT  IGNORE INTO `regions` VALUES (3702,'Isparta',223);
INSERT  IGNORE INTO `regions` VALUES (3703,'Istanbul',223);
INSERT  IGNORE INTO `regions` VALUES (3704,'Izmir',223);
INSERT  IGNORE INTO `regions` VALUES (3705,'Kahramanmaras',223);
INSERT  IGNORE INTO `regions` VALUES (3706,'Karabuk',223);
INSERT  IGNORE INTO `regions` VALUES (3707,'Karaman',223);
INSERT  IGNORE INTO `regions` VALUES (3708,'Kars',223);
INSERT  IGNORE INTO `regions` VALUES (3709,'Karsiyaka',223);
INSERT  IGNORE INTO `regions` VALUES (3710,'Kastamonu',223);
INSERT  IGNORE INTO `regions` VALUES (3711,'Kayseri',223);
INSERT  IGNORE INTO `regions` VALUES (3712,'Kilis',223);
INSERT  IGNORE INTO `regions` VALUES (3713,'Kirikkale',223);
INSERT  IGNORE INTO `regions` VALUES (3714,'Kirklareli',223);
INSERT  IGNORE INTO `regions` VALUES (3715,'Kirsehir',223);
INSERT  IGNORE INTO `regions` VALUES (3716,'Kocaeli',223);
INSERT  IGNORE INTO `regions` VALUES (3717,'Konya',223);
INSERT  IGNORE INTO `regions` VALUES (3718,'Kutahya',223);
INSERT  IGNORE INTO `regions` VALUES (3719,'Lefkosa',223);
INSERT  IGNORE INTO `regions` VALUES (3720,'Malatya',223);
INSERT  IGNORE INTO `regions` VALUES (3721,'Manisa',223);
INSERT  IGNORE INTO `regions` VALUES (3722,'Mardin',223);
INSERT  IGNORE INTO `regions` VALUES (3723,'Mugla',223);
INSERT  IGNORE INTO `regions` VALUES (3724,'Mus',223);
INSERT  IGNORE INTO `regions` VALUES (3725,'Nevsehir',223);
INSERT  IGNORE INTO `regions` VALUES (3726,'Nigde',223);
INSERT  IGNORE INTO `regions` VALUES (3727,'Ordu',223);
INSERT  IGNORE INTO `regions` VALUES (3728,'Osmaniye',223);
INSERT  IGNORE INTO `regions` VALUES (3729,'Rize',223);
INSERT  IGNORE INTO `regions` VALUES (3730,'Sakarya',223);
INSERT  IGNORE INTO `regions` VALUES (3731,'Samsun',223);
INSERT  IGNORE INTO `regions` VALUES (3732,'Sanliurfa',223);
INSERT  IGNORE INTO `regions` VALUES (3733,'Siirt',223);
INSERT  IGNORE INTO `regions` VALUES (3734,'Sinop',223);
INSERT  IGNORE INTO `regions` VALUES (3735,'Sirnak',223);
INSERT  IGNORE INTO `regions` VALUES (3736,'Sivas',223);
INSERT  IGNORE INTO `regions` VALUES (3737,'Tekirdag',223);
INSERT  IGNORE INTO `regions` VALUES (3738,'Tokat',223);
INSERT  IGNORE INTO `regions` VALUES (3739,'Trabzon',223);
INSERT  IGNORE INTO `regions` VALUES (3740,'Tunceli',223);
INSERT  IGNORE INTO `regions` VALUES (3741,'Usak',223);
INSERT  IGNORE INTO `regions` VALUES (3742,'Van',223);
INSERT  IGNORE INTO `regions` VALUES (3743,'Yalova',223);
INSERT  IGNORE INTO `regions` VALUES (3744,'Yozgat',223);
INSERT  IGNORE INTO `regions` VALUES (3745,'Zonguldak',223);
INSERT  IGNORE INTO `regions` VALUES (3746,'Ahal',224);
INSERT  IGNORE INTO `regions` VALUES (3747,'Asgabat',224);
INSERT  IGNORE INTO `regions` VALUES (3748,'Balkan',224);
INSERT  IGNORE INTO `regions` VALUES (3749,'Dasoguz',224);
INSERT  IGNORE INTO `regions` VALUES (3750,'Lebap',224);
INSERT  IGNORE INTO `regions` VALUES (3751,'Mari',224);
INSERT  IGNORE INTO `regions` VALUES (3752,'Grand Turk',225);
INSERT  IGNORE INTO `regions` VALUES (3753,'South Caicos and East Caicos',225);
INSERT  IGNORE INTO `regions` VALUES (3754,'Funafuti',226);
INSERT  IGNORE INTO `regions` VALUES (3755,'Nanumanga',226);
INSERT  IGNORE INTO `regions` VALUES (3756,'Nanumea',226);
INSERT  IGNORE INTO `regions` VALUES (3757,'Niutao',226);
INSERT  IGNORE INTO `regions` VALUES (3758,'Nui',226);
INSERT  IGNORE INTO `regions` VALUES (3759,'Nukufetau',226);
INSERT  IGNORE INTO `regions` VALUES (3760,'Nukulaelae',226);
INSERT  IGNORE INTO `regions` VALUES (3761,'Vaitupu',226);
INSERT  IGNORE INTO `regions` VALUES (3762,'Central',227);
INSERT  IGNORE INTO `regions` VALUES (3763,'Eastern',227);
INSERT  IGNORE INTO `regions` VALUES (3764,'Northern',227);
INSERT  IGNORE INTO `regions` VALUES (3765,'Western',227);
INSERT  IGNORE INTO `regions` VALUES (3766,'Cherkas\'ka',228);
INSERT  IGNORE INTO `regions` VALUES (3767,'Chernihivs\'ka',228);
INSERT  IGNORE INTO `regions` VALUES (3768,'Chernivets\'ka',228);
INSERT  IGNORE INTO `regions` VALUES (3769,'Crimea',228);
INSERT  IGNORE INTO `regions` VALUES (3770,'Dnipropetrovska',228);
INSERT  IGNORE INTO `regions` VALUES (3771,'Donets\'ka',228);
INSERT  IGNORE INTO `regions` VALUES (3772,'Ivano-Frankivs\'ka',228);
INSERT  IGNORE INTO `regions` VALUES (3773,'Kharkiv',228);
INSERT  IGNORE INTO `regions` VALUES (3774,'Kharkov',228);
INSERT  IGNORE INTO `regions` VALUES (3775,'Khersonska',228);
INSERT  IGNORE INTO `regions` VALUES (3776,'Khmel\'nyts\'ka',228);
INSERT  IGNORE INTO `regions` VALUES (3777,'Kirovohrad',228);
INSERT  IGNORE INTO `regions` VALUES (3778,'Krym',228);
INSERT  IGNORE INTO `regions` VALUES (3779,'Kyyiv',228);
INSERT  IGNORE INTO `regions` VALUES (3780,'Kyyivs\'ka',228);
INSERT  IGNORE INTO `regions` VALUES (3781,'L\'vivs\'ka',228);
INSERT  IGNORE INTO `regions` VALUES (3782,'Luhans\'ka',228);
INSERT  IGNORE INTO `regions` VALUES (3783,'Mykolayivs\'ka',228);
INSERT  IGNORE INTO `regions` VALUES (3784,'Odes\'ka',228);
INSERT  IGNORE INTO `regions` VALUES (3785,'Odessa',228);
INSERT  IGNORE INTO `regions` VALUES (3786,'Poltavs\'ka',228);
INSERT  IGNORE INTO `regions` VALUES (3787,'Rivnens\'ka',228);
INSERT  IGNORE INTO `regions` VALUES (3788,'Sevastopol\'',228);
INSERT  IGNORE INTO `regions` VALUES (3789,'Sums\'ka',228);
INSERT  IGNORE INTO `regions` VALUES (3790,'Ternopil\'s\'ka',228);
INSERT  IGNORE INTO `regions` VALUES (3791,'Volyns\'ka',228);
INSERT  IGNORE INTO `regions` VALUES (3792,'Vynnyts\'ka',228);
INSERT  IGNORE INTO `regions` VALUES (3793,'Zakarpats\'ka',228);
INSERT  IGNORE INTO `regions` VALUES (3794,'Zaporizhia',228);
INSERT  IGNORE INTO `regions` VALUES (3795,'Zhytomyrs\'ka',228);
INSERT  IGNORE INTO `regions` VALUES (3796,'Abu Zabi',229);
INSERT  IGNORE INTO `regions` VALUES (3797,'Ajman',229);
INSERT  IGNORE INTO `regions` VALUES (3798,'Dubai',229);
INSERT  IGNORE INTO `regions` VALUES (3799,'Ras al-Khaymah',229);
INSERT  IGNORE INTO `regions` VALUES (3800,'Sharjah',229);
INSERT  IGNORE INTO `regions` VALUES (3801,'Sharjha',229);
INSERT  IGNORE INTO `regions` VALUES (3802,'Umm al Qaywayn',229);
INSERT  IGNORE INTO `regions` VALUES (3803,'al-Fujayrah',229);
INSERT  IGNORE INTO `regions` VALUES (3804,'ash-Shariqah',229);
INSERT  IGNORE INTO `regions` VALUES (3805,'Aberdeen',230);
INSERT  IGNORE INTO `regions` VALUES (3806,'Aberdeenshire',230);
INSERT  IGNORE INTO `regions` VALUES (3807,'Argyll',230);
INSERT  IGNORE INTO `regions` VALUES (3808,'Armagh',230);
INSERT  IGNORE INTO `regions` VALUES (3809,'Bedfordshire',230);
INSERT  IGNORE INTO `regions` VALUES (3810,'Belfast',230);
INSERT  IGNORE INTO `regions` VALUES (3811,'Berkshire',230);
INSERT  IGNORE INTO `regions` VALUES (3812,'Birmingham',230);
INSERT  IGNORE INTO `regions` VALUES (3813,'Brechin',230);
INSERT  IGNORE INTO `regions` VALUES (3814,'Bridgnorth',230);
INSERT  IGNORE INTO `regions` VALUES (3815,'Bristol',230);
INSERT  IGNORE INTO `regions` VALUES (3816,'Buckinghamshire',230);
INSERT  IGNORE INTO `regions` VALUES (3817,'Cambridge',230);
INSERT  IGNORE INTO `regions` VALUES (3818,'Cambridgeshire',230);
INSERT  IGNORE INTO `regions` VALUES (3819,'Channel Islands',230);
INSERT  IGNORE INTO `regions` VALUES (3820,'Cheshire',230);
INSERT  IGNORE INTO `regions` VALUES (3821,'Cleveland',230);
INSERT  IGNORE INTO `regions` VALUES (3822,'Co Fermanagh',230);
INSERT  IGNORE INTO `regions` VALUES (3823,'Conwy',230);
INSERT  IGNORE INTO `regions` VALUES (3824,'Cornwall',230);
INSERT  IGNORE INTO `regions` VALUES (3825,'Coventry',230);
INSERT  IGNORE INTO `regions` VALUES (3826,'Craven Arms',230);
INSERT  IGNORE INTO `regions` VALUES (3827,'Cumbria',230);
INSERT  IGNORE INTO `regions` VALUES (3828,'Denbighshire',230);
INSERT  IGNORE INTO `regions` VALUES (3829,'Derby',230);
INSERT  IGNORE INTO `regions` VALUES (3830,'Derbyshire',230);
INSERT  IGNORE INTO `regions` VALUES (3831,'Devon',230);
INSERT  IGNORE INTO `regions` VALUES (3832,'Dial Code Dungannon',230);
INSERT  IGNORE INTO `regions` VALUES (3833,'Didcot',230);
INSERT  IGNORE INTO `regions` VALUES (3834,'Dorset',230);
INSERT  IGNORE INTO `regions` VALUES (3835,'Dunbartonshire',230);
INSERT  IGNORE INTO `regions` VALUES (3836,'Durham',230);
INSERT  IGNORE INTO `regions` VALUES (3837,'East Dunbartonshire',230);
INSERT  IGNORE INTO `regions` VALUES (3838,'East Lothian',230);
INSERT  IGNORE INTO `regions` VALUES (3839,'East Midlands',230);
INSERT  IGNORE INTO `regions` VALUES (3840,'East Sussex',230);
INSERT  IGNORE INTO `regions` VALUES (3841,'East Yorkshire',230);
INSERT  IGNORE INTO `regions` VALUES (3842,'England',230);
INSERT  IGNORE INTO `regions` VALUES (3843,'Essex',230);
INSERT  IGNORE INTO `regions` VALUES (3844,'Fermanagh',230);
INSERT  IGNORE INTO `regions` VALUES (3845,'Fife',230);
INSERT  IGNORE INTO `regions` VALUES (3846,'Flintshire',230);
INSERT  IGNORE INTO `regions` VALUES (3847,'Fulham',230);
INSERT  IGNORE INTO `regions` VALUES (3848,'Gainsborough',230);
INSERT  IGNORE INTO `regions` VALUES (3849,'Glocestershire',230);
INSERT  IGNORE INTO `regions` VALUES (3850,'Gwent',230);
INSERT  IGNORE INTO `regions` VALUES (3851,'Hampshire',230);
INSERT  IGNORE INTO `regions` VALUES (3852,'Hants',230);
INSERT  IGNORE INTO `regions` VALUES (3853,'Herefordshire',230);
INSERT  IGNORE INTO `regions` VALUES (3854,'Hertfordshire',230);
INSERT  IGNORE INTO `regions` VALUES (3855,'Ireland',230);
INSERT  IGNORE INTO `regions` VALUES (3856,'Isle Of Man',230);
INSERT  IGNORE INTO `regions` VALUES (3857,'Isle of Wight',230);
INSERT  IGNORE INTO `regions` VALUES (3858,'Kenford',230);
INSERT  IGNORE INTO `regions` VALUES (3859,'Kent',230);
INSERT  IGNORE INTO `regions` VALUES (3860,'Kilmarnock',230);
INSERT  IGNORE INTO `regions` VALUES (3861,'Lanarkshire',230);
INSERT  IGNORE INTO `regions` VALUES (3862,'Lancashire',230);
INSERT  IGNORE INTO `regions` VALUES (3863,'Leicestershire',230);
INSERT  IGNORE INTO `regions` VALUES (3864,'Lincolnshire',230);
INSERT  IGNORE INTO `regions` VALUES (3865,'Llanymynech',230);
INSERT  IGNORE INTO `regions` VALUES (3866,'London',230);
INSERT  IGNORE INTO `regions` VALUES (3867,'Ludlow',230);
INSERT  IGNORE INTO `regions` VALUES (3868,'Manchester',230);
INSERT  IGNORE INTO `regions` VALUES (3869,'Mayfair',230);
INSERT  IGNORE INTO `regions` VALUES (3870,'Merseyside',230);
INSERT  IGNORE INTO `regions` VALUES (3871,'Mid Glamorgan',230);
INSERT  IGNORE INTO `regions` VALUES (3872,'Middlesex',230);
INSERT  IGNORE INTO `regions` VALUES (3873,'Mildenhall',230);
INSERT  IGNORE INTO `regions` VALUES (3874,'Monmouthshire',230);
INSERT  IGNORE INTO `regions` VALUES (3875,'Newton Stewart',230);
INSERT  IGNORE INTO `regions` VALUES (3876,'Norfolk',230);
INSERT  IGNORE INTO `regions` VALUES (3877,'North Humberside',230);
INSERT  IGNORE INTO `regions` VALUES (3878,'North Yorkshire',230);
INSERT  IGNORE INTO `regions` VALUES (3879,'Northamptonshire',230);
INSERT  IGNORE INTO `regions` VALUES (3880,'Northants',230);
INSERT  IGNORE INTO `regions` VALUES (3881,'Northern Ireland',230);
INSERT  IGNORE INTO `regions` VALUES (3882,'Northumberland',230);
INSERT  IGNORE INTO `regions` VALUES (3883,'Nottinghamshire',230);
INSERT  IGNORE INTO `regions` VALUES (3884,'Oxford',230);
INSERT  IGNORE INTO `regions` VALUES (3885,'Powys',230);
INSERT  IGNORE INTO `regions` VALUES (3886,'Roos-shire',230);
INSERT  IGNORE INTO `regions` VALUES (3887,'SUSSEX',230);
INSERT  IGNORE INTO `regions` VALUES (3888,'Sark',230);
INSERT  IGNORE INTO `regions` VALUES (3889,'Scotland',230);
INSERT  IGNORE INTO `regions` VALUES (3890,'Scottish Borders',230);
INSERT  IGNORE INTO `regions` VALUES (3891,'Shropshire',230);
INSERT  IGNORE INTO `regions` VALUES (3892,'Somerset',230);
INSERT  IGNORE INTO `regions` VALUES (3893,'South Glamorgan',230);
INSERT  IGNORE INTO `regions` VALUES (3894,'South Wales',230);
INSERT  IGNORE INTO `regions` VALUES (3895,'South Yorkshire',230);
INSERT  IGNORE INTO `regions` VALUES (3896,'Southwell',230);
INSERT  IGNORE INTO `regions` VALUES (3897,'Staffordshire',230);
INSERT  IGNORE INTO `regions` VALUES (3898,'Strabane',230);
INSERT  IGNORE INTO `regions` VALUES (3899,'Suffolk',230);
INSERT  IGNORE INTO `regions` VALUES (3900,'Surrey',230);
INSERT  IGNORE INTO `regions` VALUES (3901,'Sussex',230);
INSERT  IGNORE INTO `regions` VALUES (3902,'Twickenham',230);
INSERT  IGNORE INTO `regions` VALUES (3903,'Tyne and Wear',230);
INSERT  IGNORE INTO `regions` VALUES (3904,'Tyrone',230);
INSERT  IGNORE INTO `regions` VALUES (3905,'Utah',230);
INSERT  IGNORE INTO `regions` VALUES (3906,'Wales',230);
INSERT  IGNORE INTO `regions` VALUES (3907,'Warwickshire',230);
INSERT  IGNORE INTO `regions` VALUES (3908,'West Lothian',230);
INSERT  IGNORE INTO `regions` VALUES (3909,'West Midlands',230);
INSERT  IGNORE INTO `regions` VALUES (3910,'West Sussex',230);
INSERT  IGNORE INTO `regions` VALUES (3911,'West Yorkshire',230);
INSERT  IGNORE INTO `regions` VALUES (3912,'Whissendine',230);
INSERT  IGNORE INTO `regions` VALUES (3913,'Wiltshire',230);
INSERT  IGNORE INTO `regions` VALUES (3914,'Wokingham',230);
INSERT  IGNORE INTO `regions` VALUES (3915,'Worcestershire',230);
INSERT  IGNORE INTO `regions` VALUES (3916,'Wrexham',230);
INSERT  IGNORE INTO `regions` VALUES (3917,'Wurttemberg',230);
INSERT  IGNORE INTO `regions` VALUES (3918,'Yorkshire',230);
INSERT  IGNORE INTO `regions` VALUES (3919,'Alabama',231);
INSERT  IGNORE INTO `regions` VALUES (3920,'Alaska',231);
INSERT  IGNORE INTO `regions` VALUES (3921,'Arizona',231);
INSERT  IGNORE INTO `regions` VALUES (3922,'Arkansas',231);
INSERT  IGNORE INTO `regions` VALUES (3923,'Byram',231);
INSERT  IGNORE INTO `regions` VALUES (3924,'California',231);
INSERT  IGNORE INTO `regions` VALUES (3925,'Cokato',231);
INSERT  IGNORE INTO `regions` VALUES (3926,'Colorado',231);
INSERT  IGNORE INTO `regions` VALUES (3927,'Connecticut',231);
INSERT  IGNORE INTO `regions` VALUES (3928,'Delaware',231);
INSERT  IGNORE INTO `regions` VALUES (3929,'District of Columbia',231);
INSERT  IGNORE INTO `regions` VALUES (3930,'Florida',231);
INSERT  IGNORE INTO `regions` VALUES (3931,'Georgia',231);
INSERT  IGNORE INTO `regions` VALUES (3932,'Hawaii',231);
INSERT  IGNORE INTO `regions` VALUES (3933,'Idaho',231);
INSERT  IGNORE INTO `regions` VALUES (3934,'Illinois',231);
INSERT  IGNORE INTO `regions` VALUES (3935,'Indiana',231);
INSERT  IGNORE INTO `regions` VALUES (3936,'Iowa',231);
INSERT  IGNORE INTO `regions` VALUES (3937,'Kansas',231);
INSERT  IGNORE INTO `regions` VALUES (3938,'Kentucky',231);
INSERT  IGNORE INTO `regions` VALUES (3939,'Louisiana',231);
INSERT  IGNORE INTO `regions` VALUES (3940,'Lowa',231);
INSERT  IGNORE INTO `regions` VALUES (3941,'Maine',231);
INSERT  IGNORE INTO `regions` VALUES (3942,'Maryland',231);
INSERT  IGNORE INTO `regions` VALUES (3943,'Massachusetts',231);
INSERT  IGNORE INTO `regions` VALUES (3944,'Medfield',231);
INSERT  IGNORE INTO `regions` VALUES (3945,'Michigan',231);
INSERT  IGNORE INTO `regions` VALUES (3946,'Minnesota',231);
INSERT  IGNORE INTO `regions` VALUES (3947,'Mississippi',231);
INSERT  IGNORE INTO `regions` VALUES (3948,'Missouri',231);
INSERT  IGNORE INTO `regions` VALUES (3949,'Montana',231);
INSERT  IGNORE INTO `regions` VALUES (3950,'Nebraska',231);
INSERT  IGNORE INTO `regions` VALUES (3951,'Nevada',231);
INSERT  IGNORE INTO `regions` VALUES (3952,'New Hampshire',231);
INSERT  IGNORE INTO `regions` VALUES (3953,'New Jersey',231);
INSERT  IGNORE INTO `regions` VALUES (3954,'New Jersy',231);
INSERT  IGNORE INTO `regions` VALUES (3955,'New Mexico',231);
INSERT  IGNORE INTO `regions` VALUES (3956,'New York',231);
INSERT  IGNORE INTO `regions` VALUES (3957,'North Carolina',231);
INSERT  IGNORE INTO `regions` VALUES (3958,'North Dakota',231);
INSERT  IGNORE INTO `regions` VALUES (3959,'Ohio',231);
INSERT  IGNORE INTO `regions` VALUES (3960,'Oklahoma',231);
INSERT  IGNORE INTO `regions` VALUES (3961,'Ontario',231);
INSERT  IGNORE INTO `regions` VALUES (3962,'Oregon',231);
INSERT  IGNORE INTO `regions` VALUES (3963,'Pennsylvania',231);
INSERT  IGNORE INTO `regions` VALUES (3964,'Ramey',231);
INSERT  IGNORE INTO `regions` VALUES (3965,'Rhode Island',231);
INSERT  IGNORE INTO `regions` VALUES (3966,'South Carolina',231);
INSERT  IGNORE INTO `regions` VALUES (3967,'South Dakota',231);
INSERT  IGNORE INTO `regions` VALUES (3968,'Sublimity',231);
INSERT  IGNORE INTO `regions` VALUES (3969,'Tennessee',231);
INSERT  IGNORE INTO `regions` VALUES (3970,'Texas',231);
INSERT  IGNORE INTO `regions` VALUES (3971,'Trimble',231);
INSERT  IGNORE INTO `regions` VALUES (3972,'Utah',231);
INSERT  IGNORE INTO `regions` VALUES (3973,'Vermont',231);
INSERT  IGNORE INTO `regions` VALUES (3974,'Virginia',231);
INSERT  IGNORE INTO `regions` VALUES (3975,'Washington',231);
INSERT  IGNORE INTO `regions` VALUES (3976,'West Virginia',231);
INSERT  IGNORE INTO `regions` VALUES (3977,'Wisconsin',231);
INSERT  IGNORE INTO `regions` VALUES (3978,'Wyoming',231);
INSERT  IGNORE INTO `regions` VALUES (3979,'United States Minor Outlying I',232);
INSERT  IGNORE INTO `regions` VALUES (3980,'Artigas',233);
INSERT  IGNORE INTO `regions` VALUES (3981,'Canelones',233);
INSERT  IGNORE INTO `regions` VALUES (3982,'Cerro Largo',233);
INSERT  IGNORE INTO `regions` VALUES (3983,'Colonia',233);
INSERT  IGNORE INTO `regions` VALUES (3984,'Durazno',233);
INSERT  IGNORE INTO `regions` VALUES (3985,'FLorida',233);
INSERT  IGNORE INTO `regions` VALUES (3986,'Flores',233);
INSERT  IGNORE INTO `regions` VALUES (3987,'Lavalleja',233);
INSERT  IGNORE INTO `regions` VALUES (3988,'Maldonado',233);
INSERT  IGNORE INTO `regions` VALUES (3989,'Montevideo',233);
INSERT  IGNORE INTO `regions` VALUES (3990,'Paysandu',233);
INSERT  IGNORE INTO `regions` VALUES (3991,'Rio Negro',233);
INSERT  IGNORE INTO `regions` VALUES (3992,'Rivera',233);
INSERT  IGNORE INTO `regions` VALUES (3993,'Rocha',233);
INSERT  IGNORE INTO `regions` VALUES (3994,'Salto',233);
INSERT  IGNORE INTO `regions` VALUES (3995,'San Jose',233);
INSERT  IGNORE INTO `regions` VALUES (3996,'Soriano',233);
INSERT  IGNORE INTO `regions` VALUES (3997,'Tacuarembo',233);
INSERT  IGNORE INTO `regions` VALUES (3998,'Treinta y Tres',233);
INSERT  IGNORE INTO `regions` VALUES (3999,'Andijon',234);
INSERT  IGNORE INTO `regions` VALUES (4000,'Buhoro',234);
INSERT  IGNORE INTO `regions` VALUES (4001,'Buxoro Viloyati',234);
INSERT  IGNORE INTO `regions` VALUES (4002,'Cizah',234);
INSERT  IGNORE INTO `regions` VALUES (4003,'Fargona',234);
INSERT  IGNORE INTO `regions` VALUES (4004,'Horazm',234);
INSERT  IGNORE INTO `regions` VALUES (4005,'Kaskadar',234);
INSERT  IGNORE INTO `regions` VALUES (4006,'Korakalpogiston',234);
INSERT  IGNORE INTO `regions` VALUES (4007,'Namangan',234);
INSERT  IGNORE INTO `regions` VALUES (4008,'Navoi',234);
INSERT  IGNORE INTO `regions` VALUES (4009,'Samarkand',234);
INSERT  IGNORE INTO `regions` VALUES (4010,'Sirdare',234);
INSERT  IGNORE INTO `regions` VALUES (4011,'Surhondar',234);
INSERT  IGNORE INTO `regions` VALUES (4012,'Toskent',234);
INSERT  IGNORE INTO `regions` VALUES (4013,'Malampa',235);
INSERT  IGNORE INTO `regions` VALUES (4014,'Penama',235);
INSERT  IGNORE INTO `regions` VALUES (4015,'Sanma',235);
INSERT  IGNORE INTO `regions` VALUES (4016,'Shefa',235);
INSERT  IGNORE INTO `regions` VALUES (4017,'Tafea',235);
INSERT  IGNORE INTO `regions` VALUES (4018,'Torba',235);
INSERT  IGNORE INTO `regions` VALUES (4019,'Vatican City State (Holy See)',236);
INSERT  IGNORE INTO `regions` VALUES (4020,'Amazonas',237);
INSERT  IGNORE INTO `regions` VALUES (4021,'Anzoategui',237);
INSERT  IGNORE INTO `regions` VALUES (4022,'Apure',237);
INSERT  IGNORE INTO `regions` VALUES (4023,'Aragua',237);
INSERT  IGNORE INTO `regions` VALUES (4024,'Barinas',237);
INSERT  IGNORE INTO `regions` VALUES (4025,'Bolivar',237);
INSERT  IGNORE INTO `regions` VALUES (4026,'Carabobo',237);
INSERT  IGNORE INTO `regions` VALUES (4027,'Cojedes',237);
INSERT  IGNORE INTO `regions` VALUES (4028,'Delta Amacuro',237);
INSERT  IGNORE INTO `regions` VALUES (4029,'Distrito Federal',237);
INSERT  IGNORE INTO `regions` VALUES (4030,'Falcon',237);
INSERT  IGNORE INTO `regions` VALUES (4031,'Guarico',237);
INSERT  IGNORE INTO `regions` VALUES (4032,'Lara',237);
INSERT  IGNORE INTO `regions` VALUES (4033,'Merida',237);
INSERT  IGNORE INTO `regions` VALUES (4034,'Miranda',237);
INSERT  IGNORE INTO `regions` VALUES (4035,'Monagas',237);
INSERT  IGNORE INTO `regions` VALUES (4036,'Nueva Esparta',237);
INSERT  IGNORE INTO `regions` VALUES (4037,'Portuguesa',237);
INSERT  IGNORE INTO `regions` VALUES (4038,'Sucre',237);
INSERT  IGNORE INTO `regions` VALUES (4039,'Tachira',237);
INSERT  IGNORE INTO `regions` VALUES (4040,'Trujillo',237);
INSERT  IGNORE INTO `regions` VALUES (4041,'Vargas',237);
INSERT  IGNORE INTO `regions` VALUES (4042,'Yaracuy',237);
INSERT  IGNORE INTO `regions` VALUES (4043,'Zulia',237);
INSERT  IGNORE INTO `regions` VALUES (4044,'Bac Giang',238);
INSERT  IGNORE INTO `regions` VALUES (4045,'Binh Dinh',238);
INSERT  IGNORE INTO `regions` VALUES (4046,'Binh Duong',238);
INSERT  IGNORE INTO `regions` VALUES (4047,'Da Nang',238);
INSERT  IGNORE INTO `regions` VALUES (4048,'Dong Bang Song Cuu Long',238);
INSERT  IGNORE INTO `regions` VALUES (4049,'Dong Bang Song Hong',238);
INSERT  IGNORE INTO `regions` VALUES (4050,'Dong Nai',238);
INSERT  IGNORE INTO `regions` VALUES (4051,'Dong Nam Bo',238);
INSERT  IGNORE INTO `regions` VALUES (4052,'Duyen Hai Mien Trung',238);
INSERT  IGNORE INTO `regions` VALUES (4053,'Hanoi',238);
INSERT  IGNORE INTO `regions` VALUES (4054,'Hung Yen',238);
INSERT  IGNORE INTO `regions` VALUES (4055,'Khu Bon Cu',238);
INSERT  IGNORE INTO `regions` VALUES (4056,'Long An',238);
INSERT  IGNORE INTO `regions` VALUES (4057,'Mien Nui Va Trung Du',238);
INSERT  IGNORE INTO `regions` VALUES (4058,'Thai Nguyen',238);
INSERT  IGNORE INTO `regions` VALUES (4059,'Thanh Pho Ho Chi Minh',238);
INSERT  IGNORE INTO `regions` VALUES (4060,'Thu Do Ha Noi',238);
INSERT  IGNORE INTO `regions` VALUES (4061,'Tinh Can Tho',238);
INSERT  IGNORE INTO `regions` VALUES (4062,'Tinh Da Nang',238);
INSERT  IGNORE INTO `regions` VALUES (4063,'Tinh Gia Lai',238);
INSERT  IGNORE INTO `regions` VALUES (4064,'Anegada',239);
INSERT  IGNORE INTO `regions` VALUES (4065,'Jost van Dyke',239);
INSERT  IGNORE INTO `regions` VALUES (4066,'Tortola',239);
INSERT  IGNORE INTO `regions` VALUES (4067,'Saint Croix',240);
INSERT  IGNORE INTO `regions` VALUES (4068,'Saint John',240);
INSERT  IGNORE INTO `regions` VALUES (4069,'Saint Thomas',240);
INSERT  IGNORE INTO `regions` VALUES (4070,'Alo',241);
INSERT  IGNORE INTO `regions` VALUES (4071,'Singave',241);
INSERT  IGNORE INTO `regions` VALUES (4072,'Wallis',241);
INSERT  IGNORE INTO `regions` VALUES (4073,'Bu Jaydur',242);
INSERT  IGNORE INTO `regions` VALUES (4074,'Wad-adh-Dhahab',242);
INSERT  IGNORE INTO `regions` VALUES (4075,'al-\'Ayun',242);
INSERT  IGNORE INTO `regions` VALUES (4076,'as-Samarah',242);
INSERT  IGNORE INTO `regions` VALUES (4077,'\'Adan',243);
INSERT  IGNORE INTO `regions` VALUES (4078,'Abyan',243);
INSERT  IGNORE INTO `regions` VALUES (4079,'Dhamar',243);
INSERT  IGNORE INTO `regions` VALUES (4080,'Hadramaut',243);
INSERT  IGNORE INTO `regions` VALUES (4081,'Hajjah',243);
INSERT  IGNORE INTO `regions` VALUES (4082,'Hudaydah',243);
INSERT  IGNORE INTO `regions` VALUES (4083,'Ibb',243);
INSERT  IGNORE INTO `regions` VALUES (4084,'Lahij',243);
INSERT  IGNORE INTO `regions` VALUES (4085,'Ma\'rib',243);
INSERT  IGNORE INTO `regions` VALUES (4086,'Madinat San\'a',243);
INSERT  IGNORE INTO `regions` VALUES (4087,'Sa\'dah',243);
INSERT  IGNORE INTO `regions` VALUES (4088,'Sana',243);
INSERT  IGNORE INTO `regions` VALUES (4089,'Shabwah',243);
INSERT  IGNORE INTO `regions` VALUES (4090,'Ta\'izz',243);
INSERT  IGNORE INTO `regions` VALUES (4091,'al-Bayda',243);
INSERT  IGNORE INTO `regions` VALUES (4092,'al-Hudaydah',243);
INSERT  IGNORE INTO `regions` VALUES (4093,'al-Jawf',243);
INSERT  IGNORE INTO `regions` VALUES (4094,'al-Mahrah',243);
INSERT  IGNORE INTO `regions` VALUES (4095,'al-Mahwit',243);
INSERT  IGNORE INTO `regions` VALUES (4096,'Central Serbia',244);
INSERT  IGNORE INTO `regions` VALUES (4097,'Kosovo and Metohija',244);
INSERT  IGNORE INTO `regions` VALUES (4098,'Montenegro',244);
INSERT  IGNORE INTO `regions` VALUES (4099,'Republic of Serbia',244);
INSERT  IGNORE INTO `regions` VALUES (4100,'Serbia',244);
INSERT  IGNORE INTO `regions` VALUES (4101,'Vojvodina',244);
INSERT  IGNORE INTO `regions` VALUES (4102,'Central',245);
INSERT  IGNORE INTO `regions` VALUES (4103,'Copperbelt',245);
INSERT  IGNORE INTO `regions` VALUES (4104,'Eastern',245);
INSERT  IGNORE INTO `regions` VALUES (4105,'Luapala',245);
INSERT  IGNORE INTO `regions` VALUES (4106,'Lusaka',245);
INSERT  IGNORE INTO `regions` VALUES (4107,'North-Western',245);
INSERT  IGNORE INTO `regions` VALUES (4108,'Northern',245);
INSERT  IGNORE INTO `regions` VALUES (4109,'Southern',245);
INSERT  IGNORE INTO `regions` VALUES (4110,'Western',245);
INSERT  IGNORE INTO `regions` VALUES (4111,'Bulawayo',246);
INSERT  IGNORE INTO `regions` VALUES (4112,'Harare',246);
INSERT  IGNORE INTO `regions` VALUES (4113,'Manicaland',246);
INSERT  IGNORE INTO `regions` VALUES (4114,'Mashonaland Central',246);
INSERT  IGNORE INTO `regions` VALUES (4115,'Mashonaland East',246);
INSERT  IGNORE INTO `regions` VALUES (4116,'Mashonaland West',246);
INSERT  IGNORE INTO `regions` VALUES (4117,'Masvingo',246);
INSERT  IGNORE INTO `regions` VALUES (4118,'Matabeleland North',246);
INSERT  IGNORE INTO `regions` VALUES (4119,'Matabeleland South',246);
INSERT  IGNORE INTO `regions` VALUES (4120,'Midlands',246);












/** COUNTRIES
INSERT INTO countries (id,name)
SELECT 1,
       "Argentine"
       WHERE NOT EXISTS (SELECT * FROM countries WHERE id=1);

INSERT INTO countries (id,name)
SELECT 2,
       "Chile"
       WHERE NOT EXISTS (SELECT * FROM countries WHERE id=2);

INSERT INTO countries (id,name)
SELECT 3,
       "United State"
       WHERE NOT EXISTS (SELECT * FROM countries WHERE id=3);

-- ARGENTINE REGIONS
INSERT INTO regions (id,name,country_id)
SELECT 1,
       "Buenos Aires",
       1
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=1);

INSERT INTO regions (id,name,country_id)
SELECT 2,
       "Catamarca",
       1
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=2);

INSERT INTO regions (id,name,country_id)
SELECT 3,
       "Chaco",
       1
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=3);

INSERT INTO regions (id,name,country_id)
SELECT 4,
       "Chubut",
       1
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=4);

INSERT INTO regions (id,name,country_id)
SELECT 5,
       "Córdoba",
       1
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=5);

INSERT INTO regions (id,name,country_id)
SELECT 6,
       "Corrientes",
       1
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=6);

INSERT INTO regions (id,name,country_id)
SELECT 7,
       "Entre Ríos",
       1
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=7);

INSERT INTO regions (id,name,country_id)
SELECT 8,
       "Formosa",
       1
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=8);

INSERT INTO regions (id,name,country_id)
SELECT 9,
       "Jujuy",
       1
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=9);

INSERT INTO regions (id,name,country_id)
SELECT 10,
       "La Pampa",
       1
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=10);

INSERT INTO regions (id,name,country_id)
SELECT 11,
       "La Rioja",
       1
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=11);

INSERT INTO regions (id,name,country_id)
SELECT 12,
       "Mendoza",
       1
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=12);

INSERT INTO regions (id,name,country_id)
SELECT 13,
       "Misiones",
       1
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=13);

INSERT INTO regions (id,name,country_id)
SELECT 14,
       "Neuquén",
       1
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=14);

INSERT INTO regions (id,name,country_id)
SELECT 15,
       "Río Negro",
       1
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=15);

INSERT INTO regions (id,name,country_id)
SELECT 16,
       "Salta",
       1
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=16);

INSERT INTO regions (id,name,country_id)
SELECT 17,
       "San Juan",
       1
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=17);

INSERT INTO regions (id,name,country_id)
SELECT 18,
       "San Luis",
       1
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=18);

INSERT INTO regions (id,name,country_id)
SELECT 19,
       "Santa Cruz",
       1
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=19);

INSERT INTO regions (id,name,country_id)
SELECT 20,
       "Santa Fe",
       1
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=20);

INSERT INTO regions (id,name,country_id)
SELECT 21,
       "Santiago del Estero",
       1
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=21);

INSERT INTO regions (id,name,country_id)
SELECT 22,
       "Tierra del Fuego",
       1
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=22);

INSERT INTO regions (id,name,country_id)
SELECT 23,
       "Tucumán",
       1
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=23);



-- CHILE REGIONS
INSERT INTO regions (id,name,country_id)
SELECT 24,
       "Arica y Parinacota",
       2
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=24);

INSERT INTO regions (id,name,country_id)
SELECT 25,
       "Tarapacá",
       2
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=25);

INSERT INTO regions (id,name,country_id)
SELECT 26,
       "Antofagasta",
       2
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=26);

INSERT INTO regions (id,name,country_id)
SELECT 27,
       "Atacama",
       2
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=27);

INSERT INTO regions (id,name,country_id)
SELECT 28,
       "Coquimbo",
       2
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=28);

INSERT INTO regions (id,name,country_id)
SELECT 29,
       "Valparaíso",
       2
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=29);

INSERT INTO regions (id,name,country_id)
SELECT 30,
       "Metropolitana de Santiago",
       2
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=30);

INSERT INTO regions (id,name,country_id)
SELECT 31,
       "Libertador General Bernardo O'Higgins",
       2
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=31);

INSERT INTO regions (id,name,country_id)
SELECT 32,
       "Maule",
       2
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=32);

INSERT INTO regions (id,name,country_id)
SELECT 33,
       "Biobío",
       2
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=33);

INSERT INTO regions (id,name,country_id)
SELECT 34,
       "La Araucanía",
       2
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=34);

INSERT INTO regions (id,name,country_id)
SELECT 35,
       "Los Ríos",
       2
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=35);

INSERT INTO regions (id,name,country_id)
SELECT 36,
       "Los Lagos",
       2
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=36);

INSERT INTO regions (id,name,country_id)
SELECT 37,
       "Aysén del General Carlos Ibáñez del Campo",
       2
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=37);

INSERT INTO regions (id,name,country_id)
SELECT 38,
       "Magallanes",
       2
       WHERE NOT EXISTS (SELECT * FROM regions WHERE id=38);*/


INSERT INTO locations (id,address,region_id)
SELECT 1,
       "Barrio Peluqueros",
       220
       WHERE NOT EXISTS (SELECT * FROM locations WHERE id=1);

INSERT INTO locations (id,address,region_id)
SELECT 2,
       "Av. las Tipas 2121 Godoy Cruz",
       220
       WHERE NOT EXISTS (SELECT * FROM locations WHERE id=2);

INSERT INTO locations (id,address,region_id)
SELECT 3,
       "Ruta Prov. 52 km. 16,5 Las Heras",
       220
       WHERE NOT EXISTS (SELECT * FROM locations WHERE id=3);




INSERT INTO users(id,created_at,email,is_active,updated_at,password,role_id,nickname)
SELECT 1,
       CURDATE(),
       'adriangh1321@gmail.com',
       TRUE,
       NULL,
       '$2a$10$DG0WbMHihHQilUssObgK6.b1iO8.RLGzqwYuSLUB31p/KvtEXmmke',
       2,
       'gustavo92' WHERE NOT EXISTS (SELECT * FROM users WHERE id=1);

INSERT INTO contact_informations (id,created_at,deleted_at,email,is_active,linked_in,phone,remote_repository,updated_at,facebook,twitter,instagram)
SELECT 1,
	   CURDATE(),
       NULL,
       "adriangh1321@gmail.com",
       TRUE,
       "linkedin.com/in/gustavohernandez-ing",
       "(261)5749942",
       "github.com/adriangh1321",
       NULL,
       "facebook.com/adrian.0119",
       "twitter.com/Gustavo89441547",
       "instagram.com/adriangh1321"
       WHERE NOT EXISTS (SELECT * FROM contact_informations WHERE id=1);

INSERT INTO current_companies (id,created_at,deleted_at,image,is_active,name,updated_at,url)
SELECT 1,
	   CURDATE(),
       NULL,
       "./assets/img/ecogas-logo.png",
       TRUE,
       "Ecogas",
       NULL,
       "ecogas.com.ar"
	   WHERE NOT EXISTS (SELECT * FROM current_companies WHERE id=1);

INSERT INTO portfolios (id, about_me,created_at,deleted_at,firstname,image,is_active,lastname,occupation,updated_at,current_company_id,contact_information_id,user_id,location_id)
SELECT 1,
       "I am a java backend developer!",
       CURDATE(),
       NULL,
       "Gustavo",
       "./assets/img/profile-photo.png",
       TRUE,
       "Hernández",
       "Chemical Engineer",
       NULL,
       1,
       1,
       1,
       1
	   WHERE NOT EXISTS (SELECT * FROM portfolios WHERE id=1);
       
INSERT INTO experiences (id,company,created_at,deleted_at,description,end_date,image,is_active,position,start_date,updated_at,portfolio_id,location_id)
SELECT 1,
	   "Ecogas",
       CURDATE(),
       NULL,
       "Loading and control of documentation of external works for the digitization department of Ecogas",
       '2018-05-30',
       "./assets/img/ecogas-logo.png",
       TRUE,
       "Documentation control",
       '2017-04-17',
       NULL,
       1,
       2
       WHERE NOT EXISTS (SELECT * FROM experiences WHERE id=1);
       
INSERT INTO experiences (id,company,created_at,deleted_at,description,end_date,image,is_active,position,start_date,updated_at,portfolio_id,location_id)
SELECT 2,
	   "Aguas Danone S.A.",
       CURDATE(),
       NULL,
       "Quality control at Villavicencio plant",
       '2010-10-30',
      "./assets/img/villavicencio-logo.jpg",
       TRUE,
       "Laboratory analyst",
       '2010-10-01',
       NULL,
       1,
       3
       WHERE NOT EXISTS (SELECT * FROM experiences WHERE id=2);
       
INSERT INTO educations (id,created_at,deleted_at,end_date,image,institute,is_active,start_date,title,updated_at,portfolio_id)
SELECT 1,
	   CURDATE(),
       NULL,
       '2019-11-25',
       "./assets/img/utn-logo.png",
       "Universidad Tecnológica Nacional",
       TRUE,
       '2011-03-01',
       "Chemical Engineer",
       NULL,
       1
       WHERE NOT EXISTS (SELECT * FROM educations WHERE id=1);
       
INSERT INTO educations (id,created_at,deleted_at,end_date,image,institute,is_active,start_date,title,updated_at,portfolio_id)
SELECT 2,
	   CURDATE(),
       NULL,
       '2014-12-01',
       "./assets/img/utn-logo.png",
       "Universidad Tecnológica Nacional",
       TRUE,
       '2011-03-01',
       "Chemical Technician",
       NULL,
       1
       WHERE NOT EXISTS (SELECT * FROM educations WHERE id=2);
       
INSERT INTO educations (id,created_at,deleted_at,end_date,image,institute,is_active,start_date,title,updated_at,portfolio_id)
SELECT 3,
	   CURDATE(),
       NULL,
       '2021-12-01',
       "./assets/img/logo-egg.JPG",
       "Egg Institute",
       TRUE,
       '2021-05-01',
       "Fullstack Developer",
       NULL,
       1
       WHERE NOT EXISTS (SELECT * FROM educations WHERE id=3);
       
INSERT INTO skills (id, created_at,deleted_at,is_active,name,percent,type,updated_at,portfolio_id)
SELECT 1,
	   CURDATE(),
       NULL,
       TRUE,
       "Authentication API",
       75,
       "HARD",
       NULL,
       1
       WHERE NOT EXISTS (SELECT * FROM skills WHERE id=1);
       
INSERT INTO skills (id, created_at,deleted_at,is_active,name,percent,type,updated_at,portfolio_id)
SELECT 2,
	   CURDATE(),
       NULL,
       TRUE,
      "Spring Security",
       50,
       "HARD",
       NULL,
       1
       WHERE NOT EXISTS (SELECT * FROM skills WHERE id=2);
       
INSERT INTO skills (id, created_at,deleted_at,is_active,name,percent,type,updated_at,portfolio_id)
SELECT 3,
	   CURDATE(),
       NULL,
       TRUE,
      "Teamwork",
       90,
       "SOFT",
       NULL,
       1
       WHERE NOT EXISTS (SELECT * FROM skills WHERE id=3);
       
INSERT INTO skills (id, created_at,deleted_at,is_active,name,percent,type,updated_at,portfolio_id)
SELECT 4,
	   CURDATE(),
       NULL,
       TRUE,
      "Problem-solving",
       100,
       "SOFT",
       NULL,
       1
       WHERE NOT EXISTS (SELECT * FROM skills WHERE id=4);
       
INSERT INTO skills (id, created_at,deleted_at,is_active,name,percent,type,updated_at,portfolio_id)
SELECT 5,
	   CURDATE(),
       NULL,
       TRUE,
      "Comunication",
       100,
       "SOFT",
       NULL,
       1
       WHERE NOT EXISTS (SELECT * FROM skills WHERE id=5);
       
INSERT INTO skills (id, created_at,deleted_at,is_active,name,percent,type,updated_at,portfolio_id)
SELECT 6,
	   CURDATE(),
       NULL,
       TRUE,
      "MVC Design Pattern",
       90,
       "HARD",
       NULL,
       1
       WHERE NOT EXISTS (SELECT * FROM skills WHERE id=6);

INSERT INTO projects (id,created_at,deleted_at,description,is_active,name,updated_at,portfolio_id,image,start_date,end_date,url)
SELECT 1,
	   CURDATE(),
       NULL,
       "This application allows you to publish your personal portfolio and manage your information, such as your studies, experiences, developed projects, contact details, among others, in order to find a job. The application is developed with Angular (Typescript) + Spring (Java) as the final project of the course Argentina Programa.",
       TRUE,
       "Portfolio App",
       NULL,
       1,
       "./assets/img/portfolio-project.JPG",
       '2022-03-01',
       '2022-07-26',
       "github.com/adriangh1321/Portfolio-frontend"
       WHERE NOT EXISTS (SELECT * FROM projects WHERE id=1);
       
INSERT INTO projects (id,created_at,deleted_at,description,is_active,name,updated_at,portfolio_id,image,start_date,end_date,url)
SELECT 2,
	   CURDATE(),
       NULL,
       "This API was developed with Java Spring for SOMOS MAS organization in Alkemy Aceleration.",
       TRUE,
       "API for Somos Mas NGO",
       NULL,
       1,
       "./assets/img/alkemy-project.JPG",
       '2022-02-01',
       '2022-03-20',
       "github.com/adriangh1321/AlkemyAceleracion-JAVA"
       WHERE NOT EXISTS (SELECT * FROM projects WHERE id=2);

INSERT INTO projects (id,created_at,deleted_at,description,is_active,name,updated_at,portfolio_id,image,start_date,end_date,url)
SELECT 3,
	   CURDATE(),
       NULL,
       "The application has services to manage the characters, movies and genres of the Disney world. To access them, the user is previously required to register in the application and authenticate. For this you will be given a JWT token valid for 10 hours. It's developed with Java Spring and MySql as the challenge of the pre-Aceleration Alkemy.",
       TRUE,
       "Disney Api",
       NULL,
       1,
       "./assets/img/disney-project.JPG",
       '2021-12-20',
       '2022-01-20',
       "github.com/adriangh1321/disney-api"
       WHERE NOT EXISTS (SELECT * FROM projects WHERE id=3);
       
INSERT INTO projects (id,created_at,deleted_at,description,is_active,name,updated_at,portfolio_id,image,start_date,end_date,url)
SELECT 4,
	   CURDATE(),
       NULL,
       "This web application allows you to register a user to rent an accommodation or offer it. It's developed with Java Spring, MySql, CSS, Thymeleaf and Bootstrap.",
       TRUE,
       "Accommodation Application",
       NULL,
       1,
       "./assets/img/estancias-project.JPG",
       '2021-12-01',
       '2022-02-01',
       "github.com/adriangh1321/estancias"
       WHERE NOT EXISTS (SELECT * FROM projects WHERE id=4);

INSERT INTO projects (id,created_at,deleted_at,description,is_active,name,updated_at,portfolio_id,image,start_date,end_date,url)
SELECT 5,
	   CURDATE(),
       NULL,
       "Library App allows user to find a book and rent it. The application is developed with Spring Java, MySql, CSS and Thymeleaf as the final project of the course Fullstack Egg.",
       TRUE,
       "Library App",
       NULL,
       1,
       "./assets/img/library-project.JPG",
       '2021-11-01',
       '2021-12-01',
       "github.com/adriangh1321/library"
       WHERE NOT EXISTS (SELECT * FROM projects WHERE id=5);
       
INSERT INTO interests (id,created_at,deleted_at,image,is_active,name,updated_at,portfolio_id)
SELECT 1,
	   CURDATE(),
       NULL,
       "./assets/img/game-interest.jpg",
       TRUE,
       "Games",
       NULL,
       1
       WHERE NOT EXISTS (SELECT * FROM interests WHERE id=1);
       
INSERT INTO interests (id,created_at,deleted_at,image,is_active,name,updated_at,portfolio_id)
SELECT 2,
	   CURDATE(),
       NULL,
       "./assets/img/movie-interest.jpg",
       TRUE,
       "Movies",
       NULL,
       1
       WHERE NOT EXISTS (SELECT * FROM interests WHERE id=2);








       
       


       
       

       