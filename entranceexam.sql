-- phpMyAdmin SQL Dump
-- version 2.11.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 19, 2016 at 08:57 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `entranceexam`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE IF NOT EXISTS `answers` (
  `id` int(11) NOT NULL auto_increment,
  `question_id` int(11) NOT NULL,
  `text` varchar(500) NOT NULL,
  `correct` enum('1','0') NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=179 ;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `text`, `correct`) VALUES
(1, 3, 'hot air', '0'),
(2, 3, 'unclean air', '1'),
(3, 3, 'cool air ', ''),
(4, 2, 'soil', ''),
(5, 2, 'water', ''),
(6, 2, 'air', '1'),
(7, 1, 'injurious fog consisting smoke gas ', '1'),
(8, 1, 'different kinds of impure gases', ''),
(9, 1, 'different kinds of impure smoke', ''),
(89, 25, 'Sunset at Manila Bay', ''),
(88, 25, 'The Pride of the Filipino', ''),
(13, 7, 'accumulated ash', '1'),
(14, 7, 'white smoke', ''),
(15, 7, 'impure nutrious', ''),
(16, 9, 'delicious', ''),
(17, 9, 'poisonous', '1'),
(18, 9, 'nutritious', ''),
(19, 10, 'accumulated smoke', '1'),
(20, 10, 'smoke pipes', ''),
(21, 10, 'warm temperature', ''),
(22, 10, 'rising air current', ''),
(23, 11, 'it causes air-borne disease', ''),
(24, 11, 'it is formed by soot and ash', ''),
(25, 11, 'it is toxic or poisonous', '1'),
(26, 11, 'it is air pollutant and irritant', ''),
(27, 12, 'causes of pollution', '1'),
(28, 12, 'effects of pollution', ''),
(29, 12, 'prevention of pollution', ''),
(30, 12, 'kinds of pollution', ''),
(31, 13, 'causes of pollution', '1'),
(32, 13, 'Prevention of pollution', ''),
(33, 13, 'Cause of pneumonia', ''),
(34, 13, 'how soot is formed', ''),
(35, 4, 'full of harm', '1'),
(36, 4, 'not useful', ''),
(37, 4, 'healthful', ''),
(38, 14, 'Toxic materials are poisonous and thus should be avoided.', ''),
(39, 14, 'There are no prevention to pollution, anywhere and anytime.', ''),
(40, 14, 'The higher the pollution the more diseases will occur.', '1'),
(41, 14, 'Pollution occurs to a much lesser degree in rural areas.', ''),
(42, 5, 'The Philippines is known Province of the Orient Seas', '1'),
(43, 5, 'The rice terraces of Mountain Province is a work of art and a wonder.', ''),
(44, 5, 'The Maria Cristina Falls and the Underground River of Palawan Contribute to the Beauty of the Philippines', ''),
(45, 5, 'The Beauty of the Philippines is a joy forever and source of pride', ''),
(46, 6, 'beauty spots in the Philippines.', '1'),
(47, 6, 'regions on the Philippines.', ''),
(48, 6, 'business sectors in the Philippines.', ''),
(49, 6, 'gifts and wealth in the country.', ''),
(50, 8, 'disease of the lung', '1'),
(51, 8, 'disease of the heart', ''),
(52, 8, 'disease of the stomach', ''),
(53, 15, 'lowers', ''),
(54, 15, 'rises', '1'),
(55, 15, 'cools', ''),
(56, 16, 'rainy', ''),
(57, 16, 'windless', '1'),
(58, 16, 'cloudy', ''),
(59, 24, 'cooler', '1'),
(60, 24, 'hotter', ''),
(61, 24, 'warmer', ''),
(62, 17, 'warm', '1'),
(63, 17, 'cool', ''),
(64, 17, 'low', ''),
(65, 18, 'stormy weather', '1'),
(66, 18, 'hot weather', ''),
(67, 18, 'changing weather', ''),
(68, 19, 'Conditions of Temperature', '1'),
(69, 19, 'Causes of Temperature', ''),
(70, 19, 'Kinds of weather', ''),
(71, 19, 'Effects of Temperature', ''),
(72, 20, 'Windy days are uncomfortable days.', ''),
(73, 20, 'Condition of temperature is dependent on the sun.', '1'),
(74, 20, 'The sky is clear when there is no rain', ''),
(75, 20, 'Temperature drops when it rains', ''),
(76, 21, 'exposed', ''),
(77, 21, 'shown', ''),
(78, 21, 'hidden', '1'),
(79, 21, 'brightened', ''),
(80, 22, 'dark', '1'),
(81, 22, 'bright', ''),
(82, 22, 'brilliant', ''),
(83, 22, 'hazy', ''),
(84, 23, 'rainy day', '1'),
(85, 23, 'bright day', ''),
(86, 23, 'sunny day', ''),
(87, 23, 'pleasant day', ''),
(90, 25, 'Rice Terraces of the Mountain', ''),
(91, 25, 'The Pearl of the Orient Seas', '1'),
(92, 26, 'hydrogeb', ''),
(93, 26, 'smoke', '1'),
(94, 26, 'water vapor', ''),
(95, 26, 'oxygen', ''),
(96, 27, 'salt', ''),
(97, 27, 'sugar', ''),
(98, 27, 'sand', '1'),
(99, 27, 'coffee', ''),
(100, 28, 'drink the contents of the glass', ''),
(101, 28, 'stir the contents of the glass', '1'),
(102, 28, 'turn on the electric fan in front of the glass', ''),
(103, 28, 'non of the above', ''),
(104, 29, 'Energy is found every where', ''),
(105, 29, 'Energy is the ability to do work', '1'),
(106, 29, 'Energy comes from inside the Earth', ''),
(107, 29, 'Energy destroys matter', ''),
(108, 30, 'The food is physically changed', ''),
(109, 30, 'The food is spoiled', ''),
(110, 30, 'The food is chemically changed', '1'),
(111, 30, 'The food does not taste goo', ''),
(112, 31, 'It supports the body', ''),
(113, 31, 'It allows the body to move', ''),
(114, 31, 'It protects some of the body organs', ''),
(115, 31, 'It sends messages to the muscles', '1'),
(116, 32, 'Ingestion', ''),
(117, 32, 'Digestion', '1'),
(118, 32, 'Absorption', ''),
(119, 32, 'Defecation', ''),
(120, 33, 'The bar soap has more surfaces exposed to the water.', ''),
(121, 33, 'The bar soap has a shape that make it dissolve faster.', ''),
(122, 33, 'The powdered soap has more tiny particles exposed to the water.', '1'),
(123, 33, 'All of the Above', ''),
(124, 34, 'When the wind blows, it carries the foul air', ''),
(125, 34, 'When the garbage decays, it produces foul air.', '1'),
(126, 34, 'The garbage contains used cans and bottles.', ''),
(127, 34, 'The garbage is buried', ''),
(178, 35, 'skull', '1'),
(129, 35, 'Ribs', '0'),
(130, 35, 'Jawbone', '0'),
(131, 35, 'collarbone', '0'),
(138, 36, '2,648 r. 2', ''),
(137, 36, '2,641', ''),
(136, 36, '2,651', '1'),
(139, 36, '2,948 r.4', ''),
(140, 37, '24', ''),
(141, 37, '48', ''),
(142, 37, '512', '1'),
(143, 37, '6,561', ''),
(144, 38, '2', ''),
(145, 38, '20', ''),
(146, 38, '50', '1'),
(147, 38, '200', ''),
(148, 39, '137.834', ''),
(149, 39, '146.834', ''),
(150, 39, '147.734', ''),
(151, 39, '147.834', '1'),
(152, 40, '10', ''),
(153, 40, '100', ''),
(154, 40, '1000', '1'),
(155, 40, '10000', ''),
(156, 41, '85m', ''),
(157, 41, '850m', ''),
(158, 41, '8500m', '1'),
(159, 41, '0.085m', ''),
(160, 42, '9/10', ''),
(161, 42, '1 1/20', '1'),
(162, 42, '1 1/10', ''),
(163, 42, '1 3/20', ''),
(164, 43, '64/3', '1'),
(165, 43, '56/3', ''),
(166, 43, '16/3', ''),
(167, 43, '1/3', ''),
(168, 44, '415.0', '1'),
(169, 44, '41.5', ''),
(170, 44, '4.150', ''),
(171, 44, '0.415', ''),
(172, 45, '68,499,769', ''),
(173, 45, '739,902,874', ''),
(174, 45, '740,103,134', '1'),
(175, 45, '740,903,974', '');

-- --------------------------------------------------------

--
-- Table structure for table `intgwa`
--

CREATE TABLE IF NOT EXISTS `intgwa` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `gwa` varchar(500) NOT NULL,
  `interview` double NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `intgwa`
--

INSERT INTO `intgwa` (`id`, `user_id`, `gwa`, `interview`, `date`) VALUES
(3, 2, '89', 18, '2016-01-20 03:18:20');

-- --------------------------------------------------------

--
-- Table structure for table `percentage`
--

CREATE TABLE IF NOT EXISTS `percentage` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL,
  `percent` double NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `percentage`
--

INSERT INTO `percentage` (`id`, `title`, `percent`) VALUES
(1, 'Exam', 40),
(2, 'GWA', 40),
(3, 'Interview', 20);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL auto_increment,
  `subject_id` int(11) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `image_url` varchar(500) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `subject_id`, `question`, `image_url`) VALUES
(1, 1, 'Factories emit gasses and this combined with smoke and other gases result to "smog"', ''),
(2, 1, 'Bird fly as high as the "atmosphere".', ''),
(3, 1, 'Tress prevent air "pollution".', ''),
(4, 1, 'Polluted air is "harmful" to man It can cause irritation of the respiratory organs of the body.', ''),
(5, 1, 'What is the main idea of the paragraph?', ''),
(6, 1, 'The ideas in the box are', ''),
(7, 1, 'Accumulated smoke in pipes becomes "soot" and is dangerous to our health', ''),
(8, 1, 'Tuberculosis is a lung "ailment"', ''),
(9, 1, '"Toxic" food causes stomach ache.', ''),
(10, 1, 'As mentioned in the paragraph above. what causes soor?', ''),
(11, 1, 'Why does carbon monoxide causes irritation to the throat and the eyes?', ''),
(12, 1, 'The words in the box refer to the ______________ .', '../question_photo/question_10.png'),
(13, 1, 'What is the selection about?', ''),
(14, 1, 'Based on the information given what conclusion can be made?', ''),
(15, 1, 'When the air is heated by the sun, the temperature _______________ .', ''),
(16, 1, 'Temperature gets warm when the day is _____________.', ''),
(17, 1, 'On fine weather the air temperature is', ''),
(18, 1, 'Temperature is low during ___________ .', ''),
(19, 1, 'What title is best for the paragraph?', ''),
(20, 1, 'Based on the information give. what conclusion can be drawn?', ''),
(21, 1, '"Concealed" in sentence 5 means.', ''),
(22, 1, '"Overcast" in sentence 5 means', ''),
(23, 1, '"Stormy day" in sentence 7 means.', ''),
(24, 1, 'When the sky is cloudy the air becomes __________', ''),
(25, 1, 'What title is best for the paragraph?', ''),
(26, 2, 'Which of the following pollutes the air?', ''),
(27, 2, 'Which of the substances will not dissolve in water?', ''),
(28, 2, 'Mother is preparing some calamansi juice. She squeezed the juice from the calamansi fruits into a glass of water. What should she do after adding sugar to the glass of water to make the sugar dissolve faster?', ''),
(29, 2, 'Which sentence describes energy?', ''),
(30, 2, 'A certain food changes in taste while you are chewing it. What does this show?', ''),
(31, 2, 'Which of the following is not a function of the skeletal system?', ''),
(32, 2, 'The process of breaking down food into simpler substances is called ________?', ''),
(33, 2, 'Powdered soap will dissolve faster than a bar soap. Why?', ''),
(34, 2, 'How does waste in the garbage pollutes the air?', ''),
(35, 2, 'Which of the following bones protect the brain and the eyeballs?', ''),
(36, 3, '90,134  Ã· 34  =', ''),
(37, 3, '8Â³ =', ''),
(38, 3, '20% if what number is 10.', ''),
(39, 3, '57.3 x 2.58 =', ''),
(40, 3, '1 meter is equal to how many centimeters?', ''),
(41, 3, 'A boy ran a distance of 8.5 kilometer . How many meters did he run?', ''),
(42, 3, '( 3/4 + 4/5 ) - 1/2 =', ''),
(43, 3, '24 x 8/9 =', ''),
(44, 3, '498 Ã· 1.2 =', ''),
(45, 3, '814,503,219 - 74,600,345 =', '');

-- --------------------------------------------------------

--
-- Table structure for table `question_category`
--

CREATE TABLE IF NOT EXISTS `question_category` (
  `id` int(11) NOT NULL auto_increment,
  `subject_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(3000) NOT NULL,
  `image_url` varchar(500) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `question_category`
--

INSERT INTO `question_category` (`id`, `subject_id`, `name`, `description`, `image_url`) VALUES
(1, 1, 'Test 1', 'The air we breathe can become dirty. Air becomes polluted when impurities mix with it. There are several factors that contribute of atmosphere.', ''),
(2, 1, 'Test 2', 'The philippines is known as the Pearl of the Orient Seas because of its beauty. The land is green throughout the year.', ''),
(3, 1, 'Test 3', 'When air is heated by the sun, the temperature rises. It is usually warmest during noontime when the sun''s ray hits the earths''s surface directly.', '');

-- --------------------------------------------------------

--
-- Table structure for table `question_joint`
--

CREATE TABLE IF NOT EXISTS `question_joint` (
  `id` int(11) NOT NULL auto_increment,
  `question_id` int(11) NOT NULL,
  `quest_cat_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `question_joint`
--

INSERT INTO `question_joint` (`id`, `question_id`, `quest_cat_id`) VALUES
(1, 3, 1),
(2, 1, 1),
(3, 2, 1),
(4, 4, 1),
(5, 10, 1),
(6, 14, 1),
(7, 13, 1),
(8, 9, 1),
(9, 8, 1),
(10, 12, 1),
(11, 7, 1),
(12, 11, 1),
(13, 5, 2),
(14, 6, 2),
(15, 15, 3),
(16, 16, 3),
(17, 17, 3),
(18, 18, 3),
(19, 19, 3),
(20, 20, 3),
(21, 21, 3),
(22, 22, 3),
(23, 23, 3),
(24, 24, 3),
(25, 25, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE IF NOT EXISTS `sections` (
  `id` int(11) NOT NULL auto_increment,
  `min` double NOT NULL,
  `max` double NOT NULL,
  `section` varchar(100) NOT NULL,
  `limits` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `min`, `max`, `section`, `limits`) VALUES
(1, 90, 100, 'Dignity', 30),
(2, 80, 90, 'Fedility', 30),
(3, 70, 80, 'Charity', 30),
(4, 60, 70, 'Faithful', 30),
(5, 50, 60, 'Kindness', 30),
(6, 40, 50, 'Humility', 30);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `raw_score` float NOT NULL,
  `total_score` float NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `subject_id`, `raw_score`, `total_score`, `date`) VALUES
(1, 2, 3, 7, 10, '2016-01-13'),
(2, 2, 1, 2, 26, '2016-01-13'),
(3, 2, 2, 8, 10, '2016-01-20');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE IF NOT EXISTS `student_details` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`id`, `user_id`, `subject_id`, `question_id`, `answer_id`, `date`) VALUES
(1, 2, 3, 44, 168, '2016-01-13'),
(2, 2, 3, 38, 146, '2016-01-13'),
(3, 2, 3, 41, 158, '2016-01-13'),
(4, 2, 3, 40, 154, '2016-01-13'),
(5, 2, 3, 36, 136, '2016-01-13'),
(6, 2, 3, 37, 142, '2016-01-13'),
(7, 2, 3, 39, 151, '2016-01-13'),
(8, 2, 1, 16, 57, '2016-01-13'),
(9, 2, 1, 20, 73, '2016-01-13'),
(10, 2, 1, 17, 64, '2016-01-13'),
(11, 2, 2, 27, 98, '2016-01-20'),
(12, 2, 2, 32, 117, '2016-01-20'),
(13, 2, 2, 31, 114, '2016-01-20'),
(14, 2, 2, 26, 93, '2016-01-20'),
(15, 2, 2, 28, 101, '2016-01-20'),
(16, 2, 2, 35, 178, '2016-01-20'),
(17, 2, 2, 33, 122, '2016-01-20'),
(18, 2, 2, 34, 125, '2016-01-20'),
(19, 2, 2, 30, 109, '2016-01-20'),
(20, 2, 2, 29, 105, '2016-01-20');

-- --------------------------------------------------------

--
-- Table structure for table `student_section`
--

CREATE TABLE IF NOT EXISTS `student_section` (
  `id` int(11) NOT NULL auto_increment,
  `section_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `GWA` double NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `student_section`
--

INSERT INTO `student_section` (`id`, `section_id`, `user_id`, `GWA`) VALUES
(1, 4, 2, 68.71);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`, `description`) VALUES
(1, 'English', ''),
(2, 'Science', 'Science and Technology'),
(3, 'Math', 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `userlevels`
--

CREATE TABLE IF NOT EXISTS `userlevels` (
  `id` int(11) NOT NULL auto_increment,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `userlevels`
--


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Fname`, `Mname`, `Lname`, `address`, `Cnumber`, `username`, `password`, `ULevel`, `status`) VALUES
(1, 'admin', 'admin', 'admin', 'admin', '12345', 'admin', 'admin', 5, '1'),
(2, 'Leo', 'Marapaoc', 'Maristela', 'Cogon Ormoc City', '09482086635', 'student1', '12345', 1, '1');
