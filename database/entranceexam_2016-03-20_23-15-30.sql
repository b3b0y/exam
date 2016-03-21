# MySQL database backup
#
# Generated: Sunday 20. March 2016 23:15 HKT
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
) ENGINE=MyISAM AUTO_INCREMENT=493 DEFAULT CHARSET=latin1 ;

#
# Data contents of table answers (492 records)
#
 
INSERT INTO `answers` VALUES (1, 1, 'unclean air', '1') ; 
INSERT INTO `answers` VALUES (2, 1, 'hot air', '') ; 
INSERT INTO `answers` VALUES (3, 1, 'cool air', '') ; 
INSERT INTO `answers` VALUES (4, 2, 'water', '') ; 
INSERT INTO `answers` VALUES (5, 2, 'soil', '') ; 
INSERT INTO `answers` VALUES (6, 2, 'air', '1') ; 
INSERT INTO `answers` VALUES (7, 3, 'full of harm', '1') ; 
INSERT INTO `answers` VALUES (8, 3, 'not useful', '') ; 
INSERT INTO `answers` VALUES (9, 3, 'healthful', '') ; 
INSERT INTO `answers` VALUES (10, 4, 'injurious fog consisting smoke gas ', '1') ; 
INSERT INTO `answers` VALUES (11, 4, 'different kinds of impure gases', '') ; 
INSERT INTO `answers` VALUES (12, 4, 'different kinds of impure smoke', '') ; 
INSERT INTO `answers` VALUES (13, 5, 'accumulated ash', '1') ; 
INSERT INTO `answers` VALUES (14, 5, 'white smoke', '') ; 
INSERT INTO `answers` VALUES (15, 5, 'impure air', '') ; 
INSERT INTO `answers` VALUES (16, 6, 'disease of the lung', '1') ; 
INSERT INTO `answers` VALUES (17, 6, 'disease of the heart', '') ; 
INSERT INTO `answers` VALUES (18, 6, 'disease of the stomach', '') ; 
INSERT INTO `answers` VALUES (19, 7, 'delicious', '') ; 
INSERT INTO `answers` VALUES (20, 7, 'poisonous', '1') ; 
INSERT INTO `answers` VALUES (21, 7, 'nutritious', '') ; 
INSERT INTO `answers` VALUES (22, 8, 'accumulated smoke', '1') ; 
INSERT INTO `answers` VALUES (23, 8, 'smoke pipes', '') ; 
INSERT INTO `answers` VALUES (24, 8, 'warm temperature', '') ; 
INSERT INTO `answers` VALUES (25, 8, 'rising air current', '') ; 
INSERT INTO `answers` VALUES (26, 9, 'it causes air-borne disease', '') ; 
INSERT INTO `answers` VALUES (27, 9, 'it is formed by soot and ash', '') ; 
INSERT INTO `answers` VALUES (28, 9, 'it is toxic or poisonous', '1') ; 
INSERT INTO `answers` VALUES (29, 9, 'it is air pollutant and irritant', '') ; 
INSERT INTO `answers` VALUES (30, 10, 'causes of pollution', '1') ; 
INSERT INTO `answers` VALUES (31, 10, 'effects of pollution', '') ; 
INSERT INTO `answers` VALUES (32, 10, 'prevention of pollution', '') ; 
INSERT INTO `answers` VALUES (33, 10, 'kinds of pollution', '') ; 
INSERT INTO `answers` VALUES (34, 11, 'causes of pollution', '1') ; 
INSERT INTO `answers` VALUES (35, 11, 'Prevention of pollution', '') ; 
INSERT INTO `answers` VALUES (36, 11, 'Cause of pneumonia', '') ; 
INSERT INTO `answers` VALUES (37, 11, 'how soot is formed', '') ; 
INSERT INTO `answers` VALUES (38, 12, 'Toxic materials are poisonous and thus should be avoided.', '') ; 
INSERT INTO `answers` VALUES (39, 12, 'There are no prevention to pollution, anywhere and anytime.', '') ; 
INSERT INTO `answers` VALUES (40, 12, 'The higher the pollution the more diseases will occur.', '1') ; 
INSERT INTO `answers` VALUES (41, 12, 'Pollution occurs to a much lesser degree in rural areas.', '') ; 
INSERT INTO `answers` VALUES (42, 13, 'lowers', '') ; 
INSERT INTO `answers` VALUES (43, 13, 'rises', '1') ; 
INSERT INTO `answers` VALUES (44, 13, 'cools', '') ; 
INSERT INTO `answers` VALUES (45, 14, 'rainy', '') ; 
INSERT INTO `answers` VALUES (46, 14, 'windless', '1') ; 
INSERT INTO `answers` VALUES (47, 14, 'cloudy', '') ; 
INSERT INTO `answers` VALUES (48, 15, 'cooler', '1') ; 
INSERT INTO `answers` VALUES (49, 15, 'hotter', '') ; 
INSERT INTO `answers` VALUES (50, 15, 'warmer', '') ; 
INSERT INTO `answers` VALUES (51, 16, 'warm', '1') ; 
INSERT INTO `answers` VALUES (52, 16, 'cool', '') ; 
INSERT INTO `answers` VALUES (53, 16, 'low', '') ; 
INSERT INTO `answers` VALUES (54, 17, 'stormy weather', '1') ; 
INSERT INTO `answers` VALUES (55, 17, 'hot weather', '') ; 
INSERT INTO `answers` VALUES (56, 17, 'changing weather', '') ; 
INSERT INTO `answers` VALUES (57, 18, 'Conditions of Temperature', '1') ; 
INSERT INTO `answers` VALUES (58, 18, 'Causes of Temperature', '') ; 
INSERT INTO `answers` VALUES (59, 18, 'Kinds of weather', '') ; 
INSERT INTO `answers` VALUES (60, 18, 'Effects of Temperature', '') ; 
INSERT INTO `answers` VALUES (61, 19, 'Windy days are uncomfortable days.', '') ; 
INSERT INTO `answers` VALUES (62, 19, 'Condition of temperature is dependent on the sun.', '1') ; 
INSERT INTO `answers` VALUES (63, 19, 'The sky is clear when there is no rain', '') ; 
INSERT INTO `answers` VALUES (64, 19, 'Effects of Temperature', '') ; 
INSERT INTO `answers` VALUES (65, 20, 'exposed', '') ; 
INSERT INTO `answers` VALUES (66, 20, 'shown', '') ; 
INSERT INTO `answers` VALUES (67, 20, 'hidden', '1') ; 
INSERT INTO `answers` VALUES (68, 20, 'brightened', '') ; 
INSERT INTO `answers` VALUES (69, 21, 'dark', '1') ; 
INSERT INTO `answers` VALUES (70, 21, 'bright', '') ; 
INSERT INTO `answers` VALUES (71, 21, 'brilliant', '') ; 
INSERT INTO `answers` VALUES (72, 21, 'hazy', '') ; 
INSERT INTO `answers` VALUES (73, 22, 'rainy', '1') ; 
INSERT INTO `answers` VALUES (74, 22, 'bright day', '') ; 
INSERT INTO `answers` VALUES (75, 22, 'sunny day', '') ; 
INSERT INTO `answers` VALUES (76, 22, 'pleasant day', '') ; 
INSERT INTO `answers` VALUES (77, 23, 'The Philippines is known Province of the Orient Seas', '1') ; 
INSERT INTO `answers` VALUES (78, 23, 'The rice terraces of Mountain Province is a work of art and a wonder.', '') ; 
INSERT INTO `answers` VALUES (79, 23, 'The Maria Cristina Falls and the Underground River of Palawan Contribute to the Beauty of the Philippines', '') ; 
INSERT INTO `answers` VALUES (80, 23, 'The Beauty of the Philippines is a joy forever and source of pride', '') ; 
INSERT INTO `answers` VALUES (81, 24, 'beauty spots in the Philippines.', '1') ; 
INSERT INTO `answers` VALUES (82, 24, 'regions on the Philippines.', '') ; 
INSERT INTO `answers` VALUES (83, 24, 'business sectors in the Philippines.', '') ; 
INSERT INTO `answers` VALUES (84, 24, 'gifts and wealth in the country.', '') ; 
INSERT INTO `answers` VALUES (85, 25, 'The Pride of the Filipino', '') ; 
INSERT INTO `answers` VALUES (86, 25, 'Sunset at Manila Bay', '') ; 
INSERT INTO `answers` VALUES (87, 25, 'Rice Terraces of the Mountain', '') ; 
INSERT INTO `answers` VALUES (88, 25, 'The Pearl of the Orient Seas', '1') ; 
INSERT INTO `answers` VALUES (89, 26, 'The Reyeses Vacation in Baguio', '1') ; 
INSERT INTO `answers` VALUES (90, 26, 'Boating with Ben\'s Freinds', '') ; 
INSERT INTO `answers` VALUES (91, 26, 'Baguio, the Summer Capital of the Philippines', '') ; 
INSERT INTO `answers` VALUES (92, 27, 'Sentence 1', '') ; 
INSERT INTO `answers` VALUES (93, 27, 'Sentence 2', '1') ; 
INSERT INTO `answers` VALUES (94, 27, 'Sentence 3', '') ; 
INSERT INTO `answers` VALUES (95, 28, 'the motor scooter', '') ; 
INSERT INTO `answers` VALUES (96, 28, 'the small boat', '') ; 
INSERT INTO `answers` VALUES (97, 28, 'an umbrella', '1') ; 
INSERT INTO `answers` VALUES (98, 29, 'in the sea water', '') ; 
INSERT INTO `answers` VALUES (99, 29, 'in the shallow lake', '') ; 
INSERT INTO `answers` VALUES (100, 29, 'in the large river', '1') ; 
INSERT INTO `answers` VALUES (101, 30, 'disappointed', '') ; 
INSERT INTO `answers` VALUES (102, 30, 'lonely', '1') ; 
INSERT INTO `answers` VALUES (103, 30, 'happy', '') ; 
INSERT INTO `answers` VALUES (104, 31, 'Everybody hot hur', '') ; 
INSERT INTO `answers` VALUES (105, 31, 'Everybody got wet', '1') ; 
INSERT INTO `answers` VALUES (106, 31, 'Everybody got lost', '') ; 
INSERT INTO `answers` VALUES (107, 32, 'The feast of Saint John the Baptized', '1') ; 
INSERT INTO `answers` VALUES (108, 32, 'Why Jesus Christ Was Baptized', '') ; 
INSERT INTO `answers` VALUES (109, 32, 'The Baptism of Jesus Christ', '') ; 
INSERT INTO `answers` VALUES (110, 33, 'swim in the water', '') ; 
INSERT INTO `answers` VALUES (111, 33, 'take a bath in the water', '') ; 
INSERT INTO `answers` VALUES (112, 33, 'walk through the water', '1') ; 
INSERT INTO `answers` VALUES (113, 34, 'the baptism of Jesus Christ', '') ; 
INSERT INTO `answers` VALUES (114, 34, 'The feast of Saint John the Baptist', '1') ; 
INSERT INTO `answers` VALUES (115, 34, 'the families in the beaches', '') ; 
INSERT INTO `answers` VALUES (116, 35, 'to witness the baptism of Jesus Christ', '') ; 
INSERT INTO `answers` VALUES (117, 35, 'to witness the baptism of John the Baptist', '1') ; 
INSERT INTO `answers` VALUES (118, 35, 'to reenact the baptism of Jesus Christ', '') ; 
INSERT INTO `answers` VALUES (119, 36, 'fear', '') ; 
INSERT INTO `answers` VALUES (120, 36, 'excitement', '1') ; 
INSERT INTO `answers` VALUES (121, 36, 'worry', '') ; 
INSERT INTO `answers` VALUES (122, 37, 'Puerto Rican children receive gifts.', '1') ; 
INSERT INTO `answers` VALUES (123, 37, 'Children put fresh grass under beds.', '') ; 
INSERT INTO `answers` VALUES (124, 37, 'They find candies and toys', '') ; 
INSERT INTO `answers` VALUES (125, 38, 'Celebration of Christmas Eve', '') ; 
INSERT INTO `answers` VALUES (126, 38, 'Celebration of Three Kings Day', '') ; 
INSERT INTO `answers` VALUES (127, 38, 'Gifts of Puerto Rican Children', '1') ; 
INSERT INTO `answers` VALUES (128, 39, 'A night after Christmas Day', '') ; 
INSERT INTO `answers` VALUES (129, 39, 'A night before Christmas Day', '1') ; 
INSERT INTO `answers` VALUES (130, 39, 'A night on Christmas Day', '') ; 
INSERT INTO `answers` VALUES (131, 40, 'fear', '') ; 
INSERT INTO `answers` VALUES (132, 40, 'sad', '') ; 
INSERT INTO `answers` VALUES (133, 40, 'happy', '1') ; 
INSERT INTO `answers` VALUES (134, 41, 'murmured', '') ; 
INSERT INTO `answers` VALUES (135, 41, 'pleaded', '') ; 
INSERT INTO `answers` VALUES (136, 41, 'threatened', '1') ; 
INSERT INTO `answers` VALUES (137, 42, 'rejoiced', '') ; 
INSERT INTO `answers` VALUES (138, 42, 'moaned', '1') ; 
INSERT INTO `answers` VALUES (139, 42, 'giggled', '') ; 
INSERT INTO `answers` VALUES (140, 43, 'sighed', '') ; 
INSERT INTO `answers` VALUES (141, 43, 'shouted', '') ; 
INSERT INTO `answers` VALUES (142, 43, 'giggled', '1') ; 
INSERT INTO `answers` VALUES (143, 44, 'cried', '') ; 
INSERT INTO `answers` VALUES (144, 44, 'shouted', '1') ; 
INSERT INTO `answers` VALUES (145, 44, 'gasped', '') ; 
INSERT INTO `answers` VALUES (146, 45, 'sobbed', '') ; 
INSERT INTO `answers` VALUES (147, 45, 'whispered', '') ; 
INSERT INTO `answers` VALUES (148, 45, 'cheered', '1') ; 
INSERT INTO `answers` VALUES (149, 46, 'sobbed', '') ; 
INSERT INTO `answers` VALUES (150, 46, 'giggled', '') ; 
INSERT INTO `answers` VALUES (151, 46, 'exlaimed', '1') ; 
INSERT INTO `answers` VALUES (152, 47, 'shouted', '') ; 
INSERT INTO `answers` VALUES (153, 47, 'whispered', '1') ; 
INSERT INTO `answers` VALUES (154, 47, 'laughed', '') ; 
INSERT INTO `answers` VALUES (155, 48, 'threatened', '') ; 
INSERT INTO `answers` VALUES (156, 48, 'demanded', '') ; 
INSERT INTO `answers` VALUES (157, 48, 'pleaded', '1') ; 
INSERT INTO `answers` VALUES (158, 49, 'gasped', '1') ; 
INSERT INTO `answers` VALUES (159, 49, 'explained', '') ; 
INSERT INTO `answers` VALUES (160, 49, 'recited', '') ; 
INSERT INTO `answers` VALUES (161, 50, 'exclaimed', '1') ; 
INSERT INTO `answers` VALUES (162, 50, 'sobbed', '') ; 
INSERT INTO `answers` VALUES (163, 50, 'remarked', '') ; 
INSERT INTO `answers` VALUES (164, 51, 'hydrogen', '') ; 
INSERT INTO `answers` VALUES (165, 51, 'smoke', '1') ; 
INSERT INTO `answers` VALUES (166, 51, 'water vapor', '') ; 
INSERT INTO `answers` VALUES (167, 51, 'oxygen', '') ; 
INSERT INTO `answers` VALUES (168, 52, 'salt', '') ; 
INSERT INTO `answers` VALUES (169, 52, 'sugar', '') ; 
INSERT INTO `answers` VALUES (170, 52, 'sand', '1') ; 
INSERT INTO `answers` VALUES (171, 52, 'coffee', '') ; 
INSERT INTO `answers` VALUES (172, 53, 'drink the contents of the glass', '') ; 
INSERT INTO `answers` VALUES (173, 53, 'stir the contents of the glass', '1') ; 
INSERT INTO `answers` VALUES (174, 53, 'turn on the electric fan in front of the glass', '') ; 
INSERT INTO `answers` VALUES (175, 53, 'non of the above', '') ; 
INSERT INTO `answers` VALUES (176, 54, 'Energy is found every where', '') ; 
INSERT INTO `answers` VALUES (177, 54, 'Energy is the ability to do work', '1') ; 
INSERT INTO `answers` VALUES (178, 54, 'Energy comes from inside the Earth', '') ; 
INSERT INTO `answers` VALUES (179, 54, 'Energy destroys matter', '') ; 
INSERT INTO `answers` VALUES (180, 55, 'The food is physically changed', '') ; 
INSERT INTO `answers` VALUES (181, 55, 'The food is spoiled', '') ; 
INSERT INTO `answers` VALUES (182, 55, 'The food is chemically changed', '1') ; 
INSERT INTO `answers` VALUES (183, 55, 'The food does not taste goo', '') ; 
INSERT INTO `answers` VALUES (184, 56, 'It supports the body', '') ; 
INSERT INTO `answers` VALUES (185, 56, 'It allows the body to move', '') ; 
INSERT INTO `answers` VALUES (186, 56, 'It protects some of the body organs', '') ; 
INSERT INTO `answers` VALUES (187, 56, 'It sends messages to the muscles', '1') ; 
INSERT INTO `answers` VALUES (188, 57, 'Ingestion', '') ; 
INSERT INTO `answers` VALUES (189, 57, 'Digestion', '1') ; 
INSERT INTO `answers` VALUES (190, 57, 'Absorption', '') ; 
INSERT INTO `answers` VALUES (191, 57, 'Defecation', '') ; 
INSERT INTO `answers` VALUES (192, 58, 'The bar soap has more surfaces exposed to the water.', '') ; 
INSERT INTO `answers` VALUES (193, 58, 'The bar soap has a shape that make it dissolve faster.', '') ; 
INSERT INTO `answers` VALUES (194, 58, 'The powdered soap has more tiny particles exposed to the water.', '1') ; 
INSERT INTO `answers` VALUES (195, 58, 'All of the Above', '') ; 
INSERT INTO `answers` VALUES (196, 59, 'When the wind blows, it carries the foul air', '') ; 
INSERT INTO `answers` VALUES (197, 59, 'When the garbage decays, it produces foul air.', '1') ; 
INSERT INTO `answers` VALUES (198, 59, 'The garbage contains used cans and bottles.', '') ; 
INSERT INTO `answers` VALUES (199, 59, 'The garbage is buried', '') ; 
INSERT INTO `answers` VALUES (200, 60, 'skull', '1') ; 
INSERT INTO `answers` VALUES (201, 60, 'Ribs', '') ; 
INSERT INTO `answers` VALUES (202, 60, 'Jawbone', '') ; 
INSERT INTO `answers` VALUES (203, 60, 'collarbone', '') ; 
INSERT INTO `answers` VALUES (204, 61, 'Digestive system', '') ; 
INSERT INTO `answers` VALUES (205, 61, 'Skeletal system', '1') ; 
INSERT INTO `answers` VALUES (206, 61, 'Muscular system', '') ; 
INSERT INTO `answers` VALUES (207, 61, 'Nervous system', '') ; 
INSERT INTO `answers` VALUES (208, 62, 'ligaments', '') ; 
INSERT INTO `answers` VALUES (209, 62, 'tendons', '') ; 
INSERT INTO `answers` VALUES (210, 62, 'joints', '1') ; 
INSERT INTO `answers` VALUES (211, 62, 'tough fibers', '') ; 
INSERT INTO `answers` VALUES (212, 63, 'ribs', '1') ; 
INSERT INTO `answers` VALUES (213, 63, 'hipbones', '') ; 
INSERT INTO `answers` VALUES (214, 63, 'skull', '') ; 
INSERT INTO `answers` VALUES (215, 63, 'ankle bones', '') ; 
INSERT INTO `answers` VALUES (216, 64, 'Do not breathe air', '') ; 
INSERT INTO `answers` VALUES (217, 64, 'Breathe fresh and cool air', '') ; 
INSERT INTO `answers` VALUES (218, 64, 'Plant more trees', '1') ; 
INSERT INTO `answers` VALUES (219, 64, 'Throw our garbage anywhere', '') ; 
INSERT INTO `answers` VALUES (220, 65, 'blind', '') ; 
INSERT INTO `answers` VALUES (221, 65, 'paralyzed', '') ; 
INSERT INTO `answers` VALUES (222, 65, 'deaf and mute', '') ; 
INSERT INTO `answers` VALUES (223, 65, 'All of the Above', '1') ; 
INSERT INTO `answers` VALUES (224, 66, 'air', '') ; 
INSERT INTO `answers` VALUES (225, 66, 'carbon dioxide', '1') ; 
INSERT INTO `answers` VALUES (226, 66, 'oxygen', '') ; 
INSERT INTO `answers` VALUES (227, 66, 'water', '') ; 
INSERT INTO `answers` VALUES (228, 67, 'birth', '1') ; 
INSERT INTO `answers` VALUES (229, 67, 'reproduction', '') ; 
INSERT INTO `answers` VALUES (230, 67, 'fertilization', '') ; 
INSERT INTO `answers` VALUES (231, 67, 'hatching', '') ; 
INSERT INTO `answers` VALUES (232, 68, 'sunlight and hear', '') ; 
INSERT INTO `answers` VALUES (233, 68, 'sound and force', '') ; 
INSERT INTO `answers` VALUES (234, 68, 'wind and running water', '1') ; 
INSERT INTO `answers` VALUES (235, 68, 'air and heat', '') ; 
INSERT INTO `answers` VALUES (236, 69, 'air', '') ; 
INSERT INTO `answers` VALUES (237, 69, 'water', '') ; 
INSERT INTO `answers` VALUES (238, 69, 'heat', '') ; 
INSERT INTO `answers` VALUES (239, 69, 'decaying matter', '1') ; 
INSERT INTO `answers` VALUES (240, 70, 'let the faucet leak', '') ; 
INSERT INTO `answers` VALUES (241, 70, 'use as much water as you can', '') ; 
INSERT INTO `answers` VALUES (242, 70, 'fill all your container', '1') ; 
INSERT INTO `answers` VALUES (243, 70, 'use just enough water for your need', '') ; 
INSERT INTO `answers` VALUES (244, 71, 'Earthworms eat harmful insects.', '') ; 
INSERT INTO `answers` VALUES (245, 71, 'Earthworms can be used as food.', '') ; 
INSERT INTO `answers` VALUES (246, 71, 'Earthworms loosen and fertilize the soil.', '1') ; 
INSERT INTO `answers` VALUES (247, 71, 'Earthworms eat garbage', '') ; 
INSERT INTO `answers` VALUES (248, 72, 'frog', '') ; 
INSERT INTO `answers` VALUES (249, 72, 'butterfly', '') ; 
INSERT INTO `answers` VALUES (250, 72, 'cockroach', '') ; 
INSERT INTO `answers` VALUES (251, 72, 'goat', '1') ; 
INSERT INTO `answers` VALUES (252, 73, 'A sperm unites with an egg.', '1') ; 
INSERT INTO `answers` VALUES (253, 73, 'An egg disappears', '') ; 
INSERT INTO `answers` VALUES (254, 73, 'A sperm matures', '') ; 
INSERT INTO `answers` VALUES (255, 73, 'A sperm disappears ', '') ; 
INSERT INTO `answers` VALUES (256, 74, 'stormy weather', '1') ; 
INSERT INTO `answers` VALUES (257, 74, 'hot day', '') ; 
INSERT INTO `answers` VALUES (258, 74, 'fine weather', '') ; 
INSERT INTO `answers` VALUES (259, 74, 'rainy day', '') ; 
INSERT INTO `answers` VALUES (260, 75, 'Dislocation', '1') ; 
INSERT INTO `answers` VALUES (261, 75, 'Fracture', '') ; 
INSERT INTO `answers` VALUES (262, 75, 'bone infection', '') ; 
INSERT INTO `answers` VALUES (263, 75, 'sprain', '') ; 
INSERT INTO `answers` VALUES (264, 76, 'hot calamansi', '') ; 
INSERT INTO `answers` VALUES (265, 76, 'hot tea', '') ; 
INSERT INTO `answers` VALUES (266, 76, 'hot chocolate', '1') ; 
INSERT INTO `answers` VALUES (267, 76, 'hot coffee', '') ; 
INSERT INTO `answers` VALUES (268, 77, 'digestion', '') ; 
INSERT INTO `answers` VALUES (269, 77, 'incubation', '') ; 
INSERT INTO `answers` VALUES (270, 77, 'metamorphosis', '') ; 
INSERT INTO `answers` VALUES (271, 77, 'fertilization', '1') ; 
INSERT INTO `answers` VALUES (272, 78, 'smoke goes up', '') ; 
INSERT INTO `answers` VALUES (273, 78, 'leaves of trees move gently', '') ; 
INSERT INTO `answers` VALUES (274, 78, 'flag move gently', '') ; 
INSERT INTO `answers` VALUES (275, 78, 'branches of trees break', '1') ; 
INSERT INTO `answers` VALUES (276, 79, 'Living things have the same parts.', '') ; 
INSERT INTO `answers` VALUES (277, 79, 'Living things have the same kind of food.', '') ; 
INSERT INTO `answers` VALUES (278, 79, 'Living things reproduce their own kind.', '1') ; 
INSERT INTO `answers` VALUES (279, 79, 'Living things reproduce in the same day', '') ; 
INSERT INTO `answers` VALUES (280, 80, 'rice', '') ; 
INSERT INTO `answers` VALUES (281, 80, 'salt', '1') ; 
INSERT INTO `answers` VALUES (282, 80, 'mango', '') ; 
INSERT INTO `answers` VALUES (283, 80, 'pepper', '') ; 
INSERT INTO `answers` VALUES (284, 81, 'water flow very fast in the fores', '') ; 
INSERT INTO `answers` VALUES (285, 81, 'water does not flow very easily because of the roots', '') ; 
INSERT INTO `answers` VALUES (286, 81, 'there are many dry leaves in the ground', '') ; 
INSERT INTO `answers` VALUES (287, 81, 'trees do not use much water', '1') ; 
INSERT INTO `answers` VALUES (288, 82, 'When people stay away from water', '') ; 
INSERT INTO `answers` VALUES (289, 82, 'When people stay away from sunlight', '') ; 
INSERT INTO `answers` VALUES (290, 82, 'When people stay long in water', '') ; 
INSERT INTO `answers` VALUES (291, 82, 'When people stay long under the sunlight', '1') ; 
INSERT INTO `answers` VALUES (292, 83, 'Ptyalin', '') ; 
INSERT INTO `answers` VALUES (293, 83, 'Digestion', '') ; 
INSERT INTO `answers` VALUES (294, 83, 'Peristalsis', '1') ; 
INSERT INTO `answers` VALUES (295, 83, 'Gastric Juice', '') ; 
INSERT INTO `answers` VALUES (296, 84, 'suspension', '1') ; 
INSERT INTO `answers` VALUES (297, 84, 'colloid', '') ; 
INSERT INTO `answers` VALUES (298, 84, 'solution', '') ; 
INSERT INTO `answers` VALUES (299, 84, 'compound', '') ; 
INSERT INTO `answers` VALUES (300, 85, 'weather affects people\'s activites', '1') ; 
INSERT INTO `answers` VALUES (301, 85, 'weather is harmful', '') ; 
INSERT INTO `answers` VALUES (302, 85, 'weather changes from time to time', '') ; 
INSERT INTO `answers` VALUES (303, 85, 'weather gives people the temperature of objects', '') ; 
INSERT INTO `answers` VALUES (304, 86, 'fish', '') ; 
INSERT INTO `answers` VALUES (305, 86, 'frog', '1') ; 
INSERT INTO `answers` VALUES (306, 86, 'butterfly', '') ; 
INSERT INTO `answers` VALUES (307, 86, 'bird', '') ; 
INSERT INTO `answers` VALUES (308, 87, 'sepals and petals', '') ; 
INSERT INTO `answers` VALUES (309, 87, 'pistil and stamen', '1') ; 
INSERT INTO `answers` VALUES (310, 87, 'calyx and anther', '') ; 
INSERT INTO `answers` VALUES (311, 87, 'pistil and petals', '') ; 
INSERT INTO `answers` VALUES (312, 88, 'Sand settled down at the bottom.', '1') ; 
INSERT INTO `answers` VALUES (313, 88, 'Sand spread evenly at the bottom.', '') ; 
INSERT INTO `answers` VALUES (314, 88, ' Sand dissolved in the water.', '') ; 
INSERT INTO `answers` VALUES (315, 88, 'Sand is white and clear', '') ; 
INSERT INTO `answers` VALUES (316, 89, 'All animals are born alive', '') ; 
INSERT INTO `answers` VALUES (317, 89, 'Different animals reproduces in different ways.', '1') ; 
INSERT INTO `answers` VALUES (318, 89, 'All animals are hatched from eggs.', '') ; 
INSERT INTO `answers` VALUES (319, 89, 'Different animals move in different ways.', '') ; 
INSERT INTO `answers` VALUES (320, 90, 'it has much air', '') ; 
INSERT INTO `answers` VALUES (321, 90, 'it has much soil', '') ; 
INSERT INTO `answers` VALUES (322, 90, 'it has much water', '') ; 
INSERT INTO `answers` VALUES (323, 90, 'it has much decayed plants and animals', '1') ; 
INSERT INTO `answers` VALUES (324, 91, '2,651', '1') ; 
INSERT INTO `answers` VALUES (325, 91, '2,641', '') ; 
INSERT INTO `answers` VALUES (326, 91, '2,648 r. 2', '') ; 
INSERT INTO `answers` VALUES (327, 91, '2,948 r.4', '') ; 
INSERT INTO `answers` VALUES (328, 92, '24', '') ; 
INSERT INTO `answers` VALUES (329, 92, '48', '') ; 
INSERT INTO `answers` VALUES (330, 92, '512', '1') ; 
INSERT INTO `answers` VALUES (331, 92, '6,561', '') ; 
INSERT INTO `answers` VALUES (332, 93, '2', '') ; 
INSERT INTO `answers` VALUES (333, 93, '20', '') ; 
INSERT INTO `answers` VALUES (334, 93, '50', '1') ; 
INSERT INTO `answers` VALUES (335, 93, '200', '') ; 
INSERT INTO `answers` VALUES (336, 94, '137.834', '') ; 
INSERT INTO `answers` VALUES (337, 94, '146.834', '') ; 
INSERT INTO `answers` VALUES (338, 94, '147.734', '') ; 
INSERT INTO `answers` VALUES (339, 94, '147.834', '1') ; 
INSERT INTO `answers` VALUES (340, 95, '10', '') ; 
INSERT INTO `answers` VALUES (341, 95, '100', '1') ; 
INSERT INTO `answers` VALUES (342, 95, '1000', '') ; 
INSERT INTO `answers` VALUES (343, 95, '10000', '') ; 
INSERT INTO `answers` VALUES (344, 96, '85m', '') ; 
INSERT INTO `answers` VALUES (345, 96, '850m', '') ; 
INSERT INTO `answers` VALUES (346, 96, '8500m', '1') ; 
INSERT INTO `answers` VALUES (347, 96, '0.085m', '') ; 
INSERT INTO `answers` VALUES (348, 97, '9/10', '') ; 
INSERT INTO `answers` VALUES (349, 97, '1 1/20', '1') ; 
INSERT INTO `answers` VALUES (350, 97, '1 1/10', '') ; 
INSERT INTO `answers` VALUES (351, 97, '1 3/20', '') ; 
INSERT INTO `answers` VALUES (352, 98, '64/3', '1') ; 
INSERT INTO `answers` VALUES (353, 98, '56/3', '') ; 
INSERT INTO `answers` VALUES (354, 98, '16/3', '') ; 
INSERT INTO `answers` VALUES (355, 98, '1/3', '') ; 
INSERT INTO `answers` VALUES (356, 99, '415.0', '1') ; 
INSERT INTO `answers` VALUES (357, 99, '41.5', '') ; 
INSERT INTO `answers` VALUES (358, 99, '4.150', '') ; 
INSERT INTO `answers` VALUES (359, 99, '0.415', '') ; 
INSERT INTO `answers` VALUES (360, 100, '68,499,769', '') ; 
INSERT INTO `answers` VALUES (361, 100, '739,902,874', '') ; 
INSERT INTO `answers` VALUES (362, 100, '740,103,134', '1') ; 
INSERT INTO `answers` VALUES (363, 100, '740,903,974', '') ; 
INSERT INTO `answers` VALUES (364, 101, '5', '1') ; 
INSERT INTO `answers` VALUES (365, 101, '7', '') ; 
INSERT INTO `answers` VALUES (366, 101, '11', '') ; 
INSERT INTO `answers` VALUES (367, 101, '13', '') ; 
INSERT INTO `answers` VALUES (368, 102, 'cm', '1') ; 
INSERT INTO `answers` VALUES (369, 102, 'meter', '') ; 
INSERT INTO `answers` VALUES (370, 102, 'hectometer', '') ; 
INSERT INTO `answers` VALUES (371, 102, 'millimeter', '') ; 
INSERT INTO `answers` VALUES (372, 103, '22,210.222', '') ; 
INSERT INTO `answers` VALUES (373, 103, '22,220.222', '1') ; 
INSERT INTO `answers` VALUES (374, 103, '32,110.112', '') ; 
INSERT INTO `answers` VALUES (375, 103, '123,101.230', '') ; 
INSERT INTO `answers` VALUES (376, 104, '50', '') ; 
INSERT INTO `answers` VALUES (377, 104, '54', '1') ; 
INSERT INTO `answers` VALUES (378, 104, '63', '') ; 
INSERT INTO `answers` VALUES (379, 104, '378', '') ; 
INSERT INTO `answers` VALUES (380, 105, '5 days', '') ; 
INSERT INTO `answers` VALUES (381, 105, '125 hours', '1') ; 
INSERT INTO `answers` VALUES (382, 105, '1250 minutes', '') ; 
INSERT INTO `answers` VALUES (383, 105, '120 sec', '') ; 
INSERT INTO `answers` VALUES (384, 106, '46', '') ; 
INSERT INTO `answers` VALUES (385, 106, '47', '') ; 
INSERT INTO `answers` VALUES (386, 106, '48', '1') ; 
INSERT INTO `answers` VALUES (387, 106, '49', '') ; 
INSERT INTO `answers` VALUES (388, 107, 'hours', '') ; 
INSERT INTO `answers` VALUES (389, 107, 'week', '') ; 
INSERT INTO `answers` VALUES (390, 107, 'decade', '') ; 
INSERT INTO `answers` VALUES (391, 107, 'Fahrenheit', '1') ; 
INSERT INTO `answers` VALUES (392, 108, '89 degree', '') ; 
INSERT INTO `answers` VALUES (393, 108, '98 ', '1') ; 
INSERT INTO `answers` VALUES (394, 108, '45 degree', '') ; 
INSERT INTO `answers` VALUES (395, 108, '15 degree', '') ; 
INSERT INTO `answers` VALUES (396, 109, '13000', '') ; 
INSERT INTO `answers` VALUES (397, 109, '12000', '1') ; 
INSERT INTO `answers` VALUES (398, 109, '12050', '') ; 
INSERT INTO `answers` VALUES (399, 109, '12100', '') ; 
INSERT INTO `answers` VALUES (400, 110, '2/5', '1') ; 
INSERT INTO `answers` VALUES (401, 110, '5/12', '') ; 
INSERT INTO `answers` VALUES (402, 110, '3/8', '') ; 
INSERT INTO `answers` VALUES (403, 110, '3/5', '') ; 
INSERT INTO `answers` VALUES (404, 111, 'P 92', '') ; 
INSERT INTO `answers` VALUES (405, 111, 'P 93', '') ; 
INSERT INTO `answers` VALUES (406, 111, 'P 94', '1') ; 
INSERT INTO `answers` VALUES (407, 111, 'P 95', '') ; 
INSERT INTO `answers` VALUES (408, 112, '18 m', '') ; 
INSERT INTO `answers` VALUES (409, 112, '2 m', '1') ; 
INSERT INTO `answers` VALUES (410, 112, '1/2 m', '') ; 
INSERT INTO `answers` VALUES (411, 112, '1/3 m', '') ; 
INSERT INTO `answers` VALUES (412, 113, 'P 8.50', '') ; 
INSERT INTO `answers` VALUES (413, 113, 'P 11.50', '1') ; 
INSERT INTO `answers` VALUES (414, 113, 'P 45.50', '') ; 
INSERT INTO `answers` VALUES (415, 113, 'P 57.50', '') ; 
INSERT INTO `answers` VALUES (416, 114, '24', '1') ; 
INSERT INTO `answers` VALUES (417, 114, '40', '') ; 
INSERT INTO `answers` VALUES (418, 114, '48', '') ; 
INSERT INTO `answers` VALUES (419, 114, '96', '') ; 
INSERT INTO `answers` VALUES (420, 115, '5 years old', '') ; 
INSERT INTO `answers` VALUES (421, 115, '10 years old', '1') ; 
INSERT INTO `answers` VALUES (422, 115, '15 years old', '') ; 
INSERT INTO `answers` VALUES (423, 115, '20 years old', '') ; 
INSERT INTO `answers` VALUES (424, 116, '368.573', '') ; 
INSERT INTO `answers` VALUES (425, 116, '210.536299', '') ; 
INSERT INTO `answers` VALUES (426, 116, '109.41539', '1') ; 
INSERT INTO `answers` VALUES (427, 116, '99.9975', '') ; 
INSERT INTO `answers` VALUES (428, 116, '80.8769543', '') ; 
INSERT INTO `answers` VALUES (429, 117, '12', '') ; 
INSERT INTO `answers` VALUES (430, 117, '1.2', '') ; 
INSERT INTO `answers` VALUES (431, 117, '0.12', '1') ; 
INSERT INTO `answers` VALUES (432, 117, '.012', '') ; 
INSERT INTO `answers` VALUES (433, 117, '0.0012', '') ; 
INSERT INTO `answers` VALUES (434, 118, '1', '') ; 
INSERT INTO `answers` VALUES (435, 118, '6', '1') ; 
INSERT INTO `answers` VALUES (436, 118, '72', '') ; 
INSERT INTO `answers` VALUES (437, 118, '576', '') ; 
INSERT INTO `answers` VALUES (438, 118, '752', '') ; 
INSERT INTO `answers` VALUES (439, 119, '30', '') ; 
INSERT INTO `answers` VALUES (440, 119, '11', '') ; 
INSERT INTO `answers` VALUES (441, 119, '25', '') ; 
INSERT INTO `answers` VALUES (442, 119, '0', '1') ; 
INSERT INTO `answers` VALUES (443, 119, '27', '') ; 
INSERT INTO `answers` VALUES (444, 120, '908 0', '') ; 
INSERT INTO `answers` VALUES (445, 120, '910', '1') ; 
INSERT INTO `answers` VALUES (446, 120, '907.5', '') ; 
INSERT INTO `answers` VALUES (447, 120, '900', '') ; 
INSERT INTO `answers` VALUES (448, 120, '907.46', '') ; 
INSERT INTO `answers` VALUES (449, 121, '2', '') ; 
INSERT INTO `answers` VALUES (450, 121, '3', '') ; 
INSERT INTO `answers` VALUES (451, 121, '4', '') ; 
INSERT INTO `answers` VALUES (452, 121, '5', '1') ; 
INSERT INTO `answers` VALUES (453, 121, '6', '') ; 
INSERT INTO `answers` VALUES (454, 122, '180', '') ; 
INSERT INTO `answers` VALUES (455, 122, '108', '') ; 
INSERT INTO `answers` VALUES (456, 122, '56', '') ; 
INSERT INTO `answers` VALUES (457, 122, '4', '1') ; 
INSERT INTO `answers` VALUES (458, 122, '6', '') ; 
INSERT INTO `answers` VALUES (459, 123, '3 4/7', '') ; 
INSERT INTO `answers` VALUES (460, 123, '4 5/6', '') ; 
INSERT INTO `answers` VALUES (461, 123, '4 6/7', '1') ; 
INSERT INTO `answers` VALUES (462, 123, '5', '') ; 
INSERT INTO `answers` VALUES (463, 123, '6 4/5', '') ; 
INSERT INTO `answers` VALUES (464, 124, 'four', '1') ; 
INSERT INTO `answers` VALUES (465, 124, 'four-tenths', '') ; 
INSERT INTO `answers` VALUES (466, 124, 'four hundredths', '') ; 
INSERT INTO `answers` VALUES (467, 124, 'one-fourth', '') ; 
INSERT INTO `answers` VALUES (468, 125, '823', '1') ; 
INSERT INTO `answers` VALUES (469, 125, '712', '') ; 
INSERT INTO `answers` VALUES (470, 125, '667', '') ; 
INSERT INTO `answers` VALUES (471, 125, '579', '') ; 
INSERT INTO `answers` VALUES (472, 126, 'A', '') ; 
INSERT INTO `answers` VALUES (473, 126, 'B', '1') ; 
INSERT INTO `answers` VALUES (474, 126, 'C', '') ; 
INSERT INTO `answers` VALUES (475, 126, 'D', '') ; 
INSERT INTO `answers` VALUES (476, 127, '1 and 2', '') ; 
INSERT INTO `answers` VALUES (477, 127, '1 and 4', '1') ; 
INSERT INTO `answers` VALUES (478, 127, '2 and 3', '') ; 
INSERT INTO `answers` VALUES (479, 127, '3 and 4', '') ; 
INSERT INTO `answers` VALUES (480, 128, 'A', '') ; 
INSERT INTO `answers` VALUES (481, 128, 'B', '') ; 
INSERT INTO `answers` VALUES (482, 128, 'C', '1') ; 
INSERT INTO `answers` VALUES (483, 128, 'D', '') ; 
INSERT INTO `answers` VALUES (484, 129, 'Add 8 to the number in column A.', '') ; 
INSERT INTO `answers` VALUES (485, 129, 'Add 8 to the number Column A.', '1') ; 
INSERT INTO `answers` VALUES (486, 129, 'Subtract 8 from the number in Column A.', '') ; 
INSERT INTO `answers` VALUES (487, 129, 'Multiply the number in Column A by 5', '') ; 
INSERT INTO `answers` VALUES (488, 129, 'Divide the number in Column A by 5', '') ; 
INSERT INTO `answers` VALUES (489, 130, '199 and 209', '') ; 
INSERT INTO `answers` VALUES (490, 130, '4236 and  4246', '') ; 
INSERT INTO `answers` VALUES (491, 130, '9635 and 9735', '') ; 
INSERT INTO `answers` VALUES (492, 130, '51,863 and 52,863', '1') ;
#
# End of data contents of table answers
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 20. March 2016 23:15 HKT
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table intgwa (1 records)
#
 
INSERT INTO `intgwa` VALUES (1, 2, '75', '10', '2016-03-20 21:54:46') ;
#
# End of data contents of table intgwa
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 20. March 2016 23:15 HKT
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
# Generated: Sunday 20. March 2016 23:15 HKT
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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table question_category (7 records)
#
 
INSERT INTO `question_category` VALUES (1, 1, 'Test 1', 'The air we breathe can become dirty. Air becomes polluted when impurities mix with it. There are several factors that contribute of atmosphere.Sand and dust storms introduce into the atmosphere various materials that do not belong there. Fores fires release smoke and gases to the atmosphere. Decaying plant and animal remains produce great quantities of gases. Pesticides and insecticides also pollute the air. Spores, molds and bacteria and smoke which harmful to man. Smoke contains air-borne and gas borne particles. The combination of various waste gases with smoke, dust and fog results in a dense  cloud called smog. Smog may remain the same and there are no rising air currents to carry it away. Smoke is unburned carbon. Accumulated smoke in places like smoke pipes becomes soot. Soot and ash in the air makes man susceptible to pneumonia and other lung ailments. Carbon monoxide, the gas is toxic or poisonous. It causes irritation to the throat and the eyes.', '') ; 
INSERT INTO `question_category` VALUES (2, 1, 'Test 2', 'When air is heated by the sun, the temperature rises. It is usually warmest during noontime when the sun\'s ray hits the earth\'s surface directly. It is usually coolest during the early morning when the sun is still concealed from view. When it is a windless day, the air temperature gets warm. When the sky is generally cloudy or overcast, the air becomes cooler. When it rains, the temperature drops. Temperature is low during stormy weather because the sun does not usually shine on a stormy day. On fine weather, air temperature is warm. When the sun shines brightly, the sky is clear, there is no rain.', '') ; 
INSERT INTO `question_category` VALUES (3, 1, 'Test 3', 'The Philippines is known as the Pearl of the Orient Seas because of its beauty. The land is green throughout the year. Nature has given it many wonders. The Mayon Volcano with Its perfect cone is one of the mos beautiful in the world. Sunset at Manila Bay is one of the beautiful too. The rice terraces of the Mountain Province, the Ma. Cristina Falls and the Underground River of Palawan are wonderful works of art. ', '') ; 
INSERT INTO `question_category` VALUES (4, 1, 'Test 4', '            Baguio City is the summer capital of the Philippines. The Reyeses have spent their vacation there when they were staying in Baguio. Ben met some new friends. They rode on motor scooter and went boating. They were riding on a small boat in the lagoon when it began to rain.
           Dina did not like to get wet. She stood up and signaled mother an umbrella. When mother was giving umbrella, the boat capsized.

', '') ; 
INSERT INTO `question_category` VALUES (5, 1, 'Test 5', 'The best celebration in Puerto Rico is held on June 24. It is the feast of saints  john the Baptist. In the evening of June 23, thousands of families stay on the beaches. At dawn, the wade in the water to reenact the baptism of Jesus Christ.', '') ; 
INSERT INTO `question_category` VALUES (6, 1, 'Test 6', 'Puerto Rican Children receive gifts both on Christmas Eve and on Three Kings Day. On January 5, children put fresh grass under their beds before they sleep. In the morning, They find candies and toys in place of the grass.', '') ; 
INSERT INTO `question_category` VALUES (7, 1, 'Test 7', 'Read the following sentences. Choose the word under each sentence which best shows the feeling 
of the speaker to complete the sentence.', '') ;
#
# End of data contents of table question_category
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 20. March 2016 23:15 HKT
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
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1 ;

#
# Data contents of table question_joint (50 records)
#
 
INSERT INTO `question_joint` VALUES (1, 1, 1) ; 
INSERT INTO `question_joint` VALUES (2, 2, 1) ; 
INSERT INTO `question_joint` VALUES (3, 3, 1) ; 
INSERT INTO `question_joint` VALUES (4, 4, 1) ; 
INSERT INTO `question_joint` VALUES (5, 5, 1) ; 
INSERT INTO `question_joint` VALUES (6, 6, 1) ; 
INSERT INTO `question_joint` VALUES (7, 7, 1) ; 
INSERT INTO `question_joint` VALUES (8, 8, 1) ; 
INSERT INTO `question_joint` VALUES (9, 9, 1) ; 
INSERT INTO `question_joint` VALUES (10, 10, 1) ; 
INSERT INTO `question_joint` VALUES (11, 11, 1) ; 
INSERT INTO `question_joint` VALUES (12, 12, 1) ; 
INSERT INTO `question_joint` VALUES (13, 13, 2) ; 
INSERT INTO `question_joint` VALUES (14, 14, 2) ; 
INSERT INTO `question_joint` VALUES (15, 15, 2) ; 
INSERT INTO `question_joint` VALUES (16, 16, 2) ; 
INSERT INTO `question_joint` VALUES (17, 17, 2) ; 
INSERT INTO `question_joint` VALUES (18, 18, 2) ; 
INSERT INTO `question_joint` VALUES (19, 19, 2) ; 
INSERT INTO `question_joint` VALUES (20, 20, 2) ; 
INSERT INTO `question_joint` VALUES (21, 21, 2) ; 
INSERT INTO `question_joint` VALUES (22, 22, 2) ; 
INSERT INTO `question_joint` VALUES (23, 23, 3) ; 
INSERT INTO `question_joint` VALUES (24, 24, 3) ; 
INSERT INTO `question_joint` VALUES (25, 25, 3) ; 
INSERT INTO `question_joint` VALUES (26, 26, 4) ; 
INSERT INTO `question_joint` VALUES (27, 27, 4) ; 
INSERT INTO `question_joint` VALUES (28, 28, 4) ; 
INSERT INTO `question_joint` VALUES (29, 29, 4) ; 
INSERT INTO `question_joint` VALUES (30, 30, 4) ; 
INSERT INTO `question_joint` VALUES (31, 31, 4) ; 
INSERT INTO `question_joint` VALUES (32, 32, 5) ; 
INSERT INTO `question_joint` VALUES (33, 33, 5) ; 
INSERT INTO `question_joint` VALUES (34, 34, 5) ; 
INSERT INTO `question_joint` VALUES (35, 35, 5) ; 
INSERT INTO `question_joint` VALUES (36, 36, 5) ; 
INSERT INTO `question_joint` VALUES (37, 37, 6) ; 
INSERT INTO `question_joint` VALUES (38, 38, 6) ; 
INSERT INTO `question_joint` VALUES (39, 39, 6) ; 
INSERT INTO `question_joint` VALUES (40, 40, 6) ; 
INSERT INTO `question_joint` VALUES (41, 41, 7) ; 
INSERT INTO `question_joint` VALUES (42, 42, 7) ; 
INSERT INTO `question_joint` VALUES (43, 43, 7) ; 
INSERT INTO `question_joint` VALUES (44, 44, 7) ; 
INSERT INTO `question_joint` VALUES (45, 45, 7) ; 
INSERT INTO `question_joint` VALUES (46, 46, 7) ; 
INSERT INTO `question_joint` VALUES (47, 47, 7) ; 
INSERT INTO `question_joint` VALUES (48, 48, 7) ; 
INSERT INTO `question_joint` VALUES (49, 49, 7) ; 
INSERT INTO `question_joint` VALUES (50, 50, 7) ;
#
# End of data contents of table question_joint
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 20. March 2016 23:15 HKT
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
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=latin1 ;

#
# Data contents of table questions (130 records)
#
 
INSERT INTO `questions` VALUES (1, 1, 'Trees prevent air "polution".', '') ; 
INSERT INTO `questions` VALUES (2, 1, 'Bird fly as high as the "atmosphere".', '') ; 
INSERT INTO `questions` VALUES (3, 1, 'Polluted air is "harmful" to man It can cause irritation of the respiratory organs of the body.', '') ; 
INSERT INTO `questions` VALUES (4, 1, 'Factories emit gasses and this combined with smoke and other gases result to "smog"\'', '') ; 
INSERT INTO `questions` VALUES (5, 1, 'Accumulated smoke in pipes becomes "soot" and is dangerous to our health\'', '') ; 
INSERT INTO `questions` VALUES (6, 1, 'Tuberculosis is a lung "ailment"', '') ; 
INSERT INTO `questions` VALUES (7, 1, 'Toxic" food causes stomach ache.', '') ; 
INSERT INTO `questions` VALUES (8, 1, 'As mentioned in the paragraph above. what causes soot?', '') ; 
INSERT INTO `questions` VALUES (9, 1, 'Why does carbon monoxide causes irritation to the throat and the eyes?', '') ; 
INSERT INTO `questions` VALUES (10, 1, 'The words in the box refer to the ______________ .', '../question_photo/question_10.png') ; 
INSERT INTO `questions` VALUES (11, 1, 'What is the selection about?', '') ; 
INSERT INTO `questions` VALUES (12, 1, 'Based on the information given what conclusion can be made?', '') ; 
INSERT INTO `questions` VALUES (13, 1, 'When the air is heated by the sun, the temperature _______________ .', '') ; 
INSERT INTO `questions` VALUES (14, 1, 'Temperature gets warm when the day is _____________.', '') ; 
INSERT INTO `questions` VALUES (15, 1, 'When the sky is cloudy the air becomes __________', '') ; 
INSERT INTO `questions` VALUES (16, 1, 'On fine weather the air temperature is', '') ; 
INSERT INTO `questions` VALUES (17, 1, 'Temperature is low during ___________ .', '') ; 
INSERT INTO `questions` VALUES (18, 1, 'What title is best for the paragraph?', '') ; 
INSERT INTO `questions` VALUES (19, 1, 'Based on the information give. what conclusion can be drawn?', '') ; 
INSERT INTO `questions` VALUES (20, 1, '"Concealed" in sentence 3 means.', '') ; 
INSERT INTO `questions` VALUES (21, 1, '"Overcast" in sentence 5 means', '') ; 
INSERT INTO `questions` VALUES (22, 1, '"Stormy day" in sentence 7 means.', '') ; 
INSERT INTO `questions` VALUES (23, 1, 'What is the main idea of the paragraph?', '') ; 
INSERT INTO `questions` VALUES (24, 1, 'The ideas in the box are', '../question_photo/sample.png') ; 
INSERT INTO `questions` VALUES (25, 1, 'What title is best for the paragraph?', '') ; 
INSERT INTO `questions` VALUES (26, 1, 'which of the following is the best title of the story?', '') ; 
INSERT INTO `questions` VALUES (27, 1, 'Which sentence is the main idea?', '') ; 
INSERT INTO `questions` VALUES (28, 1, 'It began to rain. Dina stoop up and signaled mother. What did Dina need to have?', '') ; 
INSERT INTO `questions` VALUES (29, 1, 'They were riding on a small boat in the lagoon the underlined phrase means?', '') ; 
INSERT INTO `questions` VALUES (30, 1, 'Ben met new friends. They rode on a motor scooter and went boating. They also rode on a small boat. Ben felt', '') ; 
INSERT INTO `questions` VALUES (31, 1, 'When mother was giving an umbrella, the boat capsized. What do you think happened to Ben, Dina and friends?', '') ; 
INSERT INTO `questions` VALUES (32, 1, 'Which of the following is the appropriate of the paragraph?', '') ; 
INSERT INTO `questions` VALUES (33, 1, 'The "wade in the water" to reenact the baptism of Jesus Christ. The quoted phrase means______.', '') ; 
INSERT INTO `questions` VALUES (34, 1, 'The paragraph tells about_____________ .', '') ; 
INSERT INTO `questions` VALUES (35, 1, 'Why do you think there are thousands of families who stay on the beaches?', '') ; 
INSERT INTO `questions` VALUES (36, 1, 'The general mood of the paragraph is.', '') ; 
INSERT INTO `questions` VALUES (37, 1, 'What is the main idea of the paragraph?', '') ; 
INSERT INTO `questions` VALUES (38, 1, 'Choose the correct title of the paragraph', '') ; 
INSERT INTO `questions` VALUES (39, 1, 'They receive gifts on "Christmas Eve". Which one below is the meaning of the quoted words?', '') ; 
INSERT INTO `questions` VALUES (40, 1, 'In the morning, children find candies and toys in place of the grass. The children feel__________.', '') ; 
INSERT INTO `questions` VALUES (41, 1, '" I\'m going to spank you if you don\'t obey me immediately ",________________ mother.', '') ; 
INSERT INTO `questions` VALUES (42, 1, '" I can\'t sleep. It is too hot! " ______________ Elena.', '') ; 
INSERT INTO `questions` VALUES (43, 1, '" I have never heard such a funny name, "_________________ Mila.', '') ; 
INSERT INTO `questions` VALUES (44, 1, '" At last I have finished my project! Now, I can play with my friends." __________________Philip', '') ; 
INSERT INTO `questions` VALUES (45, 1, '"May you have many Happy birthday to come! " _______________ the guest.', '') ; 
INSERT INTO `questions` VALUES (46, 1, '" oh i have burned my new dress! "______________ Elsa.', '') ; 
INSERT INTO `questions` VALUES (47, 1, '"Hush! The baby is sleeping! "', '') ; 
INSERT INTO `questions` VALUES (48, 1, '"Please, call a doctor! My husband has fainted! " ____________________ Aling Dora.', '') ; 
INSERT INTO `questions` VALUES (49, 1, '" Oh I have cut my finger! " ______________ Maria.', '') ; 
INSERT INTO `questions` VALUES (50, 1, '" Father is coming! Father is coming! _________________ Rudy.', '') ; 
INSERT INTO `questions` VALUES (51, 2, 'Which of the following pollutes the air?', '') ; 
INSERT INTO `questions` VALUES (52, 2, 'Which of the substances will not dissolve in water?', '') ; 
INSERT INTO `questions` VALUES (53, 2, 'Mother is preparing some calamansi juice. She squeezed the juice from the calamansi fruits into a glass of water. What should she do after adding sugar to the glass of water to make the sugar dissolve faster?', '') ; 
INSERT INTO `questions` VALUES (54, 2, 'Which sentence describes energy?', '') ; 
INSERT INTO `questions` VALUES (55, 2, 'A certain food changes in taste while you are chewing it. What does this show?', '') ; 
INSERT INTO `questions` VALUES (56, 2, 'Which of the following is not a function of the skeletal system?', '') ; 
INSERT INTO `questions` VALUES (57, 2, 'The process of breaking down food into simpler substances is called ________?', '') ; 
INSERT INTO `questions` VALUES (58, 2, 'Powdered soap will dissolve faster than a bar soap. Why?', '') ; 
INSERT INTO `questions` VALUES (59, 2, 'How does waste in the garbage pollutes the air?', '') ; 
INSERT INTO `questions` VALUES (60, 2, 'Which of the following bones protect the brain and the eyeballs?', '') ; 
INSERT INTO `questions` VALUES (61, 2, 'Which of your body systems give shapes and support to your body?', '') ; 
INSERT INTO `questions` VALUES (62, 2, 'What connects two or more bones together?', '') ; 
INSERT INTO `questions` VALUES (63, 2, 'What structure protects the heart and lungs?', '') ; 
INSERT INTO `questions` VALUES (64, 2, 'Which of the following will help reduce pollution of air around us?', '') ; 
INSERT INTO `questions` VALUES (65, 2, 'Which is a handicapped person?', '') ; 
INSERT INTO `questions` VALUES (66, 2, 'What do animals give off that is useful to plants?', '') ; 
INSERT INTO `questions` VALUES (67, 2, 'By what process do animals produce their young?', '') ; 
INSERT INTO `questions` VALUES (68, 2, 'what forces carry away soil?', '') ; 
INSERT INTO `questions` VALUES (69, 2, 'Which of the following makes the soil fertile?', '') ; 
INSERT INTO `questions` VALUES (70, 2, 'How can you save water?', '') ; 
INSERT INTO `questions` VALUES (71, 2, 'Why  are earthworms useful?', '') ; 
INSERT INTO `questions` VALUES (72, 2, 'Which of these animals looks like its parent animals when it is born?', '') ; 
INSERT INTO `questions` VALUES (73, 2, 'What happens during fertilization?', '') ; 
INSERT INTO `questions` VALUES (74, 2, 'One morning the wind was blowing very string and there was a heavy rain.', '') ; 
INSERT INTO `questions` VALUES (75, 2, 'It may occur due to a sharp twisting or turning of a joint beyond its natural limits.', '') ; 
INSERT INTO `questions` VALUES (76, 2, 'To keep people warm during very cold days, they drink beverages rich in carbohydrates and protein. Which of these is the proper drink?', '') ; 
INSERT INTO `questions` VALUES (77, 2, 'What may happen if a sperm unites with an egg?', '') ; 
INSERT INTO `questions` VALUES (78, 2, 'Which of the following shows the wind is blowing very strong', '') ; 
INSERT INTO `questions` VALUES (79, 2, 'Which of the following is a characteristic of all living things?', '') ; 
INSERT INTO `questions` VALUES (80, 2, 'Which of the following will spread evenly when mixed with water?', '') ; 
INSERT INTO `questions` VALUES (81, 2, 'How do forest and trees help save water?', '') ; 
INSERT INTO `questions` VALUES (82, 2, 'When does ultraviolet rays from the sun become harmful to people?', '') ; 
INSERT INTO `questions` VALUES (83, 2, 'It refers to the muscular contraction in the esophagus through wich the food is pushed down in the stomach.', '') ; 
INSERT INTO `questions` VALUES (84, 2, 'In a mixture of clay and water, particles of clay are suspended in the water. What is this mixture called?', '') ; 
INSERT INTO `questions` VALUES (85, 2, 'Why is weather very important to poeple?', '') ; 
INSERT INTO `questions` VALUES (86, 2, 'Which of these animals fertilizes its egg inside the body?', '') ; 
INSERT INTO `questions` VALUES (87, 2, 'Which parts of the flower are needed in reproduction?', '') ; 
INSERT INTO `questions` VALUES (88, 2, 'Arnold put some sand in his aquarium. At first, the water looked cloudy, later on, the water looked clear. Why?', '') ; 
INSERT INTO `questions` VALUES (89, 2, 'Chicks are hatch eggs. A goat is born alive and looks like its parents. A frog undergoes many changes as it grows. What do these observation prove?', '') ; 
INSERT INTO `questions` VALUES (90, 2, 'Why do plants grow best in topsoil?', '') ; 
INSERT INTO `questions` VALUES (91, 3, '90,134  ÷ 34  =', '') ; 
INSERT INTO `questions` VALUES (92, 3, '8^3 =', '') ; 
INSERT INTO `questions` VALUES (93, 3, '20% if what number is 10.', '') ; 
INSERT INTO `questions` VALUES (94, 3, '57.3 x 2.58 =', '') ; 
INSERT INTO `questions` VALUES (95, 3, '1 meter is equal to how many centimeters?', '') ; 
INSERT INTO `questions` VALUES (96, 3, 'A boy ran a distance of 8.5 kilometer . How many meters did he run?', '') ; 
INSERT INTO `questions` VALUES (97, 3, '( 3/4 + 4/5 ) - 1/2 =', '') ; 
INSERT INTO `questions` VALUES (98, 3, '24 x 8/9 =', '') ; 
INSERT INTO `questions` VALUES (99, 3, 'divide 498 / 1.2', '') ; 
INSERT INTO `questions` VALUES (100, 3, '814,503,219 - 74,600,345 =', '') ; 
INSERT INTO `questions` VALUES (101, 3, '(9 / 6) / (5 x 3 - 12) =', '') ; 
INSERT INTO `questions` VALUES (102, 3, 'Which do is the most realistic unit of measure for the length of a ball pen?', '') ; 
INSERT INTO `questions` VALUES (103, 3, '1,110.101 + 11,000.11 + 10,110.011 is equal to.', '') ; 
INSERT INTO `questions` VALUES (104, 3, '(42 x 9) / 7 =', '') ; 
INSERT INTO `questions` VALUES (105, 3, 'Which of the following is the longest time?', '') ; 
INSERT INTO `questions` VALUES (106, 3, 'Mang Tomas sent 960 pomelos to Manila. He packed 20 pomelos to a box. How many boxes were used?', '') ; 
INSERT INTO `questions` VALUES (107, 3, 'Which does not belong to the group?', '') ; 
INSERT INTO `questions` VALUES (108, 3, 'Which of the following is no a acute angle?', '') ; 
INSERT INTO `questions` VALUES (109, 3, 'When rounded to the nearest thousand 12057.98 becomes', '') ; 
INSERT INTO `questions` VALUES (110, 3, '40% is equal to', '') ; 
INSERT INTO `questions` VALUES (111, 3, 'For a beautification project, 12 neighbors want to purchase plants to be placed on their block. If cost of the plants is P 1,128, How much will each neighbor need to contribute?', '') ; 
INSERT INTO `questions` VALUES (112, 3, 'A piece of cloth 6 meters long is divided into 3 equal parts. How long is one part?', '') ; 
INSERT INTO `questions` VALUES (113, 3, 'Lydia bought 5 oranges and 7 apples for P 103.00. If the price of an apple is P6.50, how much is one orange costs?', '') ; 
INSERT INTO `questions` VALUES (114, 3, 'Loida took a long test which consist of 120 questions. She answered 80% correctly. How many were her wrong answers?', '') ; 
INSERT INTO `questions` VALUES (115, 3, 'Betty\'s age is twice that of Ann\'s. If Betty is 20 years old, how old is Ann?', '') ; 
INSERT INTO `questions` VALUES (116, 3, 'Add 0.98 + 45.102 + 32.3333 + 31 + 0.00009', '') ; 
INSERT INTO `questions` VALUES (117, 3, 'Find 0.12 + 1', '') ; 
INSERT INTO `questions` VALUES (118, 3, '(9/3) x (8/4) = ', '') ; 
INSERT INTO `questions` VALUES (119, 3, '6 x 0 x 5', '') ; 
INSERT INTO `questions` VALUES (120, 3, 'Round 907.457 to the nearest tens place.', '') ; 
INSERT INTO `questions` VALUES (121, 3, 'In the number 743.25 which digit represents the tenths space?', '') ; 
INSERT INTO `questions` VALUES (122, 3, 'The greatest common divisor of 20 and 36 is', '') ; 
INSERT INTO `questions` VALUES (123, 3, 'What is the average (arithmetic mean) of 8, 7, 7, 5, 3, 2, and 2?', '') ; 
INSERT INTO `questions` VALUES (124, 3, '0.4 is the same as', '') ; 
INSERT INTO `questions` VALUES (125, 3, 'When subtract one of the numbers below from 900, the answer is greater than 300. Which number is it?', '') ; 
INSERT INTO `questions` VALUES (126, 3, 'Tanya Has read the first 78 pages in a book that is 130 pages long. Which number sentence could Tanya use to find the number of pages she must read to finish the book?', '../question_photo/math_36.png') ; 
INSERT INTO `questions` VALUES (127, 3, 'Each figure represents a fraction. Which two figures represent the same fraction?', '../question_photo/math_37.png') ; 
INSERT INTO `questions` VALUES (128, 3, 'Which of these does not show a line of symmetry?', '../question_photo/math_38.png') ; 
INSERT INTO `questions` VALUES (129, 3, 'What do you have to do to each number in column A to get the number next to it in Column B?', '../question_photo/math_39.png') ; 
INSERT INTO `questions` VALUES (130, 3, 'In which pair of numbers is the second number 100 more than the first number?', '') ;
#
# End of data contents of table questions
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 20. March 2016 23:15 HKT
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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 ;

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
# Generated: Sunday 20. March 2016 23:15 HKT
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
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 ;

#
# Data contents of table student_details (0 records)
#

#
# End of data contents of table student_details
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 20. March 2016 23:15 HKT
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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table student_section (0 records)
#

#
# End of data contents of table student_section
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 20. March 2016 23:15 HKT
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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 ;

#
# Data contents of table students (0 records)
#

#
# End of data contents of table students
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 20. March 2016 23:15 HKT
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
# Generated: Sunday 20. March 2016 23:15 HKT
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
# Generated: Sunday 20. March 2016 23:15 HKT
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ;

#
# Data contents of table users (2 records)
#
 
INSERT INTO `users` VALUES (1, '', '', '', '', '', 'admin', 'admin', 5, '1') ; 
INSERT INTO `users` VALUES (2, 'Leo', 'Yap', 'Marapoc', 'Cogon Ormoc City Leyte', '09482086635', 'student', '12345', 1, '1') ;
#
# End of data contents of table users
# --------------------------------------------------------

