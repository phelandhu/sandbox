CREATE DATABASE `store`;
USE DATABASE `store`

--
--Table structure for table `authors`
--
DROP TABLE IF EXISTS `authors`
--
--Dumping data for table `authors`
--
INSERT INTO `authors` VALUES 
(1,1,'Ellern Siever'), 
(2,1,'Aaron Weber'), 
(3,2,'Arnold Robbins'), 
(4,2,'Nelson H.F. Beebe');

--
--Dumping data for table `books`
--
INSERT INTO `books` VALUES
(1, 'Linux in a Nutshell', 476),
(2, 'Classic Shell Scripting',256)

DROP TABLE IF EXISTS `purchases`;
CREATE TABLE `purchases` (
    `id` int(11) NOT NULL auto_increment,
    `user` varchar(10) default NULL,
    `title` varchar(150) default NULL,
    `day` date default NULL,
    PRIMARY KEY (`id`)
  ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
--
--Dumping data for table `purchases`
--
LOCK TABLES `purchases`
INSET INTO `purchases` VALUES
(1, 'Mdavis', 'Regualr Expression Pocket Reference', '2005-02-15'),
(2, 'Mdavis', 'JavaScript & DHTML Cookbook', '2005-02-10');