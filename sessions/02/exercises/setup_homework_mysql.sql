#==================================================
#   Create database

DROP DATABASE IF EXISTS homework;
CREATE DATABASE homework;


#==================================================

-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: homework
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
-- Table structure for table `date_string`
--

DROP TABLE IF EXISTS homework.date_string;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE homework.date_string (
  `date_as_string` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `date_string`
--

LOCK TABLES homework.date_string WRITE;
/*!40000 ALTER TABLE homework.date_string DISABLE KEYS */;
INSERT INTO homework.date_string VALUES ('1-Jan-13'),('15-Jan-13'),('1-Feb-13'),('15-Feb-13'),('1-Mar-13'),('15-Mar-13'),('1-Apr-13'),('15-Apr-13'),('1-May-13'),('15-May-13'),('1-Jun-13'),('15-Jun-13'),('1-Jul-13'),('15-Jul-13'),('1-Aug-13'),('15-Aug-13'),('1-Sep-13'),('15-Sep-13'),('1-Oct-13'),('15-Oct-13'),('1-Nov-13'),('15-Nov-13'),('1-Dec-13'),('15-Dec-13');
/*!40000 ALTER TABLE homework.date_string ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-09 15:48:50
