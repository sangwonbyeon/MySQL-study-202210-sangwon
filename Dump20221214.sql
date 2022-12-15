CREATE DATABASE  IF NOT EXISTS `db_study_202210_01` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_study_202210_01`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_study_202210_01
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `school_mst`
--

DROP TABLE IF EXISTS `school_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_mst` (
  `school_id` int NOT NULL AUTO_INCREMENT,
  `school_name` varchar(45) NOT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_mst`
--

LOCK TABLES `school_mst` WRITE;
/*!40000 ALTER TABLE `school_mst` DISABLE KEYS */;
INSERT INTO `school_mst` VALUES (1,'서울대학교'),(2,'부산대학교'),(3,'부경대학교'),(4,'부산고등학교');
/*!40000 ALTER TABLE `school_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score_mst`
--

DROP TABLE IF EXISTS `score_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `score_mst` (
  `score_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `score` varchar(45) NOT NULL,
  PRIMARY KEY (`score_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score_mst`
--

LOCK TABLES `score_mst` WRITE;
/*!40000 ALTER TABLE `score_mst` DISABLE KEYS */;
INSERT INTO `score_mst` VALUES (1,1,1,'90'),(2,1,2,'80'),(3,2,3,'70'),(4,3,1,'70'),(5,4,2,'80'),(6,5,3,'90'),(7,5,4,'100'),(8,5,4,'100');
/*!40000 ALTER TABLE `score_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_mst`
--

DROP TABLE IF EXISTS `student_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_mst` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(45) NOT NULL,
  `student_age` int NOT NULL,
  `school_id` int NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_mst`
--

LOCK TABLES `student_mst` WRITE;
/*!40000 ALTER TABLE `student_mst` DISABLE KEYS */;
INSERT INTO `student_mst` VALUES (1,'김준일',20,1),(2,'김준일',25,2),(3,'김준이',30,1),(4,'김준이',27,3),(5,'김준삼',18,4);
/*!40000 ALTER TABLE `student_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_mst`
--

DROP TABLE IF EXISTS `subject_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject_mst` (
  `subject_id` int NOT NULL,
  `subject_name` varchar(45) NOT NULL,
  `day_of_the_week` varchar(45) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_mst`
--

LOCK TABLES `subject_mst` WRITE;
/*!40000 ALTER TABLE `subject_mst` DISABLE KEYS */;
INSERT INTO `subject_mst` VALUES (1,'국어','월'),(2,'수학','화'),(3,'영어','수');
/*!40000 ALTER TABLE `subject_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_study_202210_01'
--

--
-- Dumping routines for database 'db_study_202210_01'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-15 21:47:48
