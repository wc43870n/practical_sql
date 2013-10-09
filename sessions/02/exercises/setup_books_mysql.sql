-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: books
-- ------------------------------------------------------
-- Server version	5.5.32-0ubuntu0.12.04.1-log

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
-- Table structure for table `au_orders`
--

DROP TABLE IF EXISTS `au_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `au_orders` (
  `title_id` char(3) DEFAULT NULL,
  `author1` char(3) DEFAULT NULL,
  `author2` char(3) DEFAULT NULL,
  `author3` char(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `au_orders`
--

LOCK TABLES `au_orders` WRITE;
/*!40000 ALTER TABLE `au_orders` DISABLE KEYS */;
INSERT INTO `au_orders` VALUES ('T01','A01',NULL,NULL),('T02','A01',NULL,NULL),('T03','A05',NULL,NULL),('T04','A03','A04',NULL),('T05','A04',NULL,NULL),('T06','A02',NULL,NULL),('T07','A02','A04',NULL),('T08','A06',NULL,NULL),('T09','A06',NULL,NULL),('T10','A02',NULL,NULL),('T11','A06','A03','A04'),('T12','A02',NULL,NULL),('T13','A01',NULL,NULL);
/*!40000 ALTER TABLE `au_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `au_id` char(3) NOT NULL,
  `au_fname` varchar(15) NOT NULL,
  `au_lname` varchar(15) NOT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` char(5) DEFAULT NULL,
  PRIMARY KEY (`au_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES ('A01','Sarah','Buchman','718-496-7223','75 West 205 St','Bronx','NY','10468'),('A02','Wendy','Heydemark','303-986-7020','2922 Baseline Rd','Boulder','CO','80303'),('A03','Hallie','Hull','415-549-4278','3800 Waldo Ave, #14F','San Francisco','CA','94123'),('A04','Klee','Hull','415-549-4278','3800 Waldo Ave, #14F','San Francisco','CA','94123'),('A05','Christian','Kells','212-771-4680','114 Horatio St','New York','NY','10014'),('A06','','Kellsey','650-836-7128','390 Serra Mall','Palo Alto','CA','94305'),('A07','Paddy','O\'Furniture','941-925-0752','1442 Main St','Sarasota','FL','34236');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dups`
--

DROP TABLE IF EXISTS `dups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dups` (
  `id` int(11) DEFAULT NULL,
  `title_name` varchar(40) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dups`
--

LOCK TABLES `dups` WRITE;
/*!40000 ALTER TABLE `dups` DISABLE KEYS */;
INSERT INTO `dups` VALUES (1,'Book Title 5','children',15.00),(2,'Book Title 3','biography',7.00),(3,'Book Title 1','history',10.00),(4,'Book Title 2','children',20.00),(5,'Book Title 4','history',15.00),(6,'Book Title 1','history',10.00),(7,'Book Title 3','biography',7.00),(8,'Book Title 1','history',10.00);
/*!40000 ALTER TABLE `dups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `emp_id` char(3) NOT NULL,
  `emp_name` varchar(20) NOT NULL,
  `boss_id` char(3) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES ('E01','Lord Copper',NULL),('E02','Jocelyn Hitchcock','E01'),('E03','Mr. Salter','E01'),('E04','William Boot','E03'),('E05','Mr. Corker','E03');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empsales`
--

DROP TABLE IF EXISTS `empsales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empsales` (
  `emp_id` char(3) NOT NULL,
  `sales` int(11) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empsales`
--

LOCK TABLES `empsales` WRITE;
/*!40000 ALTER TABLE `empsales` DISABLE KEYS */;
INSERT INTO `empsales` VALUES ('E01',600),('E02',800),('E03',500),('E04',500),('E05',700),('E06',500),('E07',300),('E08',400),('E09',900),('E10',700);
/*!40000 ALTER TABLE `empsales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hier`
--

DROP TABLE IF EXISTS `hier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hier` (
  `emp_id` char(3) NOT NULL,
  `emp_title` varchar(20) NOT NULL,
  `boss_id` char(3) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hier`
--

LOCK TABLES `hier` WRITE;
/*!40000 ALTER TABLE `hier` DISABLE KEYS */;
INSERT INTO `hier` VALUES ('E01','CEO',NULL),('E02','VP1','E01'),('E03','VP2','E01'),('E04','DIR1','E02'),('E05','DIR2','E02'),('E06','DIR3','E03'),('E07','WS1','E04'),('E08','WS2','E04'),('E09','WS3','E04'),('E10','WS4','E06'),('E11','WS5','E06');
/*!40000 ALTER TABLE `hier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publishers` (
  `pub_id` char(3) NOT NULL,
  `pub_name` varchar(20) NOT NULL,
  `city` varchar(15) NOT NULL,
  `state` char(2) DEFAULT NULL,
  `country` varchar(15) NOT NULL,
  PRIMARY KEY (`pub_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishers`
--

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` VALUES ('P01','Abatis Publishers','New York','NY','USA'),('P02','Core Dump Books','San Francisco','CA','USA'),('P03','Schadenfreude Press','Hamburg',NULL,'Germany'),('P04','Tenterhooks Press','Berkeley','CA','USA');
/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roadtrip`
--

DROP TABLE IF EXISTS `roadtrip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roadtrip` (
  `seq` int(11) NOT NULL,
  `city` varchar(17) NOT NULL,
  `miles` double NOT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roadtrip`
--

LOCK TABLES `roadtrip` WRITE;
/*!40000 ALTER TABLE `roadtrip` DISABLE KEYS */;
INSERT INTO `roadtrip` VALUES (1,'Seattle, WA',0),(2,'Portland, OR',174),(3,'San Francisco, CA',808),(4,'Monterey, CA',926),(5,'Los Angeles, CA',1251),(6,'San Diego, CA',1372);
/*!40000 ALTER TABLE `roadtrip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `royalties`
--

DROP TABLE IF EXISTS `royalties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `royalties` (
  `title_id` char(3) NOT NULL,
  `advance` decimal(9,2) DEFAULT NULL,
  `royalty_rate` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`title_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `royalties`
--

LOCK TABLES `royalties` WRITE;
/*!40000 ALTER TABLE `royalties` DISABLE KEYS */;
INSERT INTO `royalties` VALUES ('T01',10000.00,0.05),('T02',1000.00,0.06),('T03',15000.00,0.07),('T04',20000.00,0.08),('T05',100000.00,0.09),('T06',20000.00,0.08),('T07',1000000.00,0.11),('T08',0.00,0.04),('T09',0.00,0.05),('T10',NULL,NULL),('T11',100000.00,0.07),('T12',50000.00,0.09),('T13',20000.00,0.06);
/*!40000 ALTER TABLE `royalties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telephones`
--

DROP TABLE IF EXISTS `telephones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telephones` (
  `au_id` char(3) NOT NULL,
  `tel_type` char(1) NOT NULL,
  `tel_no` char(12) NOT NULL,
  PRIMARY KEY (`au_id`,`tel_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telephones`
--

LOCK TABLES `telephones` WRITE;
/*!40000 ALTER TABLE `telephones` DISABLE KEYS */;
INSERT INTO `telephones` VALUES ('A01','H','111-111-1111'),('A01','W','222-222-2222'),('A02','W','333-333-3333'),('A04','H','444-444-4444'),('A04','W','555-555-5555'),('A05','H','666-666-6666');
/*!40000 ALTER TABLE `telephones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temps`
--

DROP TABLE IF EXISTS `temps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temps` (
  `id` int(11) NOT NULL,
  `hi_temp` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temps`
--

LOCK TABLES `temps` WRITE;
/*!40000 ALTER TABLE `temps` DISABLE KEYS */;
INSERT INTO `temps` VALUES (1,49),(2,46),(3,48),(4,50),(5,50),(6,50),(7,51),(8,52),(9,53),(10,50),(11,50),(12,47),(13,50),(14,51),(15,52);
/*!40000 ALTER TABLE `temps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_series`
--

DROP TABLE IF EXISTS `time_series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_series` (
  `seq` int(11) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_series`
--

LOCK TABLES `time_series` WRITE;
/*!40000 ALTER TABLE `time_series` DISABLE KEYS */;
INSERT INTO `time_series` VALUES (1,10),(2,10.5),(3,11),(4,11),(5,10.5),(6,11.5),(7,12),(8,13),(9,15),(10,13.5),(11,13),(12,12.5),(13,12),(14,12.5),(15,11);
/*!40000 ALTER TABLE `time_series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `title_authors`
--

DROP TABLE IF EXISTS `title_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `title_authors` (
  `title_id` char(3) NOT NULL,
  `au_id` char(3) NOT NULL,
  `au_order` smallint(6) NOT NULL,
  `royalty_share` decimal(5,2) NOT NULL,
  PRIMARY KEY (`title_id`,`au_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `title_authors`
--

LOCK TABLES `title_authors` WRITE;
/*!40000 ALTER TABLE `title_authors` DISABLE KEYS */;
INSERT INTO `title_authors` VALUES ('T01','A01',1,1.00),('T02','A01',1,1.00),('T03','A05',1,1.00),('T04','A03',1,0.60),('T04','A04',2,0.40),('T05','A04',1,1.00),('T06','A02',1,1.00),('T07','A02',1,0.50),('T07','A04',2,0.50),('T08','A06',1,1.00),('T09','A06',1,1.00),('T10','A02',1,1.00),('T11','A03',2,0.30),('T11','A04',3,0.30),('T11','A06',1,0.40),('T12','A02',1,1.00),('T13','A01',1,1.00);
/*!40000 ALTER TABLE `title_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titles`
--

DROP TABLE IF EXISTS `titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `titles` (
  `title_id` char(3) NOT NULL,
  `title_name` varchar(40) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `pub_id` char(3) NOT NULL,
  `pages` int(11) DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `sales` int(11) DEFAULT NULL,
  `pubdate` date DEFAULT NULL,
  `contract` smallint(6) NOT NULL,
  PRIMARY KEY (`title_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titles`
--

LOCK TABLES `titles` WRITE;
/*!40000 ALTER TABLE `titles` DISABLE KEYS */;
INSERT INTO `titles` VALUES ('T01','1977!','history','P01',107,21.99,566,'2000-08-01',1),('T02','200 Years of German Humor','history','P03',14,19.95,9566,'1998-04-01',1),('T03','Ask Your System Administrator','computer','P02',1226,39.95,25667,'2000-09-01',1),('T04','But I Did It Unconsciously','psychology','P04',510,12.99,13001,'1999-05-31',1),('T05','Exchange of Platitudes','psychology','P04',201,6.95,201440,'2001-01-01',1),('T06','How About Never?','biography','P01',473,19.95,11320,'2000-07-31',1),('T07','I Blame My Mother','biography','P03',333,23.95,1500200,'1999-10-01',1),('T08','Just Wait Until After School','children','P04',86,10.00,4095,'2001-06-01',1),('T09','Kiss My Boo-Boo','children','P04',22,13.95,5000,'2002-05-31',1),('T10','Not Without My Faberge Egg','biography','P01',NULL,NULL,NULL,NULL,0),('T11','Perhaps It\'s a Glandular Problem','psychology','P04',826,7.99,94123,'2000-11-30',1),('T12','Spontaneous, Not Annoying','biography','P01',507,12.99,100001,'2000-08-31',1),('T13','What Are The Civilian Applications?','history','P03',802,29.99,10467,'1999-05-31',1);
/*!40000 ALTER TABLE `titles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-09 15:40:21
