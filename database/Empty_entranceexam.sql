# MySQL database backup
#
# Generated: Wednesday 20. January 2016 17:37 HKT
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

#
# Data contents of table answers (0 records)
#

#
# End of data contents of table answers
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Wednesday 20. January 2016 17:37 HKT
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

#
# Data contents of table intgwa (0 records)
#

#
# End of data contents of table intgwa
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Wednesday 20. January 2016 17:37 HKT
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
# Generated: Wednesday 20. January 2016 17:37 HKT
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

#
# Data contents of table question_category (0 records)
#

#
# End of data contents of table question_category
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Wednesday 20. January 2016 17:37 HKT
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

#
# Data contents of table question_joint (0 records)
#

#
# End of data contents of table question_joint
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Wednesday 20. January 2016 17:37 HKT
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

#
# Data contents of table questions (0 records)
#

#
# End of data contents of table questions
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Wednesday 20. January 2016 17:37 HKT
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
# Generated: Wednesday 20. January 2016 17:37 HKT
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

#
# Data contents of table student_details (0 records)
#

#
# End of data contents of table student_details
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Wednesday 20. January 2016 17:37 HKT
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

#
# Data contents of table student_section (0 records)
#

#
# End of data contents of table student_section
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Wednesday 20. January 2016 17:37 HKT
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

#
# Data contents of table students (0 records)
#

#
# End of data contents of table students
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Wednesday 20. January 2016 17:37 HKT
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
# Generated: Wednesday 20. January 2016 17:37 HKT
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
# Generated: Wednesday 20. January 2016 17:37 HKT
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table users (1 records)
#
 
INSERT INTO `users` VALUES (1, '', '', '', '', '', 'admin', 'admin', 5, '1') ;
#
# End of data contents of table users
# --------------------------------------------------------

