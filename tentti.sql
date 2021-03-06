-- MySQL dump 10.13  Distrib 5.7.21, for Win64 (x86_64)
--
-- Host: localhost    Database: tentti
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `kysymykset`
--

DROP TABLE IF EXISTS `kysymykset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kysymykset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Teksti` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kysymykset`
--

LOCK TABLES `kysymykset` WRITE;
/*!40000 ALTER TABLE `kysymykset` DISABLE KEYS */;
INSERT INTO `kysymykset` VALUES (1,'Mistä SQL on lyhenne?'),(2,'Mistä JDBC on lyhenne?'),(3,'Onko select SQL:n komento?');
/*!40000 ALTER TABLE `kysymykset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kysymysvaihtoehdot`
--

DROP TABLE IF EXISTS `kysymysvaihtoehdot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kysymysvaihtoehdot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kysymysid` int(11) NOT NULL,
  `teksti` varchar(255) NOT NULL,
  `oikeatvastaukset` varchar(255) NOT NULL,
  `vastausid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kysymysvaihtoehdot_kysymykset_id_fk` (`kysymysid`),
  CONSTRAINT `kysymysvaihtoehdot_kysymykset_id_fk` FOREIGN KEY (`kysymysid`) REFERENCES `kysymykset` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kysymysvaihtoehdot`
--

LOCK TABLES `kysymysvaihtoehdot` WRITE;
/*!40000 ALTER TABLE `kysymysvaihtoehdot` DISABLE KEYS */;
INSERT INTO `kysymysvaihtoehdot` VALUES (1,1,'Summer Quiz laugh','F',1),(2,1,'Structured Query Language','T',2),(3,2,'Java Database Connectivity','T',1),(4,2,'Java Digital Connectivity','F',2),(5,3,'Ei','F',1),(6,3,'Kyllä','T',2);
/*!40000 ALTER TABLE `kysymysvaihtoehdot` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-22 14:46:19
