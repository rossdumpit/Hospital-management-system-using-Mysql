-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: company
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `patient_id` int NOT NULL AUTO_INCREMENT,
  `patient_F_name` varchar(45) NOT NULL,
  `patient_L_name` varchar(45) NOT NULL,
  `street` varchar(45) DEFAULT NULL,
  `age` int NOT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `date_admitted` date DEFAULT NULL,
  `date_discharged` date DEFAULT NULL,
  `doctor_id` int DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  PRIMARY KEY (`patient_id`),
  UNIQUE KEY `patient_id_UNIQUE` (`patient_id`),
  KEY `doctorFK_idx` (`doctor_id`),
  KEY `addressFK_idx` (`address_id`),
  CONSTRAINT `address_patientFK` FOREIGN KEY (`address_id`) REFERENCES `address_code` (`address_code_id`),
  CONSTRAINT `doctor_patientFK` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'Arthas','Ba','23 wearside',18,'M','2023-12-12','2023-12-31',1,4),(2,'Borat','Be','95 delafield',69,'M','2024-01-01','2024-01-17',3,4),(3,'Courtney','Bi','69 rosemary',81,'F','2023-11-11',NULL,4,2),(4,'Donald','Bo','1 twothree',54,'M','2023-12-30','2024-01-05',2,1),(5,'Eiva','Bu','5 mambo',33,'F','2023-10-11',NULL,2,2),(6,'Alice','Smith','1 Elm St',19,'M','2023-09-01','2023-09-01',4,2),(7,'Bob','Johnson','2 Oak Ln',27,'F','2023-10-05',NULL,2,5),(8,'Charlie','Williams','3 Pine Dr',36,'M','2023-09-08','2023-09-15',1,3),(9,'David','Jones','4 Maple Rd',42,'F','2023-10-12',NULL,5,4),(10,'Emma','Brown','5 Birch Ct',51,'M','2023-09-15','2023-10-01',3,1),(11,'Frank','Davis','6 Cedar Ave',65,'F','2023-10-19','2023-10-15',1,5),(12,'Grace','Miller','7 Willow Pl',73,'M','2023-09-22',NULL,4,2),(13,'Henry','Wilson','8 Elmwood Rd',20,'F','2023-10-01','2023-11-01',2,1),(14,'Ivy','Moore','9 Cedarwood Ln',30,'M','2023-11-29',NULL,5,4),(15,'Jack','Taylor','10 Oakridge Dr',45,'F','2023-11-03',NULL,3,3),(16,'Kelly','Anderson','11 Pineview Rd',59,'M','2023-09-07','2023-12-01',2,5),(17,'Liam','Thomas','12 Birchwood Ct',69,'F','2023-10-10',NULL,4,2),(18,'Mia','Jackson','13 Maplehill Ave',18,'M','2023-09-14','2023-12-15',1,1),(19,'Nathan','White','14 Willowside Pl',26,'F','2023-12-17',NULL,3,4),(20,'Olivia','Harris','15 Cedarlane Rd',37,'M','2023-12-21','2024-01-01',5,3),(21,'Paul','Martin','16 Elmwoodpark Dr',50,'F','2023-09-24','2024-01-15',4,5),(22,'Quinn','Thompson','17 Oakside Ln',63,'M','2023-09-28','2023-12-31',1,2),(23,'Rachel','Garcia','18 Pinewood Dr',78,'F','2023-10-26','2024-01-17',3,1),(24,'Samuel','Martinez','19 Birchridge Ct',22,'M','2023-09-04',NULL,2,4),(25,'Tina','Robinson','20 Maplewood Ave',31,'F','2023-12-08','2024-01-05',5,3),(26,'Ulysses','Clark','21 Willowcreek Pl',48,'M','2023-11-11',NULL,1,5),(27,'Violet','Lewis','22 Cedarcrest Rd',60,'F','2023-09-15','2023-09-01',3,2),(28,'Walter','Lee','23 Elmside Ln',76,'M','2023-10-01',NULL,4,1),(29,'Xena','Walker','24 Oakwood Dr',23,'F','2023-09-04','2023-09-16',2,4),(30,'Yasmine','Hall','25 Pinelane Ave',34,'M','2023-09-08',NULL,5,3),(31,'Zachary','Aida','24 Guava',82,'F','2023-09-11','2023-10-29',2,1);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-13 19:19:28
