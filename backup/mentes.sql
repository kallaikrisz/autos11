-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: car
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auto`
--

DROP TABLE IF EXISTS `auto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tid` int NOT NULL,
  `szid` int NOT NULL,
  `üid` int NOT NULL,
  `eid` int NOT NULL,
  `évjárat` int NOT NULL,
  `ár` int NOT NULL,
  `futottkm` int NOT NULL,
  `hengerűrtartalom` int NOT NULL,
  `rendszám` varchar(20) COLLATE utf8mb4_hungarian_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rendszám` (`rendszám`),
  KEY `FK_auto_szid` (`szid`),
  KEY `FK_auto_üid` (`üid`),
  KEY `FK_auto_eid` (`eid`),
  KEY `FK_auto_tid` (`tid`),
  CONSTRAINT `FK_auto_szid` FOREIGN KEY (`szid`) REFERENCES `szín` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_auto_tid` FOREIGN KEY (`tid`) REFERENCES `típus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_auto_üid` FOREIGN KEY (`üid`) REFERENCES `üzemanyag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto`
--

LOCK TABLES `auto` WRITE;
/*!40000 ALTER TABLE `auto` DISABLE KEYS */;
INSERT INTO `auto` VALUES (1,1,3,2,4,2015,2500000,145000,1600,'ABC-101'),(2,2,5,1,2,2018,3200000,98000,1400,'ABC-102'),(3,3,1,3,5,2020,4500000,60000,2000,'ABC-103'),(4,4,2,4,1,2012,1800000,210000,1600,'ABC-104'),(5,5,4,2,3,2016,2700000,130000,1800,'ABC-105'),(6,1,1,1,5,2019,3900000,80000,1500,'ABC-106'),(7,21,3,4,2,2014,2200000,165000,1600,'ABC-107'),(8,13,5,3,4,2017,3100000,120000,1400,'ABC-108'),(9,4,2,2,1,2013,2000000,190000,1600,'ABC-109'),(10,10,4,1,3,2021,5200000,30000,2000,'ABC-110'),(11,1,5,3,2,2018,3300000,110000,1600,'ABC-111'),(12,10,1,4,5,2011,1600000,230000,1400,'ABC-112'),(13,3,3,2,4,2015,2600000,150000,1800,'ABC-113'),(14,4,2,1,1,2019,4000000,70000,2000,'ABC-114'),(15,5,4,3,3,2017,3000000,125000,1600,'ABC-115'),(16,14,1,2,4,2016,2800000,140000,1500,'ABC-116'),(17,2,5,4,2,2013,1900000,200000,1600,'ABC-117'),(18,3,3,1,5,2020,4700000,50000,2000,'ABC-118'),(19,4,2,3,1,2014,2100000,175000,1400,'ABC-119'),(20,12,4,2,3,2018,3400000,100000,1600,'ABC-120'),(21,7,3,1,4,2017,2950000,135000,1500,'ABC-121'),(22,2,5,3,2,2015,2550000,155000,1800,'ABC-122'),(23,6,1,4,5,2012,1750000,220000,1600,'ABC-123'),(24,4,2,2,1,2019,4100000,65000,2000,'ABC-124'),(25,5,4,1,3,2021,5300000,28000,2000,'ABC-125'),(26,1,5,3,4,2016,2650000,145000,1600,'ABC-126'),(27,6,1,2,2,2014,2050000,185000,1400,'ABC-127'),(28,3,3,4,5,2018,3600000,90000,1800,'ABC-128'),(29,6,2,1,1,2013,1950000,210000,1600,'ABC-129'),(30,5,4,3,3,2020,4800000,55000,2000,'ABC-130');
/*!40000 ALTER TABLE `auto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extrák`
--

DROP TABLE IF EXISTS `extrák`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `extrák` (
  `id` int NOT NULL AUTO_INCREMENT,
  `exnev` varchar(100) COLLATE utf8mb4_hungarian_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `exnev` (`exnev`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extrák`
--

LOCK TABLES `extrák` WRITE;
/*!40000 ALTER TABLE `extrák` DISABLE KEYS */;
INSERT INTO `extrák` VALUES (4,'ABS'),(1,'elektromos ablak'),(3,'fedélzeti computer'),(5,'klíma'),(2,'ülésfűtés');
/*!40000 ALTER TABLE `extrák` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kapcsolo`
--

DROP TABLE IF EXISTS `kapcsolo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kapcsolo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `aid` int DEFAULT NULL,
  `eid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_kapcsolo_aid` (`aid`),
  KEY `FK_kapcsolo_eid` (`eid`),
  CONSTRAINT `FK_kapcsolo_aid` FOREIGN KEY (`aid`) REFERENCES `auto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_kapcsolo_eid` FOREIGN KEY (`eid`) REFERENCES `extrák` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kapcsolo`
--

LOCK TABLES `kapcsolo` WRITE;
/*!40000 ALTER TABLE `kapcsolo` DISABLE KEYS */;
INSERT INTO `kapcsolo` VALUES (1,1,5),(2,1,3),(3,1,1),(4,2,5),(5,3,2),(6,3,4),(7,3,1),(8,4,3),(9,5,1),(10,5,5),(11,5,2),(12,6,4),(13,7,2),(14,7,3),(15,8,1),(16,9,5),(17,9,4),(18,9,2),(19,10,3),(20,11,1),(21,11,2),(22,12,4),(23,13,5),(24,13,3),(25,13,1),(26,13,2),(27,14,2),(28,15,4),(29,15,1),(30,16,3),(31,17,5),(32,17,2),(33,18,1),(34,19,4),(35,19,3),(36,19,2),(37,20,5),(38,21,1),(39,21,4),(40,22,2),(41,23,3),(42,23,5),(43,24,1),(44,25,4),(45,25,2),(46,25,5),(47,26,3),(48,27,1),(49,27,2),(50,28,5),(51,29,4),(52,29,3),(53,30,2),(54,30,1),(55,30,5);
/*!40000 ALTER TABLE `kapcsolo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `márka`
--

DROP TABLE IF EXISTS `márka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `márka` (
  `id` int NOT NULL AUTO_INCREMENT,
  `markanev` varchar(100) COLLATE utf8mb4_hungarian_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `markanev` (`markanev`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `márka`
--

LOCK TABLES `márka` WRITE;
/*!40000 ALTER TABLE `márka` DISABLE KEYS */;
INSERT INTO `márka` VALUES (4,'Ford'),(5,'Lada'),(1,'Opel'),(3,'Renault'),(2,'Suzuki');
/*!40000 ALTER TABLE `márka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `osszes2`
--

DROP TABLE IF EXISTS `osszes2`;
/*!50001 DROP VIEW IF EXISTS `osszes2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `osszes2` AS SELECT 
 1 AS `rendszám`,
 1 AS `tipusnev`,
 1 AS `markanev`,
 1 AS `sznev`,
 1 AS `ünev`,
 1 AS `ár`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `szín`
--

DROP TABLE IF EXISTS `szín`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `szín` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sznev` varchar(100) COLLATE utf8mb4_hungarian_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sznev` (`sznev`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `szín`
--

LOCK TABLES `szín` WRITE;
/*!40000 ALTER TABLE `szín` DISABLE KEYS */;
INSERT INTO `szín` VALUES (1,'kék'),(5,'lila'),(2,'piros'),(4,'sárga'),(3,'zöld');
/*!40000 ALTER TABLE `szín` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `típus`
--

DROP TABLE IF EXISTS `típus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `típus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipusnev` varchar(100) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `mid` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tipusnev` (`tipusnev`),
  KEY `FK_típus_mid2` (`mid`),
  CONSTRAINT `FK_típus_mid2` FOREIGN KEY (`mid`) REFERENCES `márka` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `típus`
--

LOCK TABLES `típus` WRITE;
/*!40000 ALTER TABLE `típus` DISABLE KEYS */;
INSERT INTO `típus` VALUES (1,'Corsa',1),(2,'Astra',1),(3,'Insignia',1),(4,'Vectra',1),(5,'Zafira',1),(6,'Swift',2),(7,'Vitara',2),(8,'SX4',2),(9,'Ignis',2),(10,'Clio',3),(11,'Megane',3),(12,'Laguna',3),(13,'Twingo',3),(14,'Scenic',3),(15,'Focus',4),(16,'Fiesta',4),(17,'Mondeo',4),(18,'Mustang',4),(19,'Niva',5),(20,'2107',5),(21,'Vesta',5);
/*!40000 ALTER TABLE `típus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `üzemanyag`
--

DROP TABLE IF EXISTS `üzemanyag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `üzemanyag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ünev` varchar(100) COLLATE utf8mb4_hungarian_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ünev` (`ünev`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `üzemanyag`
--

LOCK TABLES `üzemanyag` WRITE;
/*!40000 ALTER TABLE `üzemanyag` DISABLE KEYS */;
INSERT INTO `üzemanyag` VALUES (1,'benzin'),(2,'dízel'),(3,'elektromos'),(4,'LPG');
/*!40000 ALTER TABLE `üzemanyag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `osszes2`
--

/*!50001 DROP VIEW IF EXISTS `osszes2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `osszes2` AS select `auto`.`rendszám` AS `rendszám`,`típus`.`tipusnev` AS `tipusnev`,`márka`.`markanev` AS `markanev`,`szín`.`sznev` AS `sznev`,`üzemanyag`.`ünev` AS `ünev`,`auto`.`ár` AS `ár` from (((((`auto` join `típus` on((`auto`.`tid` = `típus`.`id`))) join `márka` on((`típus`.`mid` = `márka`.`id`))) join `üzemanyag` on((`auto`.`üid` = `üzemanyag`.`id`))) join `szín` on((`auto`.`szid` = `szín`.`id`))) join `extrák` on((`auto`.`eid` = `extrák`.`id`))) where (`szín`.`sznev` = 'kék') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-12 14:58:46
