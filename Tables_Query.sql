-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: sys
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `au`
--

DROP TABLE IF EXISTS `au`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `au` (
  `Customer_Name` varchar(255) NOT NULL,
  `Customer_Id` varchar(18) NOT NULL,
  `Customer_Open_Date` date NOT NULL,
  `Last_Consulted_Date` date DEFAULT NULL,
  `Vaccination_Type` char(5) DEFAULT NULL,
  `Doctor_Consulted` char(255) DEFAULT NULL,
  `State` char(5) DEFAULT NULL,
  `Country` char(5) DEFAULT NULL,
  `Postcode` int DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Active_Customer` char(1) DEFAULT NULL,
  PRIMARY KEY (`Customer_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `au`
--

LOCK TABLES `au` WRITE;
/*!40000 ALTER TABLE `au` DISABLE KEYS */;
INSERT INTO `au` VALUES ('Jacob','1256','2010-10-12','2012-10-13','MVD','Paul','VIC','AU',39241,'1987-06-03','A');
/*!40000 ALTER TABLE `au` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ind`
--

DROP TABLE IF EXISTS `ind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ind` (
  `Customer_Name` varchar(255) NOT NULL,
  `Customer_Id` varchar(18) NOT NULL,
  `Customer_Open_Date` date NOT NULL,
  `Last_Consulted_Date` date DEFAULT NULL,
  `Vaccination_Type` char(5) DEFAULT NULL,
  `Doctor_Consulted` char(255) DEFAULT NULL,
  `State` char(5) DEFAULT NULL,
  `Country` char(5) DEFAULT NULL,
  `Postcode` int DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Active_Customer` char(1) DEFAULT NULL,
  PRIMARY KEY (`Customer_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ind`
--

LOCK TABLES `ind` WRITE;
/*!40000 ALTER TABLE `ind` DISABLE KEYS */;
INSERT INTO `ind` VALUES ('Brijen','123457','2010-10-12','2012-10-13','MVD','Paul','SA','IND',39644,'1987-06-03','A'),('John','123458','2010-10-12','2012-10-13','MVD','Paul','TN','IND',39645,'1987-06-03','A');
/*!40000 ALTER TABLE `ind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nyc`
--

DROP TABLE IF EXISTS `nyc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nyc` (
  `Customer_Name` varchar(255) NOT NULL,
  `Customer_Id` varchar(18) NOT NULL,
  `Customer_Open_Date` date NOT NULL,
  `Last_Consulted_Date` date DEFAULT NULL,
  `Vaccination_Type` char(5) DEFAULT NULL,
  `Doctor_Consulted` char(255) DEFAULT NULL,
  `State` char(5) DEFAULT NULL,
  `Country` char(5) DEFAULT NULL,
  `Postcode` int DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Active_Customer` char(1) DEFAULT NULL,
  PRIMARY KEY (`Customer_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nyc`
--

LOCK TABLES `nyc` WRITE;
/*!40000 ALTER TABLE `nyc` DISABLE KEYS */;
INSERT INTO `nyc` VALUES ('John','123458','2010-10-12','2012-10-13','MVD','Paul','BOS','NYC',39645,'1987-06-03','A'),('Matt','12345','2010-10-12','2012-10-13','MVD','Paul','BOS','NYC',39623,'1987-06-03','A');
/*!40000 ALTER TABLE `nyc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phil`
--

DROP TABLE IF EXISTS `phil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phil` (
  `Customer_Name` varchar(255) NOT NULL,
  `Customer_Id` varchar(18) NOT NULL,
  `Customer_Open_Date` date NOT NULL,
  `Last_Consulted_Date` date DEFAULT NULL,
  `Vaccination_Type` char(5) DEFAULT NULL,
  `Doctor_Consulted` char(255) DEFAULT NULL,
  `State` char(5) DEFAULT NULL,
  `Country` char(5) DEFAULT NULL,
  `Postcode` int DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Active_Customer` char(1) DEFAULT NULL,
  PRIMARY KEY (`Customer_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phil`
--

LOCK TABLES `phil` WRITE;
/*!40000 ALTER TABLE `phil` DISABLE KEYS */;
INSERT INTO `phil` VALUES ('Alex','123457','2010-10-12','2012-10-13','MVD','Paul','WAS','PHIL',39644,'1987-06-03','A'),('Mathew','123459','2010-10-12','2012-10-13','MVD','Paul','WAS','PHIL',39640,'1987-06-03','A');
/*!40000 ALTER TABLE `phil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usa`
--

DROP TABLE IF EXISTS `usa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usa` (
  `Customer_Name` varchar(255) NOT NULL,
  `Customer_Id` varchar(18) NOT NULL,
  `Customer_Open_Date` date NOT NULL,
  `Last_Consulted_Date` date DEFAULT NULL,
  `Vaccination_Type` char(5) DEFAULT NULL,
  `Doctor_Consulted` char(255) DEFAULT NULL,
  `State` char(5) DEFAULT NULL,
  `Country` char(5) DEFAULT NULL,
  `Postcode` int DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Active_Customer` char(1) DEFAULT NULL,
  PRIMARY KEY (`Customer_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usa`
--

LOCK TABLES `usa` WRITE;
/*!40000 ALTER TABLE `usa` DISABLE KEYS */;
INSERT INTO `usa` VALUES ('Alex','123457','2010-10-12','2012-10-13','MVD','Paul','SA','USA',39644,'1987-06-03','A');
/*!40000 ALTER TABLE `usa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'sys'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-22 10:42:57
