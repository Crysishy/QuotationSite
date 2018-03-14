-- MySQL dump 10.16  Distrib 10.1.16-MariaDB, for osx10.6 (i386)
--
-- Host: localhost    Database: quotes
-- ------------------------------------------------------
-- Server version	10.1.16-MariaDB

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
-- Current Database: `quotes`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `quotes` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `quotes`;

--
-- Table structure for table `quotation`
--

DROP TABLE IF EXISTS `quotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quotation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `added` date DEFAULT NULL,
  `quote` varchar(2000) NOT NULL,
  `author` varchar(50) NOT NULL,
  `rating` int(11) NOT NULL,
  `flagged` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotation`
--

LOCK TABLES `quotation` WRITE;
/*!40000 ALTER TABLE `quotation` DISABLE KEYS */;
INSERT INTO `quotation` VALUES (58,'2016-11-17','hello world','zhao',11,'f'),(59,'2016-11-17','biubiubiu','ethan',9,'f'),(60,'2016-11-18','This is s space.','YH',12,'f'),(61,'2016-11-18','I actually don\'t have a bad hairline.','Donald Trump',10,'f'),(62,'2016-11-18','I have a great relationship with the Mexican people.','Donald Trump',-1,'f'),(63,'2016-11-18','If you\'re walking down the right path and you\'re willing to keep walking, eventually you\'ll make progress.','Barack Obama',1,'f');
/*!40000 ALTER TABLE `quotation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotations`
--

DROP TABLE IF EXISTS `quotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quotations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author` varchar(32) NOT NULL,
  `quote` varchar(256) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotations`
--

LOCK TABLES `quotations` WRITE;
/*!40000 ALTER TABLE `quotations` DISABLE KEYS */;
INSERT INTO `quotations` VALUES (1,'2016-11-08 18:30:06','Eldridge Cleaver','Too much agreement kills a chat.',7),(2,'2016-11-08 18:41:45','Donald Trump','I actually don\'t have a bad hairline.',1),(3,'2016-11-08 23:54:17','Benjamin Franklin','Wine is constant proof that God loves us and loves to see us happy.',3),(4,'2016-11-09 00:28:38','Abraham Lincoln','No man has a good enough memory to be a successful liar.',2),(5,'2016-11-09 11:53:12','Margaret Mead','Always remember that you are absolutely unique. Just like everyone else.',0),(6,'2016-11-18 21:39:54','Yang Hong','This table \'quotations\' is for project 08, please ignore it.',0),(7,'2016-11-18 21:40:08','Yang Hong','This table \'quotations\' is for project 08, please ignore it.',0),(8,'2016-11-18 21:40:09','Yang Hong','This table \'quotations\' is for project 08, please ignore it.',0),(9,'2016-11-18 21:40:10','Yang Hong','This table \'quotations\' is for project 08, please ignore it.',0),(10,'2016-11-18 21:40:13','Yang Hong','This table \'quotations\' is for project 08, please ignore it.',0);
/*!40000 ALTER TABLE `quotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (13,'test','$2y$10$4uLgQvvUN6UN5LBS/PgV7.35cmf0bRUDcjrWsYKDlo5hXlvrUV9m.'),(14,'test1','$2y$10$vm3S0D7hiF8Jt5iPnXeiHOS84QQZePOyha9vXVGEEeSPbbvUgarUS'),(15,'yang','$2y$10$rIjVrKNxWHXrv4nlRD9AyO7k7yyjsLsP1Hefx7.3LSsid7ATZJEZi'),(16,'zhao','$2y$10$NzvhKDbQacWhaD/z9BSRCu9pxhLVrWRA8GOn/T.sUFsuA46C70Zxu');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-18 21:42:04
