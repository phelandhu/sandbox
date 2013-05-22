-- MySQL dump 10.13  Distrib 5.5.28, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: web_player
-- ------------------------------------------------------
-- Server version	5.5.28-0ubuntu0.12.04.3-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `web_player`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `web_player` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `web_player`;

--
-- Table structure for table `music`
--

DROP TABLE IF EXISTS `music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artist` varchar(256) DEFAULT NULL,
  `album` varchar(256) DEFAULT NULL,
  `path` varchar(1024) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `track` varchar(6) DEFAULT NULL,
  `genre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music`
--

LOCK TABLES `music` WRITE;
/*!40000 ALTER TABLE `music` DISABLE KEYS */;
/*!40000 ALTER TABLE `music` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `BB_Dev`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `BB_Dev` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `BB_Dev`;

--
-- Table structure for table `Bankinginformation`
--

DROP TABLE IF EXISTS `Bankinginformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bankinginformation` (
  `BankinginformationID` int(11) NOT NULL AUTO_INCREMENT,
  `PersonalinformationID` int(11) NOT NULL,
  `ACCOUNTHOLDER` varchar(100) NOT NULL,
  `BANKNAME` varchar(50) NOT NULL,
  `BANKPHONE` varchar(13) NOT NULL,
  `ACCOUNTTYPE` varchar(11) NOT NULL,
  `ROUTINGNUMBER` varchar(9) NOT NULL,
  `ACCOUNTNUMBER` varchar(17) NOT NULL,
  `BANKMONTHS` int(2) NOT NULL,
  `BANKYEARS` int(2) NOT NULL,
  `OUTSTANDINGAMT` int(11) NOT NULL,
  `ACTIVECHECKING` int(11) NOT NULL,
  PRIMARY KEY (`BankinginformationID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bankinginformation`
--

LOCK TABLES `Bankinginformation` WRITE;
/*!40000 ALTER TABLE `Bankinginformation` DISABLE KEYS */;
INSERT INTO `Bankinginformation` VALUES (1,12,'Test Account','Test Fargo','714-555-1212','checking','657968345','949852136',24,2,234,1);
/*!40000 ALTER TABLE `Bankinginformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Campaigns`
--

DROP TABLE IF EXISTS `Campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Campaigns` (
  `CampaingnID` int(11) NOT NULL AUTO_INCREMENT,
  `Active` int(1) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `LeadProviderID` int(11) NOT NULL,
  `PurchasePrice` int(11) NOT NULL,
  `StartDate` date NOT NULL,
  `Currency` varchar(3) NOT NULL,
  PRIMARY KEY (`CampaingnID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Campaigns`
--

LOCK TABLES `Campaigns` WRITE;
/*!40000 ALTER TABLE `Campaigns` DISABLE KEYS */;
INSERT INTO `Campaigns` VALUES (0,0,'MID-Month',0,18,'2012-06-15','USD'),(23,1,'Start Of Month 3',0,12,'2012-06-15','USD'),(25,1,'End of business',0,56,'2012-06-15','USD'),(26,0,'Mike Test',0,5,'2012-07-31','USD'),(27,1,'Test Campaign',1,1,'0000-00-00','USD'),(28,1,'Test Campaign',1,1,'0000-00-00','USD'),(29,1,'Test Campaign 2',1,1,'0000-00-00','USD'),(30,0,'Test Save',2,13,'2012-11-23','USD'),(31,0,'Test Save 43',4,13,'2012-11-23','USD'),(32,0,'Start Of Month',2,12,'2012-06-15','USD'),(33,0,'Test of the run',2,25,'2012-11-24','USD');
/*!40000 ALTER TABLE `Campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LeadProvider`
--

DROP TABLE IF EXISTS `LeadProvider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LeadProvider` (
  `LeadProviderID` int(11) NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(64) NOT NULL,
  `PrimaryPhoneNumebr` varchar(16) NOT NULL,
  `TechnicalPOCName` varchar(64) NOT NULL,
  `TechnicalPOCEmailAddress` varchar(256) NOT NULL,
  `SalesPOCName` varchar(256) NOT NULL,
  `SalesPOCEmailAddress` varchar(256) NOT NULL,
  `IntegrationDate` date NOT NULL,
  `APIField1` varchar(256) NOT NULL,
  `APIField2` varchar(256) NOT NULL,
  `SendingURL` varchar(512) NOT NULL,
  PRIMARY KEY (`LeadProviderID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LeadProvider`
--

LOCK TABLES `LeadProvider` WRITE;
/*!40000 ALTER TABLE `LeadProvider` DISABLE KEYS */;
INSERT INTO `LeadProvider` VALUES (2,'Montgomery','8082840599','Kevin Heart','KHeart@MontgomeryCredit.co','Sara Zimmerman','SZimmerman@MontgomeryCredit.co','2012-06-22','ZHM234ka1005v55cVVWRincx3359VL','JOJJomp78903i892cbg4Oo0mmX789P','MontgomeryCredit.co'),(4,'Digimarc','5033310983','Thuy Nguyen','Nguyen','Tran Nguyen','Johnathan Beck','2012-07-25','jjOku930uroLJKsdur093ioprjekpkfe923i','JJFIOJIEjioej9089I90FKDKKLDSKkldks','Digimarc.com');
/*!40000 ALTER TABLE `LeadProvider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PassFail`
--

DROP TABLE IF EXISTS `PassFail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PassFail` (
  `PassGoodID` int(11) NOT NULL AUTO_INCREMENT,
  `PersonalinformationID` int(11) NOT NULL,
  `LeadProviderID` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  `ResultXML` varchar(2048) NOT NULL,
  `DateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PassGoodID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PassFail`
--

LOCK TABLES `PassFail` WRITE;
/*!40000 ALTER TABLE `PassFail` DISABLE KEYS */;
INSERT INTO `PassFail` VALUES (1,0,2,2,'<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?>\n<note>\n	<to>Tove</to>\n	<from>Jani</from>\n	<heading>Reminder</heading>\n	<body>Don\'t forget me this weekend!</body>\n</note>','2012-11-07 00:04:44'),(2,0,2,2,'<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?>\n<note>\n	<to>Tove</to>\n	<from>Jani</from>\n	<heading>Reminder</heading>\n	<body>Don\'t forget me this weekend!</body>\n</note>','2012-11-07 00:04:55');
/*!40000 ALTER TABLE `PassFail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PassGood`
--

DROP TABLE IF EXISTS `PassGood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PassGood` (
  `PassGoodID` int(11) NOT NULL AUTO_INCREMENT,
  `PersonalinformationID` int(11) NOT NULL,
  `LeadProviderID` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  `ResultXML` varchar(2048) NOT NULL,
  `DateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PassGoodID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PassGood`
--

LOCK TABLES `PassGood` WRITE;
/*!40000 ALTER TABLE `PassGood` DISABLE KEYS */;
INSERT INTO `PassGood` VALUES (1,0,2,1,'<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?>\n<note>\n	<to>Tove</to>\n	<from>Jani</from>\n	<heading>Reminder</heading>\n	<body>Don\'t forget me this weekend!</body>\n</note>','2012-11-07 00:05:37');
/*!40000 ALTER TABLE `PassGood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RulesManagementSet`
--

DROP TABLE IF EXISTS `RulesManagementSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RulesManagementSet` (
  `RulesManagementSetID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(128) NOT NULL,
  `rulesID` int(11) NOT NULL,
  `Active` int(1) NOT NULL,
  `memberID` int(11) NOT NULL,
  PRIMARY KEY (`RulesManagementSetID`)
) ENGINE=InnoDB AUTO_INCREMENT=408 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RulesManagementSet`
--

LOCK TABLES `RulesManagementSet` WRITE;
/*!40000 ALTER TABLE `RulesManagementSet` DISABLE KEYS */;
INSERT INTO `RulesManagementSet` VALUES (384,'test seven',0,1,1),(385,'Test 1,2,5,6,8,9',0,0,1),(386,'Test eight',0,0,1),(387,'Test eight',0,0,1),(388,'Test eight',0,0,1),(389,'Test eight',0,0,1),(390,'Test group five',0,1,1),(391,'Test group five',0,1,1),(392,'Test group five',0,1,1),(393,'Test group five',0,1,1),(394,'Test eight',0,0,1),(395,'Test eight',0,0,1),(396,'Test eight',0,0,1),(397,'Test eight',0,0,1),(398,'Test eight',0,0,1),(399,'Test eight',0,0,1),(400,'Test eight',0,0,1),(401,'test nine teen',0,0,1),(402,'test twenty',0,0,1),(403,'test twenty-one',0,0,1),(404,'test twenty-two',0,0,1),(405,'test twenty-two',0,0,1),(406,'test twenty-two',0,0,1),(407,'test twenty-two',0,0,1);
/*!40000 ALTER TABLE `RulesManagementSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transactions_Leads`
--

DROP TABLE IF EXISTS `Transactions_Leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Transactions_Leads` (
  `LeadsTransaction_PASSID` int(11) NOT NULL AUTO_INCREMENT,
  `apiusername` varchar(100) NOT NULL,
  `apipassword` varchar(100) NOT NULL,
  `STOREKEY` varchar(100) NOT NULL,
  `REFURL` varchar(256) NOT NULL,
  `IPADDRESS` varchar(21) NOT NULL,
  `TIERKEY` varchar(100) NOT NULL,
  `AFFID` varchar(100) NOT NULL,
  `SUBID` varchar(100) NOT NULL,
  `TEST` int(1) NOT NULL,
  `REQUESTEDAMOUNT` varchar(6) NOT NULL,
  `SSN` varchar(16) NOT NULL,
  `DOB` varchar(11) NOT NULL,
  `GENDER` varchar(1) NOT NULL,
  `FIRSTNAME` varchar(100) NOT NULL,
  `LASTNAME` varchar(100) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `CITY` varchar(100) NOT NULL,
  `STATE` varchar(2) NOT NULL,
  `HOMEPHONE` varchar(13) NOT NULL,
  `OTHERPHONE` varchar(13) NOT NULL,
  `DLSTATE` varchar(2) NOT NULL,
  `DLNUMBER` varchar(32) NOT NULL,
  `CONTACTTIME` varchar(1) NOT NULL,
  `ADDRESSMONTHS` varchar(2) NOT NULL,
  `ADDRESSYEARS` varchar(2) NOT NULL,
  `RENTOROWN` varchar(1) NOT NULL,
  `ISMILITARY` varchar(1) NOT NULL,
  `ISCITIZEN` varchar(1) NOT NULL,
  `OTHEROFFERS` varchar(1) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `INCOMETYPE` varchar(1) NOT NULL,
  `PAYTYPE` varchar(1) NOT NULL,
  `EMPMONTHS` varchar(2) NOT NULL,
  `EMPYEARS` varchar(2) NOT NULL,
  `EMPNAME` varchar(100) NOT NULL,
  `EMPADDRESS` varchar(100) NOT NULL,
  `EMPADDRESS2` varchar(100) NOT NULL,
  `EMPCITY` varchar(100) NOT NULL,
  `EMPSTATE` varchar(2) NOT NULL,
  `EMPZIP` varchar(11) NOT NULL,
  `EMPPHONE` varchar(13) NOT NULL,
  `EMPPHONEEXT` varchar(6) NOT NULL,
  `EMPFAX` varchar(13) NOT NULL,
  `SUPERVISORNAME` varchar(100) NOT NULL,
  `SUPERVISORPHONE` varchar(13) NOT NULL,
  `SUPERVISORPHONEEXT` varchar(6) NOT NULL,
  `HIREDATE` varchar(11) NOT NULL,
  `EMPTYPE` varchar(1) NOT NULL,
  `JOBTITLE` varchar(100) NOT NULL,
  `WORKSHIFT` varchar(1) NOT NULL,
  `PAYFREQUENCY` varchar(11) NOT NULL,
  `NETMONTHLY` varchar(6) NOT NULL,
  `GROSSMONTHLY` varchar(6) NOT NULL,
  `LASTPAYDATE` varchar(11) NOT NULL,
  `NEXTPAYDATE` varchar(11) NOT NULL,
  `SECONDPAYDATE` varchar(11) NOT NULL,
  `ACCOUNTHOLDER` varchar(100) NOT NULL,
  `BANKNAME` varchar(100) NOT NULL,
  `BANKPHONE` varchar(13) NOT NULL,
  `ACCOUNTTYPE` varchar(1) NOT NULL,
  `ROUTINGNUMBER` varchar(9) NOT NULL,
  `ACCOUNTNUMBER` varchar(17) NOT NULL,
  `BANKMONTHS` int(2) NOT NULL,
  `BANKYEARS` int(2) NOT NULL,
  `OUTSTANDINGAMT` int(6) NOT NULL,
  `ACTIVECHECKING` varchar(1) NOT NULL,
  `REFFIRSTNAME` varchar(100) NOT NULL,
  `REFLASTNAME` varchar(100) NOT NULL,
  `PHONE` varchar(14) NOT NULL,
  `RELATIONSHIP` varchar(1) NOT NULL,
  `FLAG` varchar(32) NOT NULL,
  `DATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `RESULTS` varchar(2048) NOT NULL,
  `CODE` int(1) NOT NULL,
  PRIMARY KEY (`LeadsTransaction_PASSID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transactions_Leads`
--

LOCK TABLES `Transactions_Leads` WRITE;
/*!40000 ALTER TABLE `Transactions_Leads` DISABLE KEYS */;
INSERT INTO `Transactions_Leads` VALUES (1,'test','test','I5uHFVhfKGWpdXOr','http://www.fsc-bb.com','98.160.229.122','I5uHFVhfKGWpdXOr','','',0,'10000','111224444','01-04-1976','','Jonathan','Doever','1343 NE Webster','Portland','OR','5032840599','5032840591','OR','5189376','','11','3','1','1','1','1','Jonathan@ColumbiaOutdoorWear.com','E','D','11','6','ColumbiaOutdoorWear','','','','','','5035551212','','','','','','11-11-2005','F','','','W','2434','3000','07-29-2012','07-13-2012','07-27-2012','','First Iterstate','','C','107003052','092900480',5,23,0,'Y','Jane','Doever','5032840591','S','','2012-07-11 00:39:40','<error><code>1</code><msg>OK</msg></error>',1),(2,'test','test','I5uHFVhfKGWpdXOr','http://www.fsc-bb.com','98.160.229.122','I5uHFVhfKGWpdXOr','','',0,'10000','111224444','01-04-1976','','Jonathan','Doever','1343 NE Webster','Portland','OR','5032840599','5032840591','OR','5189376','','11','3','1','1','1','1','Jonathan@ColumbiaOutdoorWear.com','E','D','11','6','ColumbiaOutdoorWear','','','','','','5035551212','','','','','','11-11-2005','F','','','W','2434','3000','07-29-2012','07-13-2012','07-27-2012','','First Iterstate','','C','107003052','092900480',5,23,0,'Y','Jane','Doever','5032840591','S','','2012-07-11 00:46:44','<error><code>1</code><msg>OK</msg></error>',1),(3,'test','test','I5uHFVhfKGWpdXOr','http://www.fsc-bb.com','98.160.229.122','I5uHFVhfKGWpdXOr','','',0,'10000','111224444','01-04-1976','','Jonathan','Doever','1343 NE Webster','Portland','OR','5032840599','5032840591','OR','5189376','','11','3','1','1','1','1','Jonathan@ColumbiaOutdoorWear.com','E','D','11','6','ColumbiaOutdoorWear','','','','','','5035551212','','','','','','11-11-2005','F','','','W','2434','3000','07-29-2012','07-13-2012','07-27-2012','','First Iterstate','','C','107003052','092900480',5,23,0,'Y','Jane','Doever','5032840591','S','','2012-07-11 01:08:43','<error><code>1</code><msg>OK</msg></error>',1),(4,'test','test','I5uHFVhfKGWpdXOr','http://www.fsc-bb.com','98.160.229.122','I5uHFVhfKGWpdXOr','','',0,'10000','111224444','01-04-1976','','Jonathan','Doever','1343 NE Webster','Portland','OR','5032840599','5032840591','OR','5189376','','11','3','1','1','1','1','Jonathan@ColumbiaOutdoorWear.com','E','D','11','6','ColumbiaOutdoorWear','','','','','','5035551212','','','','','','11-11-2005','F','','','W','2434','3000','07-29-2012','07-13-2012','07-27-2012','','First Iterstate','','C','107003052','092900480',5,23,0,'Y','Jane','Doever','5032840591','S','TREE','2012-07-11 01:30:20','<error><code>1</code><msg>OK</msg></error>',1),(5,'test','test','I5uHFVhfKGWpdXOr','http://www.fsc-bb.com','98.160.229.122','I5uHFVhfKGWpdXOr','','',0,'10000','111224444','01-04-1976','','Jonathan','Doever','1343 NE Webster','Portland','OR','5032840599','5032840591','OR','5189376','','11','3','1','1','1','1','Jonathan@ColumbiaOutdoorWear.com','E','D','11','6','ColumbiaOutdoorWear','','','','','','5035551212','','','','','','11-11-2005','F','','','W','2434','3000','07-29-2012','07-13-2012','07-27-2012','','First Iterstate','','C','107003052','092900480',5,23,0,'Y','Jane','Doever','5032840591','S','TREE','2012-07-11 01:34:38','<error><code>1</code><msg>OK</msg></error>',1),(6,'test','test','I5uHFVhfKGWpdXOr','http://www.fsc-bb.com','98.160.229.122','I5uHFVhfKGWpdXOr','','',0,'10000','111224444','01-04-1976','','Jonathan','Doever','1343 NE Webster','Portland','OR','5032840599','5032840591','OR','5189376','','11','3','1','1','1','1','Jonathan@ColumbiaOutdoorWear.com','E','D','11','6','ColumbiaOutdoorWear','','','','','','5035551212','','','','','','11-11-2005','F','','','W','2434','3000','07-29-2012','07-13-2012','07-27-2012','','First Iterstate','','C','107003052','092900480',5,23,0,'Y','Jane','Doever','5032840591','S','TREE','2012-07-11 01:35:12','<error><code>1</code><msg>OK</msg></error>',1),(7,'test','test','I5uHFVhfKGWpdXOr','http://www.fsc-bb.com','98.160.229.122','I5uHFVhfKGWpdXOr','','',0,'10000','111224444','01-04-1976','','Jonathan','Doever','1343 NE Webster','Portland','OR','5032840599','5032840591','OR','5189376','','11','3','1','1','1','1','Jonathan@ColumbiaOutdoorWear.com','E','D','11','6','ColumbiaOutdoorWear','','','','','','5035551212','','','','','','11-11-2005','F','','','W','2434','3000','07-29-2012','07-13-2012','07-27-2012','','First Iterstate','','C','107003052','092900480',5,23,0,'Y','Jane','Doever','5032840591','S','TREE','2012-07-11 01:35:28','<error><code>1</code><msg>OK</msg></error>',1),(8,'test','test','I5uHFVhfKGWpdXOr','http://www.fsc-bb.com','98.160.229.122','I5uHFVhfKGWpdXOr','','',0,'10000','111224444','01-04-1976','','Jonathan','Doever','1343 NE Webster','Portland','OR','5032840599','5032840591','OR','5189376','','11','3','1','1','1','1','Jonathan@ColumbiaOutdoorWear.com','E','D','11','6','ColumbiaOutdoorWear','','','','','','5035551212','','','','','','11-11-2005','F','','','W','2434','3000','07-29-2012','07-13-2012','07-27-2012','','First Iterstate','','C','107003052','092900480',5,23,0,'Y','Jane','Doever','5032840591','S','TREE','2012-07-11 01:36:49','<error><code>1</code><msg>OK</msg></error>',1),(9,'test','test','I5uHFVhfKGWpdXOr','http://www.fsc-bb.com','98.160.229.122','I5uHFVhfKGWpdXOr','','',0,'10000','111224444','01-04-1976','','Jonathan','Doever','1343 NE Webster','Portland','OR','5032840599','5032840591','OR','5189376','','11','3','1','1','1','1','Jonathan@ColumbiaOutdoorWear.com','E','D','11','6','ColumbiaOutdoorWear','','','','','','5035551212','','','','','','11-11-2005','F','','','W','2434','3000','07-29-2012','07-13-2012','07-27-2012','','First Iterstate','','C','107003052','092900480',5,23,0,'Y','Jane','Doever','5032840591','S','TREE','2012-07-11 01:37:37','<error><code>1</code><msg>OK</msg></error>',1),(10,'test','test','I5uHFVhfKGWpdXOr','http://www.fsc-bb.com','98.160.229.122','I5uHFVhfKGWpdXOr','','',0,'10000','111224444','01-04-1976','','Jonathan','Doever','1343 NE Webster','Portland','OR','5032840599','5032840591','OR','5189376','','11','3','1','1','1','1','Jonathan@ColumbiaOutdoorWear.com','E','D','11','6','ColumbiaOutdoorWear','','','','','','5035551212','','','','','','11-11-2005','F','','','W','2434','3000','07-29-2012','07-13-2012','07-27-2012','','First Iterstate','','C','107003052','092900480',5,23,0,'Y','Jane','Doever','5032840591','S','TREE','2012-07-11 01:38:12','<error><code>1</code><msg>OK</msg></error>',1),(11,'test','test','I5uHFVhfKGWpdXOr','http://www.fsc-bb.com','98.160.229.122','I5uHFVhfKGWpdXOr','','',0,'10000','111224444','01-04-1976','','Jonathan','Doever','1343 NE Webster','Portland','OR','5032840599','5032840591','OR','5189376','','11','3','1','1','1','1','Jonathan@ColumbiaOutdoorWear.com','E','D','11','6','ColumbiaOutdoorWear','','','','','','5035551212','','','','','','11-11-2005','F','','','W','2434','3000','07-29-2012','07-13-2012','07-27-2012','','First Iterstate','','C','107003052','092900480',5,23,0,'Y','Jane','Doever','5032840591','S','TREE','2012-07-11 01:38:51','<error><code>1</code><msg>OK</msg></error>',1),(12,'test','test','I5uHFVhfKGWpdXOr','http://www.fsc-bb.com','98.160.229.122','I5uHFVhfKGWpdXOr','','',0,'10000','111224444','01-04-1976','','Jonathan','Doever','1343 NE Webster','Portland','OR','5032840599','5032840591','OR','5189376','','11','3','1','1','1','1','Jonathan@ColumbiaOutdoorWear.com','E','D','11','6','ColumbiaOutdoorWear','','','','','','5035551212','','','','','','11-11-2005','F','','','W','2434','3000','07-29-2012','07-13-2012','07-27-2012','','First Iterstate','','C','107003052','092900480',5,23,0,'Y','Jane','Doever','5032840591','S','TREE','2012-07-11 01:39:38','<error><code>1</code><msg>OK</msg></error>',1),(13,'test','test','I5uHFVhfKGWpdXOr','http://www.fsc-bb.com','98.160.229.122','I5uHFVhfKGWpdXOr','','',0,'10000','111224444','01-04-1976','','Jonathan','Doever','1343 NE Webster','Portland','OR','5032840599','5032840591','OR','5189376','','11','3','1','1','1','1','Jonathan@ColumbiaOutdoorWear.com','E','D','11','6','ColumbiaOutdoorWear','','','','','','5035551212','','','','','','11-11-2005','F','','','W','2434','3000','07-29-2012','07-13-2012','07-27-2012','','First Iterstate','','C','107003052','092900480',5,23,0,'Y','Jane','Doever','5032840591','S','TREE','2012-07-11 01:41:16','<error><code>1</code><msg>OK</msg></error>',1),(14,'test','test','I5uHFVhfKGWpdXOr','http://www.fsc-bb.com','98.160.229.122','I5uHFVhfKGWpdXOr','','',0,'10000','111224444','01-04-1976','','Jonathan','Doever','1343 NE Webster','Portland','OR','5032840599','5032840591','OR','5189376','','11','3','1','1','1','1','Jonathan@ColumbiaOutdoorWear.com','E','D','11','6','ColumbiaOutdoorWear','','','','','','5035551212','','','','','','11-11-2005','F','','','W','2434','3000','07-29-2012','07-13-2012','07-27-2012','','First Iterstate','','C','107003052','092900480',5,23,0,'Y','Jane','Doever','5032840591','S','TREE','2012-07-11 01:42:54','<error><code>1</code><msg>OK</msg></error>',1),(15,'TestunAPI','TestpwAPI','sd56f4','www.example.com/ref.php','127.0.0.1','897asdf','1','34',1,'2000','555-26-7485','06-14-1980','M','Test','Testinghouse','1234 Tester street','Lehigh Acres','FL','329-555-1212','329-555-8457','FL','B98684','','4','2','0','0','1','','test@test.com','','p','11','6','Tester Paint','123459 Streat St','','LH','FL','33915','329-555-6958','','','Bob Tester','','','12-01-2005','F','Paint Tester','S','B','2250','3333','10-31-2012','11-15-2012','11-30-2012','Test Testinghouse','Wells Fargo','714-555-1212','C','366548645','981238967',4,1,123654,'','Exam','Testinghouse','2125551212','F','','2012-11-06 23:26:24','',123456),(16,'TestunAPI','TestpwAPI','sd56f4','www.example.com/ref.php','127.0.0.1','897asdf','1','34',1,'2000','555-26-7485','06-14-1980','M','Test','Testinghouse','1234 Tester street','Lehigh Acres','FL','329-555-1212','329-555-8457','FL','B98684','','4','2','0','0','1','','test@test.com','','p','11','6','Tester Paint','123459 Streat St','','LH','FL','33915','329-555-6958','','','Bob Tester','','','12-01-2005','F','Paint Tester','S','B','2250','3333','10-31-2012','11-15-2012','11-30-2012','Test Testinghouse','Wells Fargo','714-555-1212','C','366548645','981238967',4,1,123654,'','Exam','Testinghouse','2125551212','F','','2012-11-06 23:26:58','',123456),(17,'TestunAPI','TestpwAPI','sd56f4','www.example.com/ref.php','127.0.0.1','897asdf','1','34',1,'2000','555-26-7485','06-14-1980','M','Test','Testinghouse','1234 Tester street','Lehigh Acres','FL','329-555-1212','329-555-8457','FL','B98684','','4','2','0','0','1','','test@test.com','','p','11','6','Tester Paint','123459 Streat St','','LH','FL','33915','329-555-6958','','','Bob Tester','','','12-01-2005','F','Paint Tester','S','B','2250','3333','10-31-2012','11-15-2012','11-30-2012','Test Testinghouse','Wells Fargo','714-555-1212','C','366548645','981238967',4,1,123654,'','Exam','Testinghouse','2125551212','F','','2012-11-06 23:27:19','',123456),(18,'TestunAPI','TestpwAPI','sd56f4','www.example.com/ref.php','127.0.0.1','897asdf','1','34',1,'2000','555-26-7485','06-14-1980','M','Test','Testinghouse','1234 Tester street','Lehigh Acres','FL','329-555-1212','329-555-8457','FL','B98684','','4','2','0','0','1','','test@test.com','','p','11','6','Tester Paint','123459 Streat St','','LH','FL','33915','329-555-6958','','','Bob Tester','','','12-01-2005','F','Paint Tester','S','B','2250','3333','10-31-2012','11-15-2012','11-30-2012','Test Testinghouse','Wells Fargo','714-555-1212','C','366548645','981238967',4,1,123654,'','Exam','Testinghouse','2125551212','F','','2012-11-06 23:27:53','',123456),(19,'TestunAPI','TestpwAPI','sd56f4','www.example.com/ref.php','127.0.0.1','897asdf','1','34',1,'2000','555-26-7485','06-14-1980','M','Test','Testinghouse','1234 Tester street','Lehigh Acres','FL','329-555-1212','329-555-8457','FL','B98684','','4','2','0','0','1','','test@test.com','','p','11','6','Tester Paint','123459 Streat St','','LH','FL','33915','329-555-6958','','','Bob Tester','','','12-01-2005','F','Paint Tester','S','B','2250','3333','10-31-2012','11-15-2012','11-30-2012','Test Testinghouse','Wells Fargo','714-555-1212','C','366548645','981238967',4,1,123654,'','Exam','Testinghouse','2125551212','F','','2012-11-06 23:29:41','',123456),(20,'TestunAPI','TestpwAPI','sd56f4','www.example.com/ref.php','127.0.0.1','897asdf','1','34',1,'2000','555-26-7485','06-14-1980','M','Test','Testinghouse','1234 Tester street','Lehigh Acres','FL','329-555-1212','329-555-8457','FL','B98684','','4','2','0','0','1','','test@test.com','','p','11','6','Tester Paint','123459 Streat St','','LH','FL','33915','329-555-6958','','','Bob Tester','','','12-01-2005','F','Paint Tester','S','B','2250','3333','10-31-2012','11-15-2012','11-30-2012','Test Testinghouse','Wells Fargo','714-555-1212','C','366548645','981238967',4,1,123654,'','Exam','Testinghouse','2125551212','F','','2012-11-06 23:30:22','',123456),(21,'TestunAPI','TestpwAPI','sd56f4','www.example.com/ref.php','127.0.0.1','897asdf','1','34',1,'2000','555-26-7485','06-14-1980','M','Test','Testinghouse','1234 Tester street','Lehigh Acres','FL','329-555-1212','329-555-8457','FL','B98684','','4','2','0','0','1','','test@test.com','','p','11','6','Tester Paint','123459 Streat St','','LH','FL','33915','329-555-6958','','','Bob Tester','','','12-01-2005','F','Paint Tester','S','B','2250','3333','10-31-2012','11-15-2012','11-30-2012','Test Testinghouse','Wells Fargo','714-555-1212','C','366548645','981238967',4,1,123654,'','Exam','Testinghouse','2125551212','F','','2012-11-06 23:30:57','',123456),(22,'','','I5uHFVhfKGWpdXOr','http://www.fscbb.com','98.160.229.122','I5uHFVhfKGWpdXOr','southern','northern',1,'10000','111224444','01-04-1976','M','Jonathan','Doever','1343 NE Webster','Portland','or','5032840599','503284059','OR','5189376','M','3','0','O','1','1','0','Jonathan@ColumbiaOutdoorWear.gov','E','p','11','6','ColumbiaOutdoorWear','111 MAIN street ','112 MAIN street ','Portland','OR','97211','5035551212','312','5035551214','Kyle','5035551212','110','07-29-2010','F','Sales','S','B','1012','1308','06-29-2012','07-13-2012','07-27-2012','Johnathan Doever','First Interstate','5035551111','C','838583746','09290048000000011',0,0,0,'Y','Jane','Doever','5032840591','S','','2012-12-11 23:14:06','',0),(23,'','','I5uHFVhfKGWpdXOr','http://www.fscbb.com','98.160.229.122','I5uHFVhfKGWpdXOr','southern','northern',1,'10000','111224444','01-04-1976','M','Jonathan','Doever','1343 NE Webster','Portland','or','5032840599','503284059','OR','5189376','M','3','0','O','1','1','0','Jonathan@ColumbiaOutdoorWear.gov','E','p','11','6','ColumbiaOutdoorWear','111 MAIN street ','112 MAIN street ','Portland','OR','97211','5035551212','312','5035551214','Kyle','5035551212','110','07-29-2010','F','Sales','S','B','1012','1308','06-29-2012','07-13-2012','07-27-2012','Johnathan Doever','First Interstate','5035551111','C','838583746','09290048000000011',0,0,0,'Y','Jane','Doever','5032840591','S','','2012-12-11 23:18:29','',0),(24,'','','I5uHFVhfKGWpdXOr','http://www.fscbb.com','98.160.229.122','I5uHFVhfKGWpdXOr','southern','northern',1,'10000','111224444','01-04-1976','M','Jonathan','Doever','1343 NE Webster','Portland','or','5032840599','503284059','OR','5189376','M','3','0','O','1','1','0','Jonathan@ColumbiaOutdoorWear.gov','E','p','11','6','ColumbiaOutdoorWear','111 MAIN street ','112 MAIN street ','Portland','OR','97211','5035551212','312','5035551214','Kyle','5035551212','110','07-29-2010','F','Sales','S','B','1012','1308','06-29-2012','07-13-2012','07-27-2012','Johnathan Doever','First Interstate','5035551111','C','838583746','09290048000000011',0,0,0,'Y','Jane','Doever','5032840591','S','','2012-12-11 23:28:00','',0),(25,'','','I5uHFVhfKGWpdXOr','http://www.fscbb.com','98.160.229.122','I5uHFVhfKGWpdXOr','southern','northern',1,'10000','111224444','01-04-1976','M','Jonathan','Doever','1343 NE Webster','Portland','or','5032840599','503284059','OR','5189376','M','3','0','O','1','1','0','Jonathan@ColumbiaOutdoorWear.gov','E','p','11','6','ColumbiaOutdoorWear','111 MAIN street ','112 MAIN street ','Portland','OR','97211','5035551212','312','5035551214','Kyle','5035551212','110','07-29-2010','F','Sales','S','B','1012','1308','06-29-2012','07-13-2012','07-27-2012','Johnathan Doever','First Interstate','5035551111','C','838583746','09290048000000011',0,0,0,'Y','Jane','Doever','5032840591','S','','2012-12-11 23:29:43','',0);
/*!40000 ALTER TABLE `Transactions_Leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logCommunication`
--

DROP TABLE IF EXISTS `logCommunication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logCommunication` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(128) DEFAULT NULL,
  `direction` varchar(15) NOT NULL,
  `data` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logCommunication`
--

LOCK TABLES `logCommunication` WRITE;
/*!40000 ALTER TABLE `logCommunication` DISABLE KEYS */;
/*!40000 ALTER TABLE `logCommunication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logVendorPost`
--

DROP TABLE IF EXISTS `logVendorPost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logVendorPost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateCreated` datetime NOT NULL,
  `dateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(45) DEFAULT NULL,
  `vendorPostTo` varchar(45) NOT NULL,
  `response` varchar(45) NOT NULL,
  `urlPostedTo` varchar(45) DEFAULT NULL,
  `transactionLeadId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logVendorPost`
--

LOCK TABLES `logVendorPost` WRITE;
/*!40000 ALTER TABLE `logVendorPost` DISABLE KEYS */;
INSERT INTO `logVendorPost` VALUES (1,'2012-12-07 16:14:28','2012-12-08 00:14:28',NULL,'EPIC','Success','www.epic.com/api/test/data',0),(2,'2012-12-07 17:05:24','2012-12-08 01:05:24',NULL,'EPIC','Success','www.epic.com/api/test/data',0),(3,'2012-12-07 17:08:25','2012-12-08 01:08:25',NULL,'EPIC','Success','www.epic.com/api/test/data',0),(4,'2012-12-07 17:10:23','2012-12-08 01:10:23',NULL,'EPIC','Success','www.epic.com/api/test/data',0),(5,'2012-12-07 17:11:14','2012-12-08 01:11:14',NULL,'EPIC','Array\n(\n    [postData] => 1\n)\n','fsc-bb/test/landingPage.php',0),(6,'2012-12-07 17:12:07','2012-12-08 01:12:07',NULL,'EPIC','Accepted','fsc-bb/test/landingPage.php',0),(7,'2012-12-07 17:16:35','2012-12-08 01:16:35',NULL,'EPIC','Array\n(\n    [postData] => 		<REQUEST>\r\n<REFER','fsc-bb/test/landingPage.php',0),(8,'2012-12-11 15:29:43','2012-12-11 23:29:43',NULL,'','Array\n(\n    [postData] => 		<REQUEST>\r\n<REFER','fsc-bb/test/landingPage.php',25);
/*!40000 ALTER TABLE `logVendorPost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(1024) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `cookie` char(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `session` char(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `ip` varchar(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `FirstName` varchar(64) NOT NULL,
  `LastName` varchar(64) NOT NULL,
  `EmailAddress` varchar(64) NOT NULL,
  `Cellphone` varchar(16) NOT NULL,
  `LeadProviderID_Default` int(11) NOT NULL,
  `APIref` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'test','ee26b0dd4af7e749aa1a8ee3c10ae9923f618980772e473f8819a5d4940e0db27ac185f8a0e1d5f84f88bc887fd67b143732c304cc5fa9ad8e6f57f50028a8ff','','','','Micheal','Zimmerman','mzim@emzim.co','2147483647',4,'c4ca4238a0b923820dcc509a6f75849b'),(4,'TestMan','ee26b0dd4af7e749aa1a8ee3c10ae9923f618980772e473f8819a5d4940e0db27ac185f8a0e1d5f84f88bc887fd67b143732c304cc5fa9ad8e6f57f50028a8ff','','','','Test','Von Testington','test@test.com','2125551212',2,'a87ff679a2f3e71d9181a67b7542122c');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruleDefinition`
--

DROP TABLE IF EXISTS `ruleDefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ruleDefinition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ruleFunctionName` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruleDefinition`
--

LOCK TABLES `ruleDefinition` WRITE;
/*!40000 ALTER TABLE `ruleDefinition` DISABLE KEYS */;
INSERT INTO `ruleDefinition` VALUES (1,'validate_text_contains'),(2,'validate_numeric_equalEqualTo_CharCount'),(3,'validate_isTrue'),(4,'validate_date_xdaysGreater'),(5,'validate_date_isHoliday'),(6,'validate_date_isWeekEnd'),(7,'validate_numeric_lesser'),(8,'validate_numeric_greaterThanEqualTo'),(9,'validate_Data_Exist');
/*!40000 ALTER TABLE `ruleDefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rules`
--

DROP TABLE IF EXISTS `rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rules` (
  `rulesID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(128) NOT NULL,
  `RuleDescription` varchar(1024) NOT NULL,
  `PHPLocation` varchar(128) NOT NULL DEFAULT '/include/BBCore/cbbxruleset.php',
  `value` varchar(512) NOT NULL,
  `FieldName` varchar(32) NOT NULL,
  PRIMARY KEY (`rulesID`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rules`
--

LOCK TABLES `rules` WRITE;
/*!40000 ALTER TABLE `rules` DISABLE KEYS */;
INSERT INTO `rules` VALUES (1,'Reject loan if email includes .mil ','Reject loan if email includes .mil ','validate_text_contains','.mil','personal_email'),(2,'Reject loan if email includes .gov ','Reject loan if email includes .gov ','validate_text_contains','.gov','personal_email'),(3,'ABA is invalid ','ABA is invalid ','validate_numeric_equalEqualTo_CharCount','9','bank_ROUTINGNUMBER'),(4,'Customer or spouse is in military ','Customer or spouse is in military ','validate_isTrue','Errors','personal_ISMILITARY'),(5,'Deny if bankruptcy','Deny if bankruptcy','validate_isTrue','Errors','personal_BANKRUPTCY'),(6,'Deny Loan if customer has a \"Hold\" flag','Deny Loan if customer has a \"Hold\" flag','validate_text_contains','Hold','Flag'),(7,'Deny new loan if customer has a \"Deny\" flag','Deny new loan if customer has a \"Deny\" flag ','validate_text_contains','Deny','Flag'),(8,'Employment date must be greater than or equal to 60 days ','Employment date must be greater than or equal to 60 days','validate_date_xdaysGreater','60','employment_EMPMONTHS'),(9,'Payment Type cannot be paper check','Payment Type cannot be paper check','validate_text_contains','P','employment_PAYTYPE'),(10,'Loan due date cannot be on a holiday ','Loan due date cannot be on a holiday ','validate_date_isHoliday','Errors','LOANDUEDATE'),(11,'Loan due date cannot be on a weekend ','Loan due date cannot be on a weekend','validate_date_isWeekEnd','Errors','LOANDUEDATE'),(12,'Minimum monthly Income of $1000','Minimum monthly Income of $1000','validate_numeric_lesser','1000','NETMONTHLY'),(14,'Minimum residence duration of 1 month(s)','Minimum residence duration of 1 month(s)','validate_numeric_greaterThanEqualTo','1','personal_LENGTHATRESIDENCE'),(15,'Valid home phone number','Valid home phone number','validate_numeric_equalEqualTo_CharCount','10','personal_HOMEPHONE'),(16,'Verify that Drivers License number does not exist for another applicant','Verify that Drivers License number does not exist for another applicant','validate_Data_Exist','Errors','personal_driverslicense'),(17,'Checking account must be open for 1 months or greater ','Checking account must be open for 1 months or greater ','validate_numeric_greaterThanEqualTo','1','bank_LENGTHBANKING'),(19,'Payment Type cannot be cash','Payment Type cannot be cash','validate_text_contains','C','employment_PAYTYPE'),(18,'Account # is invalid ','Account # is invalid ','validate_numeric_equalEqualTo_CharCount','17','bank_ACCOUNTNUMBER');
/*!40000 ALTER TABLE `rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xRules_RulesManagementSet`
--

DROP TABLE IF EXISTS `xRules_RulesManagementSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xRules_RulesManagementSet` (
  `RulesManagementSetId` int(11) NOT NULL,
  `RulesId` int(11) NOT NULL,
  `ruleOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xRules_RulesManagementSet`
--

LOCK TABLES `xRules_RulesManagementSet` WRITE;
/*!40000 ALTER TABLE `xRules_RulesManagementSet` DISABLE KEYS */;
INSERT INTO `xRules_RulesManagementSet` VALUES (384,1,0),(384,2,0),(385,1,0),(385,2,0),(385,5,0),(385,6,0),(385,8,0),(385,9,0),(398,6,4),(399,1,0),(399,2,1),(399,3,2),(399,4,3),(399,6,4),(400,1,0),(400,2,1),(400,3,2),(400,4,3),(400,6,4),(0,1,0),(0,2,1),(0,3,2),(0,4,3),(0,5,4),(0,6,5),(0,1,0),(0,2,1),(0,3,2),(0,4,3),(0,5,4),(0,6,5),(0,1,0),(0,2,1),(0,3,2),(0,4,3),(0,5,4),(0,6,5),(0,7,6),(0,13,12),(401,1,0),(401,2,1),(401,3,2),(401,4,3),(401,5,4),(401,6,5),(401,7,6),(401,13,12),(402,1,0),(402,2,1),(402,3,2),(402,4,3),(402,5,4),(402,6,5),(402,7,6),(402,13,12),(403,1,0),(403,2,1),(403,3,2),(403,4,3),(403,5,4),(403,6,5),(403,7,6),(403,10,7),(403,11,8),(403,13,9),(406,1,0),(406,2,1),(406,3,2),(406,4,3),(406,5,4),(406,6,5),(406,7,6),(406,10,7),(406,11,8),(406,13,9),(407,1,0),(407,2,1);
/*!40000 ALTER TABLE `xRules_RulesManagementSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `sandbox`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sandbox` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sandbox`;

--
-- Table structure for table `directory`
--

DROP TABLE IF EXISTS `directory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `phone` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directory`
--

LOCK TABLES `directory` WRITE;
/*!40000 ALTER TABLE `directory` DISABLE KEYS */;
INSERT INTO `directory` VALUES (1,'Tom Smith','512-555-0111'),(2,'Bill Smith','512-555-0112'),(3,'John Smith','512-555-0113'),(4,'Jane Smith','512-555-0114'),(5,'Sara Smith','512-555-0115');
/*!40000 ALTER TABLE `directory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `BlackBoxDev`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `BlackBoxDev` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `BlackBoxDev`;

--
-- Table structure for table `bankingInformation`
--

DROP TABLE IF EXISTS `bankingInformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bankingInformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateCreated` datetime NOT NULL,
  `dateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(45) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `personalInformationId` int(11) NOT NULL,
  `accountHolder` varchar(100) NOT NULL,
  `bankName` varchar(50) NOT NULL,
  `bankPhone` varchar(13) NOT NULL,
  `accountType` varchar(11) NOT NULL,
  `routingNumber` varchar(9) NOT NULL,
  `accountNumber` varchar(17) NOT NULL,
  `bankMonths` int(2) NOT NULL,
  `bankYears` int(2) NOT NULL,
  `outstandingAmt` int(11) NOT NULL,
  `activeChecking` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bankingInformation`
--

LOCK TABLES `bankingInformation` WRITE;
/*!40000 ALTER TABLE `bankingInformation` DISABLE KEYS */;
INSERT INTO `bankingInformation` VALUES (1,'2012-10-31 00:00:00','2012-10-31 18:43:17','','',12,'Test Account','Test Fargo','714-555-1212','checking','657968345','949852136',24,2,234,1);
/*!40000 ALTER TABLE `bankingInformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateCreated` datetime NOT NULL,
  `dateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(64) NOT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `active` int(1) NOT NULL,
  `leadProviderId` int(11) NOT NULL,
  `purchasePrice` int(11) NOT NULL,
  `startDate` date NOT NULL,
  `currency` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
INSERT INTO `campaigns` VALUES (0,'0000-00-00 00:00:00','0000-00-00 00:00:00','Mike Test','',0,0,5,'2012-07-31','USD'),(23,'0000-00-00 00:00:00','0000-00-00 00:00:00','Mike Test','',0,0,5,'2012-07-31','USD'),(24,'0000-00-00 00:00:00','0000-00-00 00:00:00','Mike Test','',0,0,5,'2012-07-31','USD'),(25,'0000-00-00 00:00:00','0000-00-00 00:00:00','Mike Test','',0,0,5,'2012-07-31','USD'),(26,'0000-00-00 00:00:00','0000-00-00 00:00:00','Mike Test','',1,0,5,'2012-07-31','USD'),(27,'2012-10-31 00:00:00','2012-10-31 20:55:56','Test Campaign','',1,1,1,'0000-00-00','45'),(28,'2012-11-05 14:10:12','2012-11-05 22:10:12','Test Campaign','',1,1,1,'0000-00-00','45');
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leadProvider`
--

DROP TABLE IF EXISTS `leadProvider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leadProvider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateCreated` datetime NOT NULL,
  `dateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(45) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `companyName` varchar(64) NOT NULL,
  `primaryPhoneNumber` varchar(16) NOT NULL,
  `technicalPocName` varchar(64) NOT NULL,
  `technicalPocEmailAddress` varchar(256) NOT NULL,
  `salesPocName` varchar(256) NOT NULL,
  `salesPocEmailAddress` varchar(256) NOT NULL,
  `integrationDate` date NOT NULL,
  `apiField1` varchar(256) NOT NULL,
  `apiField2` varchar(256) NOT NULL,
  `sendingUrl` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leadProvider`
--

LOCK TABLES `leadProvider` WRITE;
/*!40000 ALTER TABLE `leadProvider` DISABLE KEYS */;
INSERT INTO `leadProvider` VALUES (2,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'Montgomery','8082840599','Kevin Heart','KHeart@MontgomeryCredit.co','Sara Zimmerman','SZimmerman@MontgomeryCredit.co','2012-06-22','ZHM234ka1005v55cVVWRincx3359VL','JOJJomp78903i892cbg4Oo0mmX789P','MontgomeryCredit.co'),(4,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'Digimarc','5033310983','Thuy Nguyen','Nguyen','Tran Nguyen','Johnathan Beck','2012-07-25','jjOku930uroLJKsdur093ioprjekpkfe923i','JJFIOJIEjioej9089I90FKDKKLDSKkldks','Digimarc.com'),(5,'2012-10-31 00:00:00','2012-10-31 17:51:48','','','Test Co.','555-1212','Tech Von Testington','test@test.com','Sales Von Testington','sales@test.com','0000-00-00','59686934asdf','werjwe90342d','www.test.com/send'),(6,'2012-10-31 00:00:00','2012-10-31 17:53:06','','','Test Co.','555-1212','Tech Von Testington','test@test.com','Sales Von Testington','sales@test.com','0000-00-00','59686934asdf','werjwe90342d','www.test.com/send'),(7,'2012-10-31 00:00:00','2012-10-31 17:53:33','','','Test Co.','555-1212','Tech Von Testington','test@test.com','Sales Von Testington','sales@test.com','2012-10-31','now()','59686934asdf','werjwe90342d'),(8,'2012-10-31 00:00:00','2012-10-31 17:54:05','','','Test Co.','555-1212','Tech Von Testington','test@test.com','Sales Von Testington','sales@test.com','2012-10-31','59686934asdf','werjwe90342d','www.test.com/send'),(9,'2012-10-31 00:00:00','2012-10-31 18:09:16','','','Test Co.','555-1212','Tech Von Testington','test@test.com','Sales Von Testington','sales@test.com','2012-10-31','59686934asdf','werjwe90342d','www.test.com/send'),(10,'2012-10-31 00:00:00','2012-10-31 18:31:37','','','Test Co.','555-1212','Tech Von Testington','test@test.com','Sales Von Testington','sales@test.com','2012-10-31','59686934asdf','werjwe90342d','www.test.com/send');
/*!40000 ALTER TABLE `leadProvider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateCreated` datetime NOT NULL,
  `dateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(45) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(1024) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `cookie` char(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `session` char(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `ip` varchar(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `firstName` varchar(64) NOT NULL,
  `lastName` varchar(64) NOT NULL,
  `emailAddress` varchar(64) NOT NULL,
  `cellPhoneNumber` varchar(16) NOT NULL,
  `leadProviderId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'test','ee26b0dd4af7e749aa1a8ee3c10ae9923f618980772e473f8819a5d4940e0db27ac185f8a0e1d5f84f88bc887fd67b143732c304cc5fa9ad8e6f57f50028a8ff','','','','Micheal','Zimmerman','mzim@emzim.co','2147483647',4),(2,'2012-10-31 00:00:00','2012-10-31 21:36:26','','','TestV1','ee26b0dd4af7e749aa1a8ee3c10ae9923f618980772e473f8819a5d4940e0db27ac185f8a0e1d5f84f88bc887fd67b143732c304cc5fa9ad8e6f57f50028a8ff','','','','Test','Von Testington','test@test.com','2125551212',4),(3,'2012-10-31 00:00:00','2012-10-31 21:39:09','','','TestMan','ee26b0dd4af7e749aa1a8ee3c10ae9923f618980772e473f8819a5d4940e0db27ac185f8a0e1d5f84f88bc887fd67b143732c304cc5fa9ad8e6f57f50028a8ff','','','','Test','Von Testington','test@test.com','2125551212',2);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passFail`
--

DROP TABLE IF EXISTS `passFail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passFail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateCreated` datetime NOT NULL,
  `dateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(45) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `personalInformationId` int(11) NOT NULL,
  `leadProviderId` int(11) NOT NULL,
  `memberId` int(11) NOT NULL,
  `resultXml` varchar(2048) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passFail`
--

LOCK TABLES `passFail` WRITE;
/*!40000 ALTER TABLE `passFail` DISABLE KEYS */;
INSERT INTO `passFail` VALUES (1,'2012-10-31 00:00:00','2012-10-31 22:13:50','','',0,2,1,'<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?>\n<note>\n	<to>Tove</to>\n	<from>Jani</from>\n	<heading>Reminder</heading>\n	<body>Don\'t forget me this weekend!</body>\n</note>');
/*!40000 ALTER TABLE `passFail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passGood`
--

DROP TABLE IF EXISTS `passGood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passGood` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateCreated` datetime NOT NULL,
  `dateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(45) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `personalInformationId` int(11) NOT NULL,
  `leadProviderId` int(11) NOT NULL,
  `memberId` int(11) NOT NULL,
  `resultXml` varchar(2048) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passGood`
--

LOCK TABLES `passGood` WRITE;
/*!40000 ALTER TABLE `passGood` DISABLE KEYS */;
INSERT INTO `passGood` VALUES (1,'2012-10-31 00:00:00','2012-10-31 22:36:49','','Just set to fail',0,2,1,'<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?>\n<note>\n	<to>Tove</to>\n	<from>Jani</from>\n	<heading>Reminder</heading>\n	<body>Don\'t forget me this weekend!</body>\n</note>');
/*!40000 ALTER TABLE `passGood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rules`
--

DROP TABLE IF EXISTS `rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateCreated` datetime NOT NULL,
  `dateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(45) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `title` varchar(128) NOT NULL,
  `ruleDescription` varchar(1024) NOT NULL,
  `phpLocation` varchar(128) NOT NULL DEFAULT '/include/BBCore/cbbxruleset.php',
  `value` varchar(512) NOT NULL,
  `fieldName` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rules`
--

LOCK TABLES `rules` WRITE;
/*!40000 ALTER TABLE `rules` DISABLE KEYS */;
INSERT INTO `rules` VALUES (1,'0000-00-00 00:00:00','0000-00-00 00:00:00','','Test of the do','Reject loan if email includes .mil ','Reject loan if email includes .mil ','validate_text_contains','.mil','email'),(2,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'Reject loan if email includes .gov ','Reject loan if email includes .gov ','validate_text_contains','.gov','email'),(3,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'ABA is invalid ','ABA is invalid ','validate_numeric_equalEqualTo_CharCount','9','ROUTINGNUMBER'),(4,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'Customer or spouse is in military ','Customer or spouse is in military ','validate_isTrue','Errors','ISMILITARY'),(5,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'Deny if bankruptcy','Deny if bankruptcy','validate_isTrue','Errors','BANKRUPTCY'),(6,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'Deny Loan if customer has a \"Hold\" flag','Deny Loan if customer has a \"Hold\" flag','validate_text_contains','Hold','Flag'),(7,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'Deny new loan if customer has a \"Deny\" flag','Deny new loan if customer has a \"Deny\" flag ','validate_text_contains','Deny','Flag'),(8,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'Employment date must be greater than or equal to 60 days ','Employment date must be greater than or equal to 60 days','validate_date_xdaysGreater','60','EMPMONTHS'),(9,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'Payment Type cannot be paper check','Payment Type cannot be paper check','validate_text_contains','P','PAYTYPE'),(10,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'Loan due date cannot be on a holiday ','Loan due date cannot be on a holiday ','validate_date_isHoliday','Errors','LOANDUEDATE'),(11,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'Loan due date cannot be on a weekend ','Loan due date cannot be on a weekend','validate_date_isWeekEnd','Errors','LOANDUEDATE'),(12,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'Minimum monthly Income of $1000','Minimum monthly Income of $1000','validate_numeric_lesser','1000','NETMONTHLY'),(13,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'Minimum residence duration of 1 month(s)','Minimum residence duration of 1 month(s)','validate_numeric_greaterThanEqualTo','1','LENGTHATRESIDENCE'),(14,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'Valid home phone number','Valid home phone number','validate_numeric_equalEqualTo_CharCount','10','HOMEPHONE'),(15,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'Verify that Drivers License number does not exist for another applicant','Verify that Drivers License number does not exist for another applicant','validate_Data_Exist','Errors','driverslicense'),(16,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'Checking account must be open for 1 months or greater ','Checking account must be open for 1 months or greater ','validate_numeric_greaterThanEqualTo','1','LENGTHBANKING'),(17,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'Payment Type cannot be cash','Payment Type cannot be cash','validate_text_contains','C','PAYTYPE'),(18,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'Account # is invalid ','Account # is invalid ','validate_numeric_equalEqualTo_CharCount','17','ACCOUNTNUMBER'),(20,'2012-10-31 00:00:00','2012-10-31 23:42:23','','','My Test Rule','My Test Rule','myTestRule','mtr','email');
/*!40000 ALTER TABLE `rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rulesManagementSet`
--

DROP TABLE IF EXISTS `rulesManagementSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rulesManagementSet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateCreated` datetime NOT NULL,
  `dateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(45) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `title` varchar(128) NOT NULL,
  `rulesId` int(11) NOT NULL,
  `active` int(1) NOT NULL,
  `memberId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=359 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rulesManagementSet`
--

LOCK TABLES `rulesManagementSet` WRITE;
/*!40000 ALTER TABLE `rulesManagementSet` DISABLE KEYS */;
INSERT INTO `rulesManagementSet` VALUES (284,'2012-11-05 11:50:42','2012-11-05 19:50:42','test','','Test Set',0,1,1),(357,'2012-11-05 14:08:05','2012-11-05 22:08:05','','','Test group five',0,1,1),(358,'2012-11-05 14:08:21','2012-11-05 22:08:21','','','Test group five',0,1,1);
/*!40000 ALTER TABLE `rulesManagementSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactionLeads`
--

DROP TABLE IF EXISTS `transactionLeads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactionLeads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateCreated` datetime NOT NULL,
  `dateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(45) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `apiUserName` varchar(100) NOT NULL,
  `apiPassWord` varchar(100) NOT NULL,
  `storeKey` varchar(100) NOT NULL,
  `refUrl` varchar(256) NOT NULL,
  `ipAddress` varchar(21) NOT NULL,
  `tierKey` varchar(100) NOT NULL,
  `affId` varchar(100) NOT NULL,
  `subId` varchar(100) NOT NULL,
  `test` int(1) NOT NULL,
  `requestedAmount` varchar(6) NOT NULL,
  `ssn` varchar(16) NOT NULL,
  `dob` varchar(11) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(2) NOT NULL,
  `homePhone` varchar(13) NOT NULL,
  `otherPhone` varchar(13) NOT NULL,
  `dlState` varchar(2) NOT NULL,
  `dlNumber` varchar(32) NOT NULL,
  `contactTime` varchar(1) NOT NULL,
  `addressMonths` varchar(2) NOT NULL,
  `addressYears` varchar(2) NOT NULL,
  `rentOrOwn` varchar(1) NOT NULL,
  `isMilitary` varchar(1) NOT NULL,
  `isCitizen` varchar(1) NOT NULL,
  `otherOffers` varchar(1) NOT NULL,
  `email` varchar(100) NOT NULL,
  `incomeType` varchar(1) NOT NULL,
  `payType` varchar(1) NOT NULL,
  `empMonths` varchar(2) NOT NULL,
  `empYears` varchar(2) NOT NULL,
  `empName` varchar(100) NOT NULL,
  `empAddress` varchar(100) NOT NULL,
  `empAddress2` varchar(100) NOT NULL,
  `empCity` varchar(100) NOT NULL,
  `empState` varchar(2) NOT NULL,
  `empZip` varchar(11) NOT NULL,
  `empPhone` varchar(13) NOT NULL,
  `empPhoneExt` varchar(6) NOT NULL,
  `empFax` varchar(13) NOT NULL,
  `supervisorName` varchar(100) NOT NULL,
  `supervisorPhone` varchar(13) NOT NULL,
  `supervisorPhoneExt` varchar(6) NOT NULL,
  `hireDate` varchar(11) NOT NULL,
  `empType` varchar(1) NOT NULL,
  `jobTitle` varchar(100) NOT NULL,
  `workShift` varchar(1) NOT NULL,
  `payFrequency` varchar(11) NOT NULL,
  `netMonthly` varchar(6) NOT NULL,
  `grossMonthly` varchar(6) NOT NULL,
  `lastPayDate` varchar(11) NOT NULL,
  `nextPayDate` varchar(11) NOT NULL,
  `secondPayDate` varchar(11) NOT NULL,
  `accountHolder` varchar(100) NOT NULL,
  `bankName` varchar(100) NOT NULL,
  `bankPhone` varchar(13) NOT NULL,
  `accountType` varchar(1) NOT NULL,
  `routingNumber` varchar(9) NOT NULL,
  `accountNumber` varchar(17) NOT NULL,
  `bankMonths` int(2) NOT NULL,
  `bankYears` int(2) NOT NULL,
  `outStandingAmt` int(6) NOT NULL,
  `activeChecking` varchar(1) NOT NULL,
  `refFirstName` varchar(100) NOT NULL,
  `refLastName` varchar(100) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `relationship` varchar(1) NOT NULL,
  `flag` varchar(32) NOT NULL,
  `results` varchar(2048) NOT NULL,
  `code` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactionLeads`
--

LOCK TABLES `transactionLeads` WRITE;
/*!40000 ALTER TABLE `transactionLeads` DISABLE KEYS */;
INSERT INTO `transactionLeads` VALUES (1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'test','test','I5uHFVhfKGWpdXOr','http://www.fsc-bb.com','98.160.229.122','I5uHFVhfKGWpdXOr','','',0,'10000','111224444','01-04-1976','','Jonathan','Doever','1343 NE Webster','Portland','OR','5032840599','5032840591','OR','5189376','','11','3','1','1','1','1','Jonathan@ColumbiaOutdoorWear.com','E','D','11','6','ColumbiaOutdoorWear','','','','','','5035551212','','','','','','11-11-2005','F','','','W','2434','3000','07-29-2012','07-13-2012','07-27-2012','','First Iterstate','','C','107003052','092900480',5,23,0,'Y','Jane','Doever','5032840591','S','','<error><code>1</code><msg>OK</msg></error>',1),(2,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'test','test','I5uHFVhfKGWpdXOr','http://www.fsc-bb.com','98.160.229.122','I5uHFVhfKGWpdXOr','','',0,'10000','111224444','01-04-1976','','Jonathan','Doever','1343 NE Webster','Portland','OR','5032840599','5032840591','OR','5189376','','11','3','1','1','1','1','Jonathan@ColumbiaOutdoorWear.com','E','D','11','6','ColumbiaOutdoorWear','','','','','','5035551212','','','','','','11-11-2005','F','','','W','2434','3000','07-29-2012','07-13-2012','07-27-2012','','First Iterstate','','C','107003052','092900480',5,23,0,'Y','Jane','Doever','5032840591','S','','<error><code>1</code><msg>OK</msg></error>',1),(3,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'test','test','I5uHFVhfKGWpdXOr','http://www.fsc-bb.com','98.160.229.122','I5uHFVhfKGWpdXOr','','',0,'10000','111224444','01-04-1976','','Jonathan','Doever','1343 NE Webster','Portland','OR','5032840599','5032840591','OR','5189376','','11','3','1','1','1','1','Jonathan@ColumbiaOutdoorWear.com','E','D','11','6','ColumbiaOutdoorWear','','','','','','5035551212','','','','','','11-11-2005','F','','','W','2434','3000','07-29-2012','07-13-2012','07-27-2012','','First Iterstate','','C','107003052','092900480',5,23,0,'Y','Jane','Doever','5032840591','S','','<error><code>1</code><msg>OK</msg></error>',1),(4,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'test','test','I5uHFVhfKGWpdXOr','http://www.fsc-bb.com','98.160.229.122','I5uHFVhfKGWpdXOr','','',0,'10000','111224444','01-04-1976','','Jonathan','Doever','1343 NE Webster','Portland','OR','5032840599','5032840591','OR','5189376','','11','3','1','1','1','1','Jonathan@ColumbiaOutdoorWear.com','E','D','11','6','ColumbiaOutdoorWear','','','','','','5035551212','','','','','','11-11-2005','F','','','W','2434','3000','07-29-2012','07-13-2012','07-27-2012','','First Iterstate','','C','107003052','092900480',5,23,0,'Y','Jane','Doever','5032840591','S','TREE','<error><code>1</code><msg>OK</msg></error>',1),(5,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'test','test','I5uHFVhfKGWpdXOr','http://www.fsc-bb.com','98.160.229.122','I5uHFVhfKGWpdXOr','','',0,'10000','111224444','01-04-1976','','Jonathan','Doever','1343 NE Webster','Portland','OR','5032840599','5032840591','OR','5189376','','11','3','1','1','1','1','Jonathan@ColumbiaOutdoorWear.com','E','D','11','6','ColumbiaOutdoorWear','','','','','','5035551212','','','','','','11-11-2005','F','','','W','2434','3000','07-29-2012','07-13-2012','07-27-2012','','First Iterstate','','C','107003052','092900480',5,23,0,'Y','Jane','Doever','5032840591','S','TREE','<error><code>1</code><msg>OK</msg></error>',1),(6,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'test','test','I5uHFVhfKGWpdXOr','http://www.fsc-bb.com','98.160.229.122','I5uHFVhfKGWpdXOr','','',0,'10000','111224444','01-04-1976','','Jonathan','Doever','1343 NE Webster','Portland','OR','5032840599','5032840591','OR','5189376','','11','3','1','1','1','1','Jonathan@ColumbiaOutdoorWear.com','E','D','11','6','ColumbiaOutdoorWear','','','','','','5035551212','','','','','','11-11-2005','F','','','W','2434','3000','07-29-2012','07-13-2012','07-27-2012','','First Iterstate','','C','107003052','092900480',5,23,0,'Y','Jane','Doever','5032840591','S','TREE','<error><code>1</code><msg>OK</msg></error>',1),(7,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'test','test','I5uHFVhfKGWpdXOr','http://www.fsc-bb.com','98.160.229.122','I5uHFVhfKGWpdXOr','','',0,'10000','111224444','01-04-1976','','Jonathan','Doever','1343 NE Webster','Portland','OR','5032840599','5032840591','OR','5189376','','11','3','1','1','1','1','Jonathan@ColumbiaOutdoorWear.com','E','D','11','6','ColumbiaOutdoorWear','','','','','','5035551212','','','','','','11-11-2005','F','','','W','2434','3000','07-29-2012','07-13-2012','07-27-2012','','First Iterstate','','C','107003052','092900480',5,23,0,'Y','Jane','Doever','5032840591','S','TREE','<error><code>1</code><msg>OK</msg></error>',1),(8,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'test','test','I5uHFVhfKGWpdXOr','http://www.fsc-bb.com','98.160.229.122','I5uHFVhfKGWpdXOr','','',0,'10000','111224444','01-04-1976','','Jonathan','Doever','1343 NE Webster','Portland','OR','5032840599','5032840591','OR','5189376','','11','3','1','1','1','1','Jonathan@ColumbiaOutdoorWear.com','E','D','11','6','ColumbiaOutdoorWear','','','','','','5035551212','','','','','','11-11-2005','F','','','W','2434','3000','07-29-2012','07-13-2012','07-27-2012','','First Iterstate','','C','107003052','092900480',5,23,0,'Y','Jane','Doever','5032840591','S','TREE','<error><code>1</code><msg>OK</msg></error>',1),(9,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'test','test','I5uHFVhfKGWpdXOr','http://www.fsc-bb.com','98.160.229.122','I5uHFVhfKGWpdXOr','','',0,'10000','111224444','01-04-1976','','Jonathan','Doever','1343 NE Webster','Portland','OR','5032840599','5032840591','OR','5189376','','11','3','1','1','1','1','Jonathan@ColumbiaOutdoorWear.com','E','D','11','6','ColumbiaOutdoorWear','','','','','','5035551212','','','','','','11-11-2005','F','','','W','2434','3000','07-29-2012','07-13-2012','07-27-2012','','First Iterstate','','C','107003052','092900480',5,23,0,'Y','Jane','Doever','5032840591','S','TREE','<error><code>1</code><msg>OK</msg></error>',1),(10,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'test','test','I5uHFVhfKGWpdXOr','http://www.fsc-bb.com','98.160.229.122','I5uHFVhfKGWpdXOr','','',0,'10000','111224444','01-04-1976','','Jonathan','Doever','1343 NE Webster','Portland','OR','5032840599','5032840591','OR','5189376','','11','3','1','1','1','1','Jonathan@ColumbiaOutdoorWear.com','E','D','11','6','ColumbiaOutdoorWear','','','','','','5035551212','','','','','','11-11-2005','F','','','W','2434','3000','07-29-2012','07-13-2012','07-27-2012','','First Iterstate','','C','107003052','092900480',5,23,0,'Y','Jane','Doever','5032840591','S','TREE','<error><code>1</code><msg>OK</msg></error>',1),(11,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'test','test','I5uHFVhfKGWpdXOr','http://www.fsc-bb.com','98.160.229.122','I5uHFVhfKGWpdXOr','','',0,'10000','111224444','01-04-1976','','Jonathan','Doever','1343 NE Webster','Portland','OR','5032840599','5032840591','OR','5189376','','11','3','1','1','1','1','Jonathan@ColumbiaOutdoorWear.com','E','D','11','6','ColumbiaOutdoorWear','','','','','','5035551212','','','','','','11-11-2005','F','','','W','2434','3000','07-29-2012','07-13-2012','07-27-2012','','First Iterstate','','C','107003052','092900480',5,23,0,'Y','Jane','Doever','5032840591','S','TREE','<error><code>1</code><msg>OK</msg></error>',1),(12,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'test','test','I5uHFVhfKGWpdXOr','http://www.fsc-bb.com','98.160.229.122','I5uHFVhfKGWpdXOr','','',0,'10000','111224444','01-04-1976','','Jonathan','Doever','1343 NE Webster','Portland','OR','5032840599','5032840591','OR','5189376','','11','3','1','1','1','1','Jonathan@ColumbiaOutdoorWear.com','E','D','11','6','ColumbiaOutdoorWear','','','','','','5035551212','','','','','','11-11-2005','F','','','W','2434','3000','07-29-2012','07-13-2012','07-27-2012','','First Iterstate','','C','107003052','092900480',5,23,0,'Y','Jane','Doever','5032840591','S','TREE','<error><code>1</code><msg>OK</msg></error>',1),(13,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'test','test','I5uHFVhfKGWpdXOr','http://www.fsc-bb.com','98.160.229.122','I5uHFVhfKGWpdXOr','','',0,'10000','111224444','01-04-1976','','Jonathan','Doever','1343 NE Webster','Portland','OR','5032840599','5032840591','OR','5189376','','11','3','1','1','1','1','Jonathan@ColumbiaOutdoorWear.com','E','D','11','6','ColumbiaOutdoorWear','','','','','','5035551212','','','','','','11-11-2005','F','','','W','2434','3000','07-29-2012','07-13-2012','07-27-2012','','First Iterstate','','C','107003052','092900480',5,23,0,'Y','Jane','Doever','5032840591','S','TREE','<error><code>1</code><msg>OK</msg></error>',1),(14,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'test','test','I5uHFVhfKGWpdXOr','http://www.fsc-bb.com','98.160.229.122','I5uHFVhfKGWpdXOr','','',0,'10000','111224444','01-04-1976','','Jonathan','Doever','1343 NE Webster','Portland','OR','5032840599','5032840591','OR','5189376','','11','3','1','1','1','1','Jonathan@ColumbiaOutdoorWear.com','E','D','11','6','ColumbiaOutdoorWear','','','','','','5035551212','','','','','','11-11-2005','F','','','W','2434','3000','07-29-2012','07-13-2012','07-27-2012','','First Iterstate','','C','107003052','092900480',5,23,0,'Y','Jane','Doever','5032840591','S','TREE','<error><code>1</code><msg>OK</msg></error>',1),(15,'2012-11-01 00:00:00','2012-11-01 21:50:41','','','TestunAPI','TestpwAPI','sd56f4','www.example.com/ref.php','127.0.0.1','897asdf','1','34',1,'2000','555-26-7485','06-14-1980','M','Test','Testinghouse','1234 Tester street','Lehigh Acres','FL','329-555-1212','329-555-8457','FL','B98684','','4','2','0','0','1','','test@test.com','','p','11','6','Tester Paint','123459 Streat St','','LH','FL','33915','329-555-6958','','','Bob Tester','','','12-01-2005','F','Paint Tester','S','B','2250','3333','10-31-2012','11-15-2012','11-30-2012','Test Testinghouse','Wells Fargo','714-555-1212','C','366548645','981238967',4,1,123654,'','Exam','Testinghouse','2125551212','F','','',123456),(16,'2012-11-01 14:59:43','2012-11-01 21:59:43','','','TestAPIun','TestAPIpw','sd56f4','www.example.com/ref.php','127.0.0.1','897asdf','1','34',1,'2000','555-26-7485','06-14-1980','M','Test','Testinghouse','1234 Tester street','Lehigh Acres','FL','329-555-1212','329-555-8457','CA','B265818','','4','2','0','0','1','','test@test.com','','p','11','6','Tester Paint','123459 Streat St','','LH','FL','33915','329-555-6958','','','Bob Tester','','','12-01-2005','F','Paint Tester','S','B','2250','3333','10-31-2012','11-15-2012','11-30-2012','Test Testinghouse','Wells Fargo','714-555-1212','C','366548645','981238967',4,1,123654,'','Exam','Testinghouse','2125551212','F','','',123456);
/*!40000 ALTER TABLE `transactionLeads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xRules_RulesManagementSet`
--

DROP TABLE IF EXISTS `xRules_RulesManagementSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xRules_RulesManagementSet` (
  `RulesManagementSetId` int(11) NOT NULL,
  `RulesId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xRules_RulesManagementSet`
--

LOCK TABLES `xRules_RulesManagementSet` WRITE;
/*!40000 ALTER TABLE `xRules_RulesManagementSet` DISABLE KEYS */;
INSERT INTO `xRules_RulesManagementSet` VALUES (284,1),(284,2),(284,3),(284,4),(284,6),(284,10);
/*!40000 ALTER TABLE `xRules_RulesManagementSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `test`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `test` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test`;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-12-28 16:56:53
