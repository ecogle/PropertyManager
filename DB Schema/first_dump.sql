CREATE DATABASE  IF NOT EXISTS `prop_man` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `prop_man`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: prop_man
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.21-MariaDB

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
-- Table structure for table `accessories`
--

DROP TABLE IF EXISTS `accessories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accessories` (
  `accessory_id` int(11) NOT NULL AUTO_INCREMENT,
  `accessory_name` varchar(45) DEFAULT NULL,
  `accessory_desc` varchar(45) DEFAULT NULL,
  `accessory_model` varchar(45) DEFAULT NULL,
  `accessory_serial` varchar(45) DEFAULT NULL,
  `room_id_fk` int(11) DEFAULT NULL,
  PRIMARY KEY (`accessory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessories`
--

LOCK TABLES `accessories` WRITE;
/*!40000 ALTER TABLE `accessories` DISABLE KEYS */;
/*!40000 ALTER TABLE `accessories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anothertest`
--

DROP TABLE IF EXISTS `anothertest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anothertest` (
  `ID` int(11) NOT NULL,
  `FIRSTNAME` varchar(255) DEFAULT NULL,
  `LASTNAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anothertest`
--

LOCK TABLES `anothertest` WRITE;
/*!40000 ALTER TABLE `anothertest` DISABLE KEYS */;
INSERT INTO `anothertest` VALUES (152,'Chad','Ogle');
/*!40000 ALTER TABLE `anothertest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appliances`
--

DROP TABLE IF EXISTS `appliances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appliances` (
  `APPL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `APPL_BRAND_FK` int(11) DEFAULT NULL,
  `APPL_MODEL_NUM` varchar(45) DEFAULT NULL,
  `APPL_SERIAL_NUM` varchar(45) DEFAULT NULL,
  `APPL_FINISH_FK` int(11) DEFAULT NULL,
  `ROOM_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`APPL_ID`),
  KEY `ROOM_ID_idx` (`ROOM_ID`),
  KEY `APPL_FINISH_FK_idx` (`APPL_FINISH_FK`),
  CONSTRAINT `APPL_FINISH_FK` FOREIGN KEY (`APPL_FINISH_FK`) REFERENCES `appl_finish` (`APPL_FINISH_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ROOM_ID` FOREIGN KEY (`ROOM_ID`) REFERENCES `rooms` (`ROOM_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appliances`
--

LOCK TABLES `appliances` WRITE;
/*!40000 ALTER TABLE `appliances` DISABLE KEYS */;
/*!40000 ALTER TABLE `appliances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indoor_paints`
--

DROP TABLE IF EXISTS `indoor_paints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indoor_paints` (
  `INDOOR_PAINT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `INDOOR_PAINT_BRAND` int(11) DEFAULT NULL,
  `INDOOR_PAINT_COLOR` int(11) DEFAULT NULL,
  `INDOOR_PAINT_FINISH` int(11) DEFAULT NULL,
  PRIMARY KEY (`INDOOR_PAINT_ID`),
  KEY `INDOOR_PAINT_BRAND_idx` (`INDOOR_PAINT_BRAND`),
  KEY `INDOOR_PAINT_COLOR_idx` (`INDOOR_PAINT_COLOR`),
  KEY `INDOOR_PAINT_FINISH_idx` (`INDOOR_PAINT_FINISH`),
  CONSTRAINT `INDOOR_PAINT_BRAND` FOREIGN KEY (`INDOOR_PAINT_BRAND`) REFERENCES `paint_brand` (`PAINT_BRAND_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `INDOOR_PAINT_COLOR` FOREIGN KEY (`INDOOR_PAINT_COLOR`) REFERENCES `paint_color` (`PAINT_COLOR_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `INDOOR_PAINT_FINISH` FOREIGN KEY (`INDOOR_PAINT_FINISH`) REFERENCES `paint_finish` (`PAINT_FINISH_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indoor_paints`
--

LOCK TABLES `indoor_paints` WRITE;
/*!40000 ALTER TABLE `indoor_paints` DISABLE KEYS */;
/*!40000 ALTER TABLE `indoor_paints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owners`
--

DROP TABLE IF EXISTS `owners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owners` (
  `OWNER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `OWNER_FIRST_NAME` varchar(45) DEFAULT NULL,
  `OWNER_LAST_NAME` varchar(45) DEFAULT NULL,
  `OWNER_MIDDLE_NAME` varchar(45) DEFAULT NULL,
  `OWNER_ADDRESS1` varchar(45) DEFAULT NULL,
  `OWNER_ADDRESS2` varchar(45) DEFAULT NULL,
  `OWNER_CITY` varchar(45) DEFAULT NULL,
  `OWNER_STATE` varchar(45) DEFAULT NULL,
  `OWNER_ZIP` varchar(45) DEFAULT NULL,
  `OWNER_EMAIL` varchar(45) DEFAULT NULL,
  `OWNER_PHONE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`OWNER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=652 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owners`
--

LOCK TABLES `owners` WRITE;
/*!40000 ALTER TABLE `owners` DISABLE KEYS */;
INSERT INTO `owners` VALUES (202,'Erik','Ogle',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(252,'Erik','Ogle',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(301,'Erik','Ogle',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(651,'Erik','Ogle',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `owners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paint_brand`
--

DROP TABLE IF EXISTS `paint_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paint_brand` (
  `PAINT_BRAND_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PAINT_BRAND_NAME` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PAINT_BRAND_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paint_brand`
--

LOCK TABLES `paint_brand` WRITE;
/*!40000 ALTER TABLE `paint_brand` DISABLE KEYS */;
/*!40000 ALTER TABLE `paint_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paint_color`
--

DROP TABLE IF EXISTS `paint_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paint_color` (
  `PAINT_COLOR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PAINT_COLOR` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PAINT_COLOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paint_color`
--

LOCK TABLES `paint_color` WRITE;
/*!40000 ALTER TABLE `paint_color` DISABLE KEYS */;
/*!40000 ALTER TABLE `paint_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paint_finish`
--

DROP TABLE IF EXISTS `paint_finish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paint_finish` (
  `PAINT_FINISH_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PAINT_FINISH` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PAINT_FINISH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paint_finish`
--

LOCK TABLES `paint_finish` WRITE;
/*!40000 ALTER TABLE `paint_finish` DISABLE KEYS */;
/*!40000 ALTER TABLE `paint_finish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `properties` (
  `PROPERTY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROPERTY_ADDRESS1` varchar(45) DEFAULT NULL,
  `PROPERTY_ADDRESS2` varchar(45) DEFAULT NULL,
  `PROPERTY_CITY` varchar(45) DEFAULT NULL,
  `PROPERTY_STATE` varchar(45) DEFAULT NULL,
  `PROPERTY_ZIP` varchar(45) DEFAULT NULL,
  `PROPERTY_DESC` varchar(45) DEFAULT NULL,
  `OWNER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PROPERTY_ID`),
  KEY `OWNER_ID_idx` (`OWNER_ID`),
  CONSTRAINT `OWNER_ID` FOREIGN KEY (`OWNER_ID`) REFERENCES `owners` (`OWNER_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=653 DEFAULT CHARSET=tis620;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES (652,'1422 General Pershing Street',NULL,'New Orleans','Louisianna','70115',NULL,651);
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property` (
  `PROPERTY_ID` int(11) NOT NULL,
  `PROPERTY_ADDRESS1` varchar(255) DEFAULT NULL,
  `PROPERTY_ADDRESS2` varchar(255) DEFAULT NULL,
  `PROPERTY_CITY` varchar(255) DEFAULT NULL,
  `PROPERTY_DESC` varchar(255) DEFAULT NULL,
  `PROPERTY_STATE` varchar(255) DEFAULT NULL,
  `PROPERTY_ZIP` varchar(255) DEFAULT NULL,
  `OWNER_OWNER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PROPERTY_ID`),
  KEY `FK_PROPERTY_OWNER_OWNER_ID` (`OWNER_OWNER_ID`),
  CONSTRAINT `FK_PROPERTY_OWNER_OWNER_ID` FOREIGN KEY (`OWNER_OWNER_ID`) REFERENCES `owners` (`OWNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (201,'1422 General Pershing Street',NULL,'New Orleans',NULL,'Louisianna','70115',202),(251,'1422 General Pershing Street',NULL,'New Orleans',NULL,'Louisianna','70115',252),(302,'1422 General Pershing Street',NULL,'New Orleans',NULL,'Louisianna','70115',301);
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_types`
--

DROP TABLE IF EXISTS `room_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_types` (
  `ROOM_TYPE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROOM_TYPE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ROOM_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_types`
--

LOCK TABLES `room_types` WRITE;
/*!40000 ALTER TABLE `room_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `ROOM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROOM_TYPE_FK` int(11) DEFAULT NULL,
  `PROPERTY_ID` int(11) DEFAULT NULL,
  `TRIM_PAINT_FK` int(11) DEFAULT NULL,
  `BASE_PAINT_FK` int(11) DEFAULT NULL,
  `ACCENT_PAINT_FK` int(11) DEFAULT NULL,
  `FLOOR_FK` int(11) DEFAULT NULL,
  PRIMARY KEY (`ROOM_ID`),
  KEY `PROPERTY_ID_idx` (`PROPERTY_ID`),
  KEY `ROOM_TYPE_FK_idx` (`ROOM_TYPE_FK`),
  KEY `TRIM_PAINT_FK_idx` (`TRIM_PAINT_FK`),
  KEY `BASE_PAINT_FK_idx` (`BASE_PAINT_FK`),
  KEY `ACCENT_PAINT_FK_idx` (`ACCENT_PAINT_FK`),
  CONSTRAINT `ACCENT_PAINT_FK` FOREIGN KEY (`ACCENT_PAINT_FK`) REFERENCES `indoor_paints` (`INDOOR_PAINT_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `BASE_PAINT_FK` FOREIGN KEY (`BASE_PAINT_FK`) REFERENCES `indoor_paints` (`INDOOR_PAINT_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `PROPERTY_ID` FOREIGN KEY (`PROPERTY_ID`) REFERENCES `properties` (`PROPERTY_ID`) ON UPDATE CASCADE,
  CONSTRAINT `ROOM_TYPE_FK` FOREIGN KEY (`ROOM_TYPE_FK`) REFERENCES `room_types` (`ROOM_TYPE_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `TRIM_PAINT_FK` FOREIGN KEY (`TRIM_PAINT_FK`) REFERENCES `indoor_paints` (`INDOOR_PAINT_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence`
--

DROP TABLE IF EXISTS `sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sequence` (
  `SEQ_NAME` varchar(50) NOT NULL,
  `SEQ_COUNT` decimal(38,0) DEFAULT NULL,
  PRIMARY KEY (`SEQ_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequence`
--

LOCK TABLES `sequence` WRITE;
/*!40000 ALTER TABLE `sequence` DISABLE KEYS */;
INSERT INTO `sequence` VALUES ('SEQ_GEN',700);
/*!40000 ALTER TABLE `sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testme`
--

DROP TABLE IF EXISTS `testme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testme` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testme`
--

LOCK TABLES `testme` WRITE;
/*!40000 ALTER TABLE `testme` DISABLE KEYS */;
INSERT INTO `testme` VALUES (151,'Chad');
/*!40000 ALTER TABLE `testme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tile`
--

DROP TABLE IF EXISTS `tile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tile` (
  `TILE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TILE_COLOR` varchar(45) DEFAULT NULL,
  `TILE_WIDTH` varchar(45) DEFAULT NULL,
  `TILE_LENGTH` varchar(45) DEFAULT NULL,
  `TILE_MODEL_NUM` varchar(45) DEFAULT NULL,
  `ROOM_ID_FK` int(11) DEFAULT NULL,
  PRIMARY KEY (`TILE_ID`),
  KEY `ROOM_ID_idx` (`ROOM_ID_FK`),
  CONSTRAINT `ROOM_ID_FK` FOREIGN KEY (`ROOM_ID_FK`) REFERENCES `rooms` (`ROOM_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tile`
--

LOCK TABLES `tile` WRITE;
/*!40000 ALTER TABLE `tile` DISABLE KEYS */;
/*!40000 ALTER TABLE `tile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-09  5:50:29
