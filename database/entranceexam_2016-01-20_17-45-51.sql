# MySQL database backup
#
# Generated: Wednesday 20. January 2016 17:45 HKT
# Hostname: localhost
# Database: `entranceexam`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `answers`
# --------------------------------------------------------


#
# Delete any existing table `answers`
#

DROP TABLE IF EXISTS `answers`;


#
# Table structure of table `answers`
#

CREATE TABLE `answers` (
  `id` int(11) NOT NULL auto_increment,
  `question_id` int(11) NOT NULL,
  `text` varchar(500) NOT NULL,
  `correct` enum('1','0') NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=179 DEFAULT CHARSET=latin1 ;

#
# Data contents of table answers (168 records)
#
 
INSERT INTO `answers` VALUES (1, 3, 'hot air', '0') ; 
INSERT INTO `answers` VALUES (2, 3, 'unclean air', '1') ; 
INSERT INTO `answers` VALUES (3, 3, 'cool air ', '') ; 
INSERT INTO `answers` VALUES (4, 2, 'soil', '') ; 
INSERT INTO `answers` VALUES (5, 2, 'water', '') ; 
INSERT INTO `answers` VALUES (6, 2, 'air', '1') ; 
INSERT INTO `answers` VALUES (7, 1, 'injurious fog consisting smoke gas ', '1') ; 
INSERT INTO `answers` VALUES (8, 1, 'different kinds of impure gases', '') ; 
INSERT INTO `answers` VALUES (9, 1, 'different kinds of impure smoke', '') ; 
INSERT INTO `answers` VALUES (89, 25, 'Sunset at Manila Bay', '') ; 
INSERT INTO `answers` VALUES (88, 25, 'The Pride of the Filipino', '') ; 
INSERT INTO `answers` VALUES (13, 7, 'accumulated ash', '1') ; 
INSERT INTO `answers` VALUES (14, 7, 'white smoke', '') ; 
INSERT INTO `answers` VALUES (15, 7, 'impure nutrious', '') ; 
INSERT INTO `answers` VALUES (16, 9, 'delicious', '') ; 
INSERT INTO `answers` VALUES (17, 9, 'poisonous', '1') ; 
INSERT INTO `answers` VALUES (18, 9, 'nutritious', '') ; 
INSERT INTO `answers` VALUES (19, 10, 'accumulated smoke', '1') ; 
INSERT INTO `answers` VALUES (20, 10, 'smoke pipes', '') ; 
INSERT INTO `answers` VALUES (21, 10, 'warm temperature', '') ; 
INSERT INTO `answers` VALUES (22, 10, 'rising air current', '') ; 
INSERT INTO `answers` VALUES (23, 11, 'it causes air-borne disease', '') ; 
INSERT INTO `answers` VALUES (24, 11, 'it is formed by soot and ash', '') ; 
INSERT INTO `answers` VALUES (25, 11, 'it is toxic or poisonous', '1') ; 
INSERT INTO `answers` VALUES (26, 11, 'it is air pollutant and irritant', '') ; 
INSERT INTO `answers` VALUES (27, 12, 'causes of pollution', '1') ; 
INSERT INTO `answers` VALUES (28, 12, 'effects of pollution', '') ; 
INSERT INTO `answers` VALUES (29, 12, 'prevention of pollution', '') ; 
INSERT INTO `answers` VALUES (30, 12, 'kinds of pollution', '') ; 
INSERT INTO `answers` VALUES (31, 13, 'causes of pollution', '1') ; 
INSERT INTO `answers` VALUES (32, 13, 'Prevention of pollution', '') ; 
INSERT INTO `answers` VALUES (33, 13, 'Cause of pneumonia', '') ; 
INSERT INTO `answers` VALUES (34, 13, 'how soot is formed', '') ; 
INSERT INTO `answers` VALUES (35, 4, 'full of harm', '1') ; 
INSERT INTO `answers` VALUES (36, 4, 'not useful', '') ; 
INSERT INTO `answers` VALUES (37, 4, 'healthful', '') ; 
INSERT INTO `answers` VALUES (38, 14, 'Toxic materials are poisonous and thus should be avoided.', '') ; 
INSERT INTO `answers` VALUES (39, 14, 'There are no prevention to pollution, anywhere and anytime.', '') ; 
INSERT INTO `answers` VALUES (40, 14, 'The higher the pollution the more diseases will occur.', '1') ; 
INSERT INTO `answers` VALUES (41, 14, 'Pollution occurs to a much lesser degree in rural areas.', '') ; 
INSERT INTO `answers` VALUES (42, 5, 'The Philippines is known Province of the Orient Seas', '1') ; 
INSERT INTO `answers` VALUES (43, 5, 'The rice terraces of Mountain Province is a work of art and a wonder.', '') ; 
INSERT INTO `answers` VALUES (44, 5, 'The Maria Cristina Falls and the Underground River of Palawan Contribute to the Beauty of the Philippines', '') ; 
INSERT INTO `answers` VALUES (45, 5, 'The Beauty of the Philippines is a joy forever and source of pride', '') ; 
INSERT INTO `answers` VALUES (46, 6, 'beauty spots in the Philippines.', '1') ; 
INSERT INTO `answers` VALUES (47, 6, 'regions on the Philippines.', '') ; 
INSERT INTO `answers` VALUES (48, 6, 'business sectors in the Philippines.', '') ; 
INSERT INTO `answers` VALUES (49, 6, 'gifts and wealth in the country.', '') ; 
INSERT INTO `answers` VALUES (50, 8, 'disease of the lung', '1') ; 
INSERT INTO `answers` VALUES (51, 8, 'disease of the heart', '') ; 
INSERT INTO `answers` VALUES (52, 8, 'disease of the stomach', '') ; 
INSERT INTO `answers` VALUES (53, 15, 'lowers', '') ; 
INSERT INTO `answers` VALUES (54, 15, 'rises', '1') ; 
INSERT INTO `answers` VALUES (55, 15, 'cools', '') ; 
INSERT INTO `answers` VALUES (56, 16, 'rainy', '') ; 
INSERT INTO `answers` VALUES (57, 16, 'windless', '1') ; 
INSERT INTO `answers` VALUES (58, 16, 'cloudy', '') ; 
INSERT INTO `answers` VALUES (59, 24, 'cooler', '1') ; 
INSERT INTO `answers` VALUES (60, 24, 'hotter', '') ; 
INSERT INTO `answers` VALUES (61, 24, 'warmer', '') ; 
INSERT INTO `answers` VALUES (62, 17, 'warm', '1') ; 
INSERT INTO `answers` VALUES (63, 17, 'cool', '') ; 
INSERT INTO `answers` VALUES (64, 17, 'low', '') ; 
INSERT INTO `answers` VALUES (65, 18, 'stormy weather', '1') ; 
INSERT INTO `answers` VALUES (66, 18, 'hot weather', '') ; 
INSERT INTO `answers` VALUES (67, 18, 'changing weather', '') ; 
INSERT INTO `answers` VALUES (68, 19, 'Conditions of Temperature', '1') ; 
INSERT INTO `answers` VALUES (69, 19, 'Causes of Temperature', '') ; 
INSERT INTO `answers` VALUES (70, 19, 'Kinds of weather', '') ; 
INSERT INTO `answers` VALUES (71, 19, 'Effects of Temperature', '') ; 
INSERT INTO `answers` VALUES (72, 20, 'Windy days are uncomfortable days.', '') ; 
INSERT INTO `answers` VALUES (73, 20, 'Condition of temperature is dependent on the sun.', '1') ; 
INSERT INTO `answers` VALUES (74, 20, 'The sky is clear when there is no rain', '') ; 
INSERT INTO `answers` VALUES (75, 20, 'Temperature drops when it rains', '') ; 
INSERT INTO `answers` VALUES (76, 21, 'exposed', '') ; 
INSERT INTO `answers` VALUES (77, 21, 'shown', '') ; 
INSERT INTO `answers` VALUES (78, 21, 'hidden', '1') ; 
INSERT INTO `answers` VALUES (79, 21, 'brightened', '') ; 
INSERT INTO `answers` VALUES (80, 22, 'dark', '1') ; 
INSERT INTO `answers` VALUES (81, 22, 'bright', '') ; 
INSERT INTO `answers` VALUES (82, 22, 'brilliant', '') ; 
INSERT INTO `answers` VALUES (83, 22, 'hazy', '') ; 
INSERT INTO `answers` VALUES (84, 23, 'rainy day', '1') ; 
INSERT INTO `answers` VALUES (85, 23, 'bright day', '') ; 
INSERT INTO `answers` VALUES (86, 23, 'sunny day', '') ; 
INSERT INTO `answers` VALUES (87, 23, 'pleasant day', '') ; 
INSERT INTO `answers` VALUES (90, 25, 'Rice Terraces of the Mountain', '') ; 
INSERT INTO `answers` VALUES (91, 25, 'The Pearl of the Orient Seas', '1') ; 
INSERT INTO `answers` VALUES (92, 26, 'hydrogeb', '') ; 
INSERT INTO `answers` VALUES (93, 26, 'smoke', '1') ; 
INSERT INTO `answers` VALUES (94, 26, 'water vapor', '') ; 
INSERT INTO `answers` VALUES (95, 26, 'oxygen', '') ; 
INSERT INTO `answers` VALUES (96, 27, 'salt', '') ; 
INSERT INTO `answers` VALUES (97, 27, 'sugar', '') ; 
INSERT INTO `answers` VALUES (98, 27, 'sand', '1') ; 
INSERT INTO `answers` VALUES (99, 27, 'coffee', '') ; 
INSERT INTO `answers` VALUES (100, 28, 'drink the contents of the glass', '') ; 
INSERT INTO `answers` VALUES (101, 28, 'stir the contents of the glass', '1') ; 
INSERT INTO `answers` VALUES (102, 28, 'turn on the electric fan in front of the glass', '') ; 
INSERT INTO `answers` VALUES (103, 28, 'non of the above', '') ; 
INSERT INTO `answers` VALUES (104, 29, 'Energy is found every where', '') ; 
INSERT INTO `answers` VALUES (105, 29, 'Energy is the ability to do work', '1') ; 
INSERT INTO `answers` VALUES (106, 29, 'Energy comes from inside the Earth', '') ; 
INSERT INTO `answers` VALUES (107, 29, 'Energy destroys matter', '') ; 
INSERT INTO `answers` VALUES (108, 30, 'The food is physically changed', '') ; 
INSERT INTO `answers` VALUES (109, 30, 'The food is spoiled', '') ; 
INSERT INTO `answers` VALUES (110, 30, 'The food is chemically changed', '1') ; 
INSERT INTO `answers` VALUES (111, 30, 'The food does not taste goo', '') ; 
INSERT INTO `answers` VALUES (112, 31, 'It supports the body', '') ; 
INSERT INTO `answers` VALUES (113, 31, 'It allows the body to move', '') ; 
INSERT INTO `answers` VALUES (114, 31, 'It protects some of the body organs', '') ; 
INSERT INTO `answers` VALUES (115, 31, 'It sends messages to the muscles', '1') ; 
INSERT INTO `answers` VALUES (116, 32, 'Ingestion', '') ; 
INSERT INTO `answers` VALUES (117, 32, 'Digestion', '1') ; 
INSERT INTO `answers` VALUES (118, 32, 'Absorption', '') ; 
INSERT INTO `answers` VALUES (119, 32, 'Defecation', '') ; 
INSERT INTO `answers` VALUES (120, 33, 'The bar soap has more surfaces exposed to the water.', '') ; 
INSERT INTO `answers` VALUES (121, 33, 'The bar soap has a shape that make it dissolve faster.', '') ; 
INSERT INTO `answers` VALUES (122, 33, 'The powdered soap has more tiny particles exposed to the water.', '1') ; 
INSERT INTO `answers` VALUES (123, 33, 'All of the Above', '') ; 
INSERT INTO `answers` VALUES (124, 34, 'When the wind blows, it carries the foul air', '') ; 
INSERT INTO `answers` VALUES (125, 34, 'When the garbage decays, it produces foul air.', '1') ; 
INSERT INTO `answers` VALUES (126, 34, 'The garbage contains used cans and bottles.', '') ; 
INSERT INTO `answers` VALUES (127, 34, 'The garbage is buried', '') ; 
INSERT INTO `answers` VALUES (178, 35, 'skull', '1') ; 
INSERT INTO `answers` VALUES (129, 35, 'Ribs', '0') ; 
INSERT INTO `answers` VALUES (130, 35, 'Jawbone', '0') ; 
INSERT INTO `answers` VALUES (131, 35, 'collarbone', '0') ; 
INSERT INTO `answers` VALUES (138, 36, '2,648 r. 2', '') ; 
INSERT INTO `answers` VALUES (137, 36, '2,641', '') ; 
INSERT INTO `answers` VALUES (136, 36, '2,651', '1') ; 
INSERT INTO `answers` VALUES (139, 36, '2,948 r.4', '') ; 
INSERT INTO `answers` VALUES (140, 37, '24', '') ; 
INSERT INTO `answers` VALUES (141, 37, '48', '') ; 
INSERT INTO `answers` VALUES (142, 37, '512', '1') ; 
INSERT INTO `answers` VALUES (143, 37, '6,561', '') ; 
INSERT INTO `answers` VALUES (144, 38, '2', '') ; 
INSERT INTO `answers` VALUES (145, 38, '20', '') ; 
INSERT INTO `answers` VALUES (146, 38, '50', '1') ; 
INSERT INTO `answers` VALUES (147, 38, '200', '') ; 
INSERT INTO `answers` VALUES (148, 39, '137.834', '') ; 
INSERT INTO `answers` VALUES (149, 39, '146.834', '') ; 
INSERT INTO `answers` VALUES (150, 39, '147.734', '') ; 
INSERT INTO `answers` VALUES (151, 39, '147.834', '1') ; 
INSERT INTO `answers` VALUES (152, 40, '10', '') ; 
INSERT INTO `answers` VALUES (153, 40, '100', '') ; 
INSERT INTO `answers` VALUES (154, 40, '1000', '1') ; 
INSERT INTO `answers` VALUES (155, 40, '10000', '') ; 
INSERT INTO `answers` VALUES (156, 41, '85m', '') ; 
INSERT INTO `answers` VALUES (157, 41, '850m', '') ; 
INSERT INTO `answers` VALUES (158, 41, '8500m', '1') ; 
INSERT INTO `answers` VALUES (159, 41, '0.085m', '') ; 
INSERT INTO `answers` VALUES (160, 42, '9/10', '') ; 
INSERT INTO `answers` VALUES (161, 42, '1 1/20', '1') ; 
INSERT INTO `answers` VALUES (162, 42, '1 1/10', '') ; 
INSERT INTO `answers` VALUES (163, 42, '1 3/20', '') ; 
INSERT INTO `answers` VALUES (164, 43, '64/3', '1') ; 
INSERT INTO `answers` VALUES (165, 43, '56/3', '') ; 
INSERT INTO `answers` VALUES (166, 43, '16/3', '') ; 
INSERT INTO `answers` VALUES (167, 43, '1/3', '') ; 
INSERT INTO `answers` VALUES (168, 44, '415.0', '1') ; 
INSERT INTO `answers` VALUES (169, 44, '41.5', '') ; 
INSERT INTO `answers` VALUES (170, 44, '4.150', '') ; 
INSERT INTO `answers` VALUES (171, 44, '0.415', '') ; 
INSERT INTO `answers` VALUES (172, 45, '68,499,769', '') ; 
INSERT INTO `answers` VALUES (173, 45, '739,902,874', '') ; 
INSERT INTO `answers` VALUES (174, 45, '740,103,134', '1') ; 
INSERT INTO `answers` VALUES (175, 45, '740,903,974', '') ;
#
# End of data contents of table answers
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Wednesday 20. January 2016 17:45 HKT
# Hostname: localhost
# Database: `entranceexam`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `answers`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `intgwa`
# --------------------------------------------------------


#
# Delete any existing table `intgwa`
#

DROP TABLE IF EXISTS `intgwa`;


#
# Table structure of table `intgwa`
#

CREATE TABLE `intgwa` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `gwa` varchar(500) NOT NULL,
  `interview` double NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ;

#
# Data contents of table intgwa (1 records)
#
 
INSERT INTO `intgwa` VALUES (3, 2, '89', '18', '2016-01-20 03:18:20') ;
#
# End of data contents of table intgwa
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Wednesday 20. January 2016 17:45 HKT
# Hostname: localhost
# Database: `entranceexam`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `answers`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `intgwa`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `percentage`
# --------------------------------------------------------


#
# Delete any existing table `percentage`
#

DROP TABLE IF EXISTS `percentage`;


#
# Table structure of table `percentage`
#

CREATE TABLE `percentage` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL,
  `percent` double NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ;

#
# Data contents of table percentage (3 records)
#
 
INSERT INTO `percentage` VALUES (1, 'Exam', '40') ; 
INSERT INTO `percentage` VALUES (2, 'GWA', '40') ; 
INSERT INTO `percentage` VALUES (3, 'Interview', '20') ;
#
# End of data contents of table percentage
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Wednesday 20. January 2016 17:45 HKT
# Hostname: localhost
# Database: `entranceexam`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `answers`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `intgwa`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `percentage`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `question_category`
# --------------------------------------------------------


#
# Delete any existing table `question_category`
#

DROP TABLE IF EXISTS `question_category`;


#
# Table structure of table `question_category`
#

CREATE TABLE `question_category` (
  `id` int(11) NOT NULL auto_increment,
  `subject_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(3000) NOT NULL,
  `image_url` varchar(500) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ;

#
# Data contents of table question_category (3 records)
#
 
INSERT INTO `question_category` VALUES (1, 1, 'Test 1', 'The air we breathe can become dirty. Air becomes polluted when impurities mix with it. There are several factors that contribute of atmosphere.', '') ; 
INSERT INTO `question_category` VALUES (2, 1, 'Test 2', 'The philippines is known as the Pearl of the Orient Seas because of its beauty. The land is green throughout the year.', '') ; 
INSERT INTO `question_category` VALUES (3, 1, 'Test 3', 'When air is heated by the sun, the temperature rises. It is usually warmest during noontime when the sun\'s ray hits the earths\'s surface directly.', '') ;
#
# End of data contents of table question_category
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Wednesday 20. January 2016 17:45 HKT
# Hostname: localhost
# Database: `entranceexam`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `answers`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `intgwa`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `percentage`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `question_category`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `question_joint`
# --------------------------------------------------------


#
# Delete any existing table `question_joint`
#

DROP TABLE IF EXISTS `question_joint`;


#
# Table structure of table `question_joint`
#

CREATE TABLE `question_joint` (
  `id` int(11) NOT NULL auto_increment,
  `question_id` int(11) NOT NULL,
  `quest_cat_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 ;

#
# Data contents of table question_joint (25 records)
#
 
INSERT INTO `question_joint` VALUES (1, 3, 1) ; 
INSERT INTO `question_joint` VALUES (2, 1, 1) ; 
INSERT INTO `question_joint` VALUES (3, 2, 1) ; 
INSERT INTO `question_joint` VALUES (4, 4, 1) ; 
INSERT INTO `question_joint` VALUES (5, 10, 1) ; 
INSERT INTO `question_joint` VALUES (6, 14, 1) ; 
INSERT INTO `question_joint` VALUES (7, 13, 1) ; 
INSERT INTO `question_joint` VALUES (8, 9, 1) ; 
INSERT INTO `question_joint` VALUES (9, 8, 1) ; 
INSERT INTO `question_joint` VALUES (10, 12, 1) ; 
INSERT INTO `question_joint` VALUES (11, 7, 1) ; 
INSERT INTO `question_joint` VALUES (12, 11, 1) ; 
INSERT INTO `question_joint` VALUES (13, 5, 2) ; 
INSERT INTO `question_joint` VALUES (14, 6, 2) ; 
INSERT INTO `question_joint` VALUES (15, 15, 3) ; 
INSERT INTO `question_joint` VALUES (16, 16, 3) ; 
INSERT INTO `question_joint` VALUES (17, 17, 3) ; 
INSERT INTO `question_joint` VALUES (18, 18, 3) ; 
INSERT INTO `question_joint` VALUES (19, 19, 3) ; 
INSERT INTO `question_joint` VALUES (20, 20, 3) ; 
INSERT INTO `question_joint` VALUES (21, 21, 3) ; 
INSERT INTO `question_joint` VALUES (22, 22, 3) ; 
INSERT INTO `question_joint` VALUES (23, 23, 3) ; 
INSERT INTO `question_joint` VALUES (24, 24, 3) ; 
INSERT INTO `question_joint` VALUES (25, 25, 2) ;
#
# End of data contents of table question_joint
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Wednesday 20. January 2016 17:45 HKT
# Hostname: localhost
# Database: `entranceexam`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `answers`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `intgwa`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `percentage`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `question_category`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `question_joint`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `questions`
# --------------------------------------------------------


#
# Delete any existing table `questions`
#

DROP TABLE IF EXISTS `questions`;


#
# Table structure of table `questions`
#

CREATE TABLE `questions` (
  `id` int(11) NOT NULL auto_increment,
  `subject_id` int(11) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `image_url` varchar(500) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1 ;

#
# Data contents of table questions (45 records)
#
 
INSERT INTO `questions` VALUES (1, 1, 'Factories emit gasses and this combined with smoke and other gases result to "smog"', '') ; 
INSERT INTO `questions` VALUES (2, 1, 'Bird fly as high as the "atmosphere".', '') ; 
INSERT INTO `questions` VALUES (3, 1, 'Tress prevent air "pollution".', '') ; 
INSERT INTO `questions` VALUES (4, 1, 'Polluted air is "harmful" to man It can cause irritation of the respiratory organs of the body.', '') ; 
INSERT INTO `questions` VALUES (5, 1, 'What is the main idea of the paragraph?', '') ; 
INSERT INTO `questions` VALUES (6, 1, 'The ideas in the box are', '') ; 
INSERT INTO `questions` VALUES (7, 1, 'Accumulated smoke in pipes becomes "soot" and is dangerous to our health', '') ; 
INSERT INTO `questions` VALUES (8, 1, 'Tuberculosis is a lung "ailment"', '') ; 
INSERT INTO `questions` VALUES (9, 1, '"Toxic" food causes stomach ache.', '') ; 
INSERT INTO `questions` VALUES (10, 1, 'As mentioned in the paragraph above. what causes soor?', '') ; 
INSERT INTO `questions` VALUES (11, 1, 'Why does carbon monoxide causes irritation to the throat and the eyes?', '') ; 
INSERT INTO `questions` VALUES (12, 1, 'The words in the box refer to the ______________ .', '../question_photo/question_10.png') ; 
INSERT INTO `questions` VALUES (13, 1, 'What is the selection about?', '') ; 
INSERT INTO `questions` VALUES (14, 1, 'Based on the information given what conclusion can be made?', '') ; 
INSERT INTO `questions` VALUES (15, 1, 'When the air is heated by the sun, the temperature _______________ .', '') ; 
INSERT INTO `questions` VALUES (16, 1, 'Temperature gets warm when the day is _____________.', '') ; 
INSERT INTO `questions` VALUES (17, 1, 'On fine weather the air temperature is', '') ; 
INSERT INTO `questions` VALUES (18, 1, 'Temperature is low during ___________ .', '') ; 
INSERT INTO `questions` VALUES (19, 1, 'What title is best for the paragraph?', '') ; 
INSERT INTO `questions` VALUES (20, 1, 'Based on the information give. what conclusion can be drawn?', '') ; 
INSERT INTO `questions` VALUES (21, 1, '"Concealed" in sentence 5 means.', '') ; 
INSERT INTO `questions` VALUES (22, 1, '"Overcast" in sentence 5 means', '') ; 
INSERT INTO `questions` VALUES (23, 1, '"Stormy day" in sentence 7 means.', '') ; 
INSERT INTO `questions` VALUES (24, 1, 'When the sky is cloudy the air becomes __________', '') ; 
INSERT INTO `questions` VALUES (25, 1, 'What title is best for the paragraph?', '') ; 
INSERT INTO `questions` VALUES (26, 2, 'Which of the following pollutes the air?', '') ; 
INSERT INTO `questions` VALUES (27, 2, 'Which of the substances will not dissolve in water?', '') ; 
INSERT INTO `questions` VALUES (28, 2, 'Mother is preparing some calamansi juice. She squeezed the juice from the calamansi fruits into a glass of water. What should she do after adding sugar to the glass of water to make the sugar dissolve faster?', '') ; 
INSERT INTO `questions` VALUES (29, 2, 'Which sentence describes energy?', '') ; 
INSERT INTO `questions` VALUES (30, 2, 'A certain food changes in taste while you are chewing it. What does this show?', '') ; 
INSERT INTO `questions` VALUES (31, 2, 'Which of the following is not a function of the skeletal system?', '') ; 
INSERT INTO `questions` VALUES (32, 2, 'The process of breaking down food into simpler substances is called ________?', '') ; 
INSERT INTO `questions` VALUES (33, 2, 'Powdered soap will dissolve faster than a bar soap. Why?', '') ; 
INSERT INTO `questions` VALUES (34, 2, 'How does waste in the garbage pollutes the air?', '') ; 
INSERT INTO `questions` VALUES (35, 2, 'Which of the following bones protect the brain and the eyeballs?', '') ; 
INSERT INTO `questions` VALUES (36, 3, '90,134  ÷ 34  =', '') ; 
INSERT INTO `questions` VALUES (37, 3, '8³ =', '') ; 
INSERT INTO `questions` VALUES (38, 3, '20% if what number is 10.', '') ; 
INSERT INTO `questions` VALUES (39, 3, '57.3 x 2.58 =', '') ; 
INSERT INTO `questions` VALUES (40, 3, '1 meter is equal to how many centimeters?', '') ; 
INSERT INTO `questions` VALUES (41, 3, 'A boy ran a distance of 8.5 kilometer . How many meters did he run?', '') ; 
INSERT INTO `questions` VALUES (42, 3, '( 3/4 + 4/5 ) - 1/2 =', '') ; 
INSERT INTO `questions` VALUES (43, 3, '24 x 8/9 =', '') ; 
INSERT INTO `questions` VALUES (44, 3, '498 ÷ 1.2 =', '') ; 
INSERT INTO `questions` VALUES (45, 3, '814,503,219 - 74,600,345 =', '') ;
#
# End of data contents of table questions
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Wednesday 20. January 2016 17:45 HKT
# Hostname: localhost
# Database: `entranceexam`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `answers`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `intgwa`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `percentage`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `question_category`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `question_joint`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `questions`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `sections`
# --------------------------------------------------------


#
# Delete any existing table `sections`
#

DROP TABLE IF EXISTS `sections`;


#
# Table structure of table `sections`
#

CREATE TABLE `sections` (
  `id` int(11) NOT NULL auto_increment,
  `min` double NOT NULL,
  `max` double NOT NULL,
  `section` varchar(100) NOT NULL,
  `limits` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 ;

#
# Data contents of table sections (6 records)
#
 
INSERT INTO `sections` VALUES (1, '90', '100', 'Dignity', 30) ; 
INSERT INTO `sections` VALUES (2, '80', '90', 'Fedility', 30) ; 
INSERT INTO `sections` VALUES (3, '70', '80', 'Charity', 30) ; 
INSERT INTO `sections` VALUES (4, '60', '70', 'Faithful', 30) ; 
INSERT INTO `sections` VALUES (5, '50', '60', 'Kindness', 30) ; 
INSERT INTO `sections` VALUES (6, '40', '50', 'Humility', 30) ;
#
# End of data contents of table sections
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Wednesday 20. January 2016 17:45 HKT
# Hostname: localhost
# Database: `entranceexam`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `answers`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `intgwa`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `percentage`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `question_category`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `question_joint`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `questions`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `sections`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `student_details`
# --------------------------------------------------------


#
# Delete any existing table `student_details`
#

DROP TABLE IF EXISTS `student_details`;


#
# Table structure of table `student_details`
#

CREATE TABLE `student_details` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 ;

#
# Data contents of table student_details (20 records)
#
 
INSERT INTO `student_details` VALUES (1, 2, 3, 44, 168, '2016-01-13') ; 
INSERT INTO `student_details` VALUES (2, 2, 3, 38, 146, '2016-01-13') ; 
INSERT INTO `student_details` VALUES (3, 2, 3, 41, 158, '2016-01-13') ; 
INSERT INTO `student_details` VALUES (4, 2, 3, 40, 154, '2016-01-13') ; 
INSERT INTO `student_details` VALUES (5, 2, 3, 36, 136, '2016-01-13') ; 
INSERT INTO `student_details` VALUES (6, 2, 3, 37, 142, '2016-01-13') ; 
INSERT INTO `student_details` VALUES (7, 2, 3, 39, 151, '2016-01-13') ; 
INSERT INTO `student_details` VALUES (8, 2, 1, 16, 57, '2016-01-13') ; 
INSERT INTO `student_details` VALUES (9, 2, 1, 20, 73, '2016-01-13') ; 
INSERT INTO `student_details` VALUES (10, 2, 1, 17, 64, '2016-01-13') ; 
INSERT INTO `student_details` VALUES (11, 2, 2, 27, 98, '2016-01-20') ; 
INSERT INTO `student_details` VALUES (12, 2, 2, 32, 117, '2016-01-20') ; 
INSERT INTO `student_details` VALUES (13, 2, 2, 31, 114, '2016-01-20') ; 
INSERT INTO `student_details` VALUES (14, 2, 2, 26, 93, '2016-01-20') ; 
INSERT INTO `student_details` VALUES (15, 2, 2, 28, 101, '2016-01-20') ; 
INSERT INTO `student_details` VALUES (16, 2, 2, 35, 178, '2016-01-20') ; 
INSERT INTO `student_details` VALUES (17, 2, 2, 33, 122, '2016-01-20') ; 
INSERT INTO `student_details` VALUES (18, 2, 2, 34, 125, '2016-01-20') ; 
INSERT INTO `student_details` VALUES (19, 2, 2, 30, 109, '2016-01-20') ; 
INSERT INTO `student_details` VALUES (20, 2, 2, 29, 105, '2016-01-20') ;
#
# End of data contents of table student_details
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Wednesday 20. January 2016 17:45 HKT
# Hostname: localhost
# Database: `entranceexam`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `answers`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `intgwa`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `percentage`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `question_category`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `question_joint`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `questions`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `sections`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `student_details`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `student_section`
# --------------------------------------------------------


#
# Delete any existing table `student_section`
#

DROP TABLE IF EXISTS `student_section`;


#
# Table structure of table `student_section`
#

CREATE TABLE `student_section` (
  `id` int(11) NOT NULL auto_increment,
  `section_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `GWA` double NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table student_section (1 records)
#
 
INSERT INTO `student_section` VALUES (1, 4, 2, '68.71') ;
#
# End of data contents of table student_section
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Wednesday 20. January 2016 17:45 HKT
# Hostname: localhost
# Database: `entranceexam`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `answers`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `intgwa`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `percentage`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `question_category`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `question_joint`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `questions`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `sections`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `student_details`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `student_section`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `students`
# --------------------------------------------------------


#
# Delete any existing table `students`
#

DROP TABLE IF EXISTS `students`;


#
# Table structure of table `students`
#

CREATE TABLE `students` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `raw_score` float NOT NULL,
  `total_score` float NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ;

#
# Data contents of table students (3 records)
#
 
INSERT INTO `students` VALUES (1, 2, 3, '7', '10', '2016-01-13') ; 
INSERT INTO `students` VALUES (2, 2, 1, '2', '26', '2016-01-13') ; 
INSERT INTO `students` VALUES (3, 2, 2, '8', '10', '2016-01-20') ;
#
# End of data contents of table students
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Wednesday 20. January 2016 17:45 HKT
# Hostname: localhost
# Database: `entranceexam`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `answers`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `intgwa`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `percentage`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `question_category`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `question_joint`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `questions`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `sections`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `student_details`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `student_section`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `students`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------


#
# Delete any existing table `subject`
#

DROP TABLE IF EXISTS `subject`;


#
# Table structure of table `subject`
#

CREATE TABLE `subject` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ;

#
# Data contents of table subject (3 records)
#
 
INSERT INTO `subject` VALUES (1, 'English', '') ; 
INSERT INTO `subject` VALUES (2, 'Science', 'Science and Technology') ; 
INSERT INTO `subject` VALUES (3, 'Math', 'Mathematics') ;
#
# End of data contents of table subject
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Wednesday 20. January 2016 17:45 HKT
# Hostname: localhost
# Database: `entranceexam`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `answers`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `intgwa`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `percentage`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `question_category`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `question_joint`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `questions`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `sections`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `student_details`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `student_section`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `students`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `userlevels`
# --------------------------------------------------------


#
# Delete any existing table `userlevels`
#

DROP TABLE IF EXISTS `userlevels`;


#
# Table structure of table `userlevels`
#

CREATE TABLE `userlevels` (
  `id` int(11) NOT NULL auto_increment,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

#
# Data contents of table userlevels (0 records)
#

#
# End of data contents of table userlevels
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Wednesday 20. January 2016 17:45 HKT
# Hostname: localhost
# Database: `entranceexam`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `answers`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `intgwa`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `percentage`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `question_category`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `question_joint`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `questions`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `sections`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `student_details`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `student_section`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `students`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `userlevels`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------


#
# Delete any existing table `users`
#

DROP TABLE IF EXISTS `users`;


#
# Table structure of table `users`
#

CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `Fname` varchar(50) NOT NULL,
  `Mname` varchar(50) NOT NULL,
  `Lname` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `Cnumber` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `ULevel` int(11) NOT NULL,
  `status` enum('1','0') NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ;

#
# Data contents of table users (2 records)
#
 
INSERT INTO `users` VALUES (1, 'admin', 'admin', 'admin', 'admin', '12345', 'admin', 'admin', 5, '1') ; 
INSERT INTO `users` VALUES (2, 'Leo', 'Marapaoc', 'Maristela', 'Cogon Ormoc City', '09482086635', 'student1', '12345', 1, '1') ;
#
# End of data contents of table users
# --------------------------------------------------------

