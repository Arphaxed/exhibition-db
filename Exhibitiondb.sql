-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: exhibitiondb
-- ------------------------------------------------------
-- Server version	5.5.62

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
-- Table structure for table `booth`
--

DROP TABLE IF EXISTS `booth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booth` (
  `BoothID` int(11) NOT NULL AUTO_INCREMENT,
  `ExhibitorID` int(11) NOT NULL,
  `Area` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`BoothID`),
  KEY `ExhibitorID` (`ExhibitorID`),
  CONSTRAINT `booth_ibfk_1` FOREIGN KEY (`ExhibitorID`) REFERENCES `exhibitor` (`ExhibitorID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booth`
--

LOCK TABLES `booth` WRITE;
/*!40000 ALTER TABLE `booth` DISABLE KEYS */;
INSERT INTO `booth` VALUES (1,1,'Area A'),(2,2,'Area B'),(3,3,'Area A'),(4,4,'Area C'),(5,5,'Area D');
/*!40000 ALTER TABLE `booth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exhibition`
--

DROP TABLE IF EXISTS `exhibition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exhibition` (
  `ExhibitionID` int(11) NOT NULL AUTO_INCREMENT,
  `ExhibitionName` varchar(100) NOT NULL,
  `ExhibitionDate` date NOT NULL,
  PRIMARY KEY (`ExhibitionID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exhibition`
--

LOCK TABLES `exhibition` WRITE;
/*!40000 ALTER TABLE `exhibition` DISABLE KEYS */;
INSERT INTO `exhibition` VALUES (1,'Tech Expo 2024','2024-12-01'),(2,'Green Energy Summit 2024','2024-12-15'),(3,'AI World Conference 2025','2025-01-10'),(4,'Eco Builders Fair','2025-02-20');
/*!40000 ALTER TABLE `exhibition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exhibitor`
--

DROP TABLE IF EXISTS `exhibitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exhibitor` (
  `ExhibitorID` int(11) NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(100) NOT NULL,
  `ContactName` varchar(100) NOT NULL,
  `ContactEmail` varchar(100) NOT NULL,
  `ContactPhone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ExhibitorID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exhibitor`
--

LOCK TABLES `exhibitor` WRITE;
/*!40000 ALTER TABLE `exhibitor` DISABLE KEYS */;
INSERT INTO `exhibitor` VALUES (1,'Tech Innovations Ltd','Alice Johnson','alice@gmail.com','123-456-7890'),(2,'Green Energy Solutions','Bob Smith','bob@gmail.com','987-654-3210'),(3,'Smart Gadgets Inc.','Charlie Davis','charlie@gmail.com','555-666-7777'),(4,'NextGen AI','Dana White','dana@gmail.com','321-654-9870'),(5,'Eco Builders','Ella Thompson','ella@gmail.com','123-321-1234'),(6,'Tech Innovations Ltd','Alice Johnson','alice@gmail.com','123-456-7890'),(7,'Green Energy Solutions','Bob Smith','bob@gmail.com','987-654-3210'),(8,'Smart Gadgets Inc.','Charlie Davis','charlie@gmail.com','555-666-7777'),(9,'NextGen AI','Dana White','dana@gmail.com','321-654-9870'),(10,'Eco Builders','Ella Thompson','ella@gmail.com','123-321-1234');
/*!40000 ALTER TABLE `exhibitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `ExhibitorID` int(11) NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `Description` text,
  `Category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `ExhibitorID` (`ExhibitorID`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`ExhibitorID`) REFERENCES `exhibitor` (`ExhibitorID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'AI Robot Alpha','Advanced AI-powered humanoid robot','Technology'),(2,2,'Solar Panel X','High-efficiency solar panels for homes','Renewable Energy'),(3,3,'Wireless Charger Pro','Fast wireless charging for mobile devices','Electronics'),(4,4,'AI Visualizer','AI-powered visualization software for data analysis','Software'),(5,5,'Eco Cement','Environmentally-friendly construction material','Construction');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `ReviewID` int(11) NOT NULL AUTO_INCREMENT,
  `VisitorID` int(11) NOT NULL,
  `ExhibitionID` int(11) NOT NULL,
  `Rating` int(11) DEFAULT NULL,
  PRIMARY KEY (`ReviewID`),
  KEY `VisitorID` (`VisitorID`),
  KEY `ExhibitionID` (`ExhibitionID`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`VisitorID`) REFERENCES `visitor` (`VisitorID`),
  CONSTRAINT `review_ibfk_2` FOREIGN KEY (`ExhibitionID`) REFERENCES `exhibition` (`ExhibitionID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,1,1,5),(2,2,1,4),(3,3,2,5),(4,4,4,5),(5,5,3,4);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitor`
--

DROP TABLE IF EXISTS `visitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitor` (
  `VisitorID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Organization` varchar(100) DEFAULT NULL,
  `ContactDetails` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`VisitorID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor`
--

LOCK TABLES `visitor` WRITE;
/*!40000 ALTER TABLE `visitor` DISABLE KEYS */;
INSERT INTO `visitor` VALUES (1,'David Lee','Innovative Minds Co.','david@yahoo.com'),(2,'Emily Carter','Tech Reviewers','emily@yahoo.com'),(3,'Frank White','Green Advocates','frank@green yahoo.com'),(4,'Grace Park','Future Builders','grace@yahoo.com'),(5,'Harry Kim','AI Research Labs','harry@ayahoo.com');
/*!40000 ALTER TABLE `visitor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-18  0:56:05
