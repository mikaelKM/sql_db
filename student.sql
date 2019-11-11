-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: students
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `examination`
--

DROP TABLE IF EXISTS `examination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examination` (
  `TBL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ADM_NO` varchar(15) DEFAULT NULL,
  `unit1` decimal(4,2) DEFAULT NULL,
  `unit2` decimal(4,2) DEFAULT NULL,
  `unit3` decimal(4,2) DEFAULT NULL,
  `unit4` decimal(4,2) DEFAULT NULL,
  `unit5` decimal(4,2) DEFAULT NULL,
  `unit6` decimal(4,2) DEFAULT NULL,
  `unit7` decimal(4,2) DEFAULT NULL,
  `unit8` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`TBL_ID`),
  UNIQUE KEY `ADM_NO` (`ADM_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examination`
--

LOCK TABLES `examination` WRITE;
/*!40000 ALTER TABLE `examination` DISABLE KEYS */;
INSERT INTO `examination` VALUES (1,'MT/00049/017',77.00,56.00,50.00,89.00,65.00,54.00,77.00,68.00),(2,'MT/00048/017',77.00,60.00,50.00,89.00,46.00,59.00,77.00,68.00),(3,'CI/00067/017',45.00,67.00,78.00,72.00,90.00,60.00,46.00,77.00),(4,'ST/00678/017',56.00,76.00,88.00,67.00,62.00,78.00,90.00,67.00),(5,'ST/00045/017',56.00,40.00,67.00,61.00,72.00,76.00,23.00,45.00);
/*!40000 ALTER TABLE `examination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_academic`
--

DROP TABLE IF EXISTS `s_academic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `s_academic` (
  `TBL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ADM_NO` varchar(15) DEFAULT NULL,
  `SCHOOL` varchar(100) NOT NULL,
  `DEPARTMENT` varchar(60) NOT NULL,
  `PROGRAM` varchar(70) NOT NULL,
  `UNITS` int(11) NOT NULL,
  PRIMARY KEY (`TBL_ID`),
  UNIQUE KEY `ADM_NO` (`ADM_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_academic`
--

LOCK TABLES `s_academic` WRITE;
/*!40000 ALTER TABLE `s_academic` DISABLE KEYS */;
INSERT INTO `s_academic` VALUES (1,'MT/00049/017','MATHEMATICS','PURE MATHEMATICS','MATHCOMP',8),(3,'MT/00048/017','COMPUTING','COMPUTER','COMPSCIE',8),(4,'CI/00067/017','COMPUTING','COMPUTER','COMPUTERSCIE',8),(5,'ST/00678/017','PUBLIC HEALTH','NURSING','NURSING',8),(6,'ST/00045/017','PUBBLIC HEALTH','NURSING','NURSING',8);
/*!40000 ALTER TABLE `s_academic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_details`
--

DROP TABLE IF EXISTS `student_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_details` (
  `ADM_NO` varchar(15) NOT NULL,
  `F_NAME` varchar(20) NOT NULL,
  `L_NAME` varchar(20) NOT NULL,
  `GENDER` varchar(6) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `STAGE` varchar(7) NOT NULL,
  UNIQUE KEY `ADM_NO` (`ADM_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_details`
--

LOCK TABLES `student_details` WRITE;
/*!40000 ALTER TABLE `student_details` DISABLE KEYS */;
INSERT INTO `student_details` VALUES ('CS/00017/018','Darlene','Humpreys','Female','DHumpreys@maseno.ac.ke','Second\r'),('CS/00018/017','Philiph','Knowles','Male','PKnowles@maseno.ac.ke','Third\r'),('CS/00019/016','Tyrell','Wellick','Male','TWellick@maseno.ac.ke','Forth\r'),('CS/00020/019','Johson','walker','Male','Jwalker@maseno.ac.ke','First\r'),('CS/00021/018','Michael','Pale','Male','MPale@maseno.ac.ke','Second\r'),('CS/00022/017','Dolly','Parton','Female','DParton@maseno.ac.ke','First\r'),('CS/00023/018','Penny','shealock','Female','Pshealock@maseno.ac.ke','Second\r'),('CS/00024/016','Carly','Chirqueen','Female','CChirqueen@maseno.ac.ke','Third\r'),('CS/00025/016','Howard','cathropolly','Male','Hcathropolly@maseno.ac.ke','Forth\r'),('CS/00026/019','Leornard ','Michael','Male','LMichael@maseno.ac.ke','First\r'),('CS/00027/019','Rajivie','Rashford','Male','RRashford@maseno.ac.ke','Second\r'),('CS/00028/017','Angela','Philiph','Female','APhiliph@maseno.ac.ke','Third\r'),('CT/00024/016','Angeline','Moss','Female','AMoss@maseno.ac.ke','Forth\r'),('CT/00025/019','Antony','Kariuki','male','AKariuki@maseno.ac.ke','First\r'),('CT/00026/017','Ann','Karuku','Female','AKaruku@maseno.ac.ke','Second\r'),('CT/00027/019','Stephen','Hum','Male','SHum@maseno.ac.ke','First\r'),('CT/00028/018','Stella','williums','Female','Swilliums@maseno.ac.ke','Second\r'),('CT/00029/017','Mark','Jack','Male','MJack@maseno.ac.ke','Third\r'),('CT/00030/016','Bulzer','Hillary','Male','BHillary@maseno.ac.ke','Forth\r'),('CT/00031/016','Clinton','Trump','Male','CTrump@maseno.ac.ke','First\r'),('CT/00032/019','Marron','Five','Male','MFive@maseno.ac.ke','First\r'),('CT/00033/019','Fredy','Jackson','Male','FJackson@maseno.ac.ke','Second\r'),('CT/00034/018','Partick','Musyoki','male','PMusyoki@maseno.ac.ke','Third\r'),('CT/00035/017','Alias','Mulaki','Male','AMulaki@maseno.ac.ke','Forth\r'),('CT/00036/016','Alice','George','Female','AGeorge@maseno.ac.ke','First\r'),('CT/00037/018','Joseph','putin','Male','Jputin@maseno.ac.ke','Second\r'),('CT/00038/017','Josephene','Bernard','Female','JBernard@maseno.ac.ke','Third\r'),('CT/00039/016','Purity','Edward','Female','PEdward@maseno.ac.ke','Forth\r'),('CT/00040/019','Belinda','Dion','Female','BDion@maseno.ac.ke','First\r'),('CT/00041/018','Faith','John','Female','FJohn@maseno.ac.ke','Second\r'),('CT/00042/019','Derick','Johston','male','DJohston@maseno.ac.ke','First\r'),('ED/00034/018','Diominic','peterson','Male','Dpeterson@maseno.ac.ke','Second\r'),('ED/00035/017','Beza','Abrahim','Female','BAbrahim@maseno.ac.ke','Third\r'),('ED/00036/016','Natasha','lucy','Female','Nlucy@maseno.ac.ke','Forth\r'),('ED/00037/019','Sheila','Loise','Female','SLoise@maseno.ac.ke','First\r'),('ED/00038/018','Fridah','Muthoni','Female','FMuthoni@maseno.ac.ke','Second\r'),('ED/00039/017','Wallowarz','Howard','Male','WHoward@maseno.ac.ke','Third\r'),('MT/00010/017','Mikael','Kasike','Male','MKasike@maseno.ac.ke','third\r'),('MT/00011/018','John','Luanda','Male','JLuanda@maseno.ac.ke','Third\r'),('MT/00012/016','jack','Gathua','Male','jGathua@maseno.ac.ke','Forth\r'),('MT/00013/019','Hellen','Gerud','Female','HGerud@maseno.ac.ke','First\r'),('MT/00014/018','Caro','Muhoni','Female','CMuhoni@maseno.ac.ke','Second\r'),('MT/00015/017','jackline','Hen','Female','jHen@maseno.ac.ke','Third\r'),('MT/00016/016','Dickson','Munene','Male','DMunene@maseno.ac.ke','Forth\r'),('MT/00017/019','Francis','Luchivia','Male','FLuchivia@maseno.ac.ke','First\r'),('MT/00018/018','Peter','Gathua','Male','PGathua@maseno.ac.ke','Second\r'),('MT/00019/017','witney','joan','Female','wjoan@maseno.ac.ke','Third\r'),('MT/00020/016','Mary','joseph','Female','Mjoseph@maseno.ac.ke','Forth\r'),('MT/00021/019','Abraham ','Japheth','Male','AJapheth@maseno.ac.ke','First\r'),('MT/00022/018','Joram','Peter','Male','JPeter@maseno.ac.ke','Second\r'),('MT/00023/019','John','Musili','Male','JMusili@maseno.ac.ke','First\r'),('MT/00024/018','Ann','Kaunda','Female','AKaunda@maseno.ac.ke','Second\r'),('MT/00025/017','Njeri','Gunjiri','Female','NGunjiri@maseno.ac.ke','Third\r'),('MT/00026/016','Sheldon','Kooper','Male','SKooper@maseno.ac.ke','Forth\r'),('MT/00027/019','Elliot','Anderson','Male','EAnderson@maseno.ac.ke','First\r');
/*!40000 ALTER TABLE `student_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_bio`
--

DROP TABLE IF EXISTS `students_bio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students_bio` (
  `TBL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ADM_NO` varchar(15) DEFAULT NULL,
  `S_NAME` varchar(100) DEFAULT NULL,
  `r_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`TBL_ID`),
  UNIQUE KEY `ADM_NO` (`ADM_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_bio`
--

LOCK TABLES `students_bio` WRITE;
/*!40000 ALTER TABLE `students_bio` DISABLE KEYS */;
INSERT INTO `students_bio` VALUES (1,'MT/00049/017','kelvin maina','2019-09-24 11:19:46'),(2,'MT/00048/017','MIKAEL KASIKE','2019-09-24 11:19:51'),(3,'CI/00067/017','JOY OUMA','2019-09-24 11:20:10'),(4,'ST/00678/017','JOHN MWAU','2019-09-24 11:10:46'),(5,'ST/00045/017','MAINA KINGORI','2019-09-24 12:37:29'),(6,'MT/0098/099','MIJJ','2019-10-22 12:04:52');
/*!40000 ALTER TABLE `students_bio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_1`
--

DROP TABLE IF EXISTS `table_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table_1` (
  `TBL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ATTRIB2` varchar(13) DEFAULT NULL,
  `ATTRIB3` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`TBL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_1`
--

LOCK TABLES `table_1` WRITE;
/*!40000 ALTER TABLE `table_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tudent_details_backup`
--

DROP TABLE IF EXISTS `tudent_details_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tudent_details_backup` (
  `ADM_NO` varchar(15) NOT NULL,
  `F_NAME` varchar(20) NOT NULL,
  `L_NAME` varchar(20) NOT NULL,
  `GENDER` varchar(6) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `STAGE` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tudent_details_backup`
--

LOCK TABLES `tudent_details_backup` WRITE;
/*!40000 ALTER TABLE `tudent_details_backup` DISABLE KEYS */;
INSERT INTO `tudent_details_backup` VALUES ('CS/00017/018','Darlene','Humpreys','Female','DHumpreys@maseno.ac.ke','Second\r'),('CS/00018/017','Philiph','Knowles','Male','PKnowles@maseno.ac.ke','Third\r'),('CS/00019/016','Tyrell','Wellick','Male','TWellick@maseno.ac.ke','Forth\r'),('CS/00020/019','Johson','walker','Male','Jwalker@maseno.ac.ke','First\r'),('CS/00021/018','Michael','Pale','Male','MPale@maseno.ac.ke','Second\r'),('CS/00022/017','Dolly','Parton','Female','DParton@maseno.ac.ke','First\r'),('CS/00023/018','Penny','shealock','Female','Pshealock@maseno.ac.ke','Second\r'),('CS/00024/016','Carly','Chirqueen','Female','CChirqueen@maseno.ac.ke','Third\r'),('CS/00025/016','Howard','cathropolly','Male','Hcathropolly@maseno.ac.ke','Forth\r'),('CS/00026/019','Leornard ','Michael','Male','LMichael@maseno.ac.ke','First\r'),('CS/00027/019','Rajivie','Rashford','Male','RRashford@maseno.ac.ke','Second\r'),('CS/00028/017','Angela','Philiph','Female','APhiliph@maseno.ac.ke','Third\r'),('CT/00024/016','Angeline','Moss','Female','AMoss@maseno.ac.ke','Forth\r'),('CT/00025/019','Antony','Kariuki','male','AKariuki@maseno.ac.ke','First\r'),('CT/00026/017','Ann','Karuku','Female','AKaruku@maseno.ac.ke','Second\r'),('CT/00027/019','Stephen','Hum','Male','SHum@maseno.ac.ke','First\r'),('CT/00028/018','Stella','williums','Female','Swilliums@maseno.ac.ke','Second\r'),('CT/00029/017','Mark','Jack','Male','MJack@maseno.ac.ke','Third\r'),('CT/00030/016','Bulzer','Hillary','Male','BHillary@maseno.ac.ke','Forth\r'),('CT/00031/016','Clinton','Trump','Male','CTrump@maseno.ac.ke','First\r'),('CT/00032/019','Marron','Five','Male','MFive@maseno.ac.ke','First\r'),('CT/00033/019','Fredy','Jackson','Male','FJackson@maseno.ac.ke','Second\r'),('CT/00034/018','Partick','Musyoki','male','PMusyoki@maseno.ac.ke','Third\r'),('CT/00035/017','Alias','Mulaki','Male','AMulaki@maseno.ac.ke','Forth\r'),('CT/00036/016','Alice','George','Female','AGeorge@maseno.ac.ke','First\r'),('CT/00037/018','Joseph','putin','Male','Jputin@maseno.ac.ke','Second\r'),('CT/00038/017','Josephene','Bernard','Female','JBernard@maseno.ac.ke','Third\r'),('CT/00039/016','Purity','Edward','Female','PEdward@maseno.ac.ke','Forth\r'),('CT/00040/019','Belinda','Dion','Female','BDion@maseno.ac.ke','First\r'),('CT/00041/018','Faith','John','Female','FJohn@maseno.ac.ke','Second\r'),('CT/00042/019','Derick','Johston','male','DJohston@maseno.ac.ke','First\r'),('ED/00034/018','Diominic','peterson','Male','Dpeterson@maseno.ac.ke','Second\r'),('ED/00035/017','Beza','Abrahim','Female','BAbrahim@maseno.ac.ke','Third\r'),('ED/00036/016','Natasha','lucy','Female','Nlucy@maseno.ac.ke','Forth\r'),('ED/00037/019','Sheila','Loise','Female','SLoise@maseno.ac.ke','First\r'),('ED/00038/018','Fridah','Muthoni','Female','FMuthoni@maseno.ac.ke','Second\r'),('ED/00039/017','Wallowarz','Howard','Male','WHoward@maseno.ac.ke','Third\r'),('MT/00010/017','Mikael','Kasike','Male','MKasike@maseno.ac.ke','third\r'),('MT/00011/018','John','Luanda','Male','JLuanda@maseno.ac.ke','Third\r'),('MT/00012/016','jack','Gathua','Male','jGathua@maseno.ac.ke','Forth\r'),('MT/00013/019','Hellen','Gerud','Female','HGerud@maseno.ac.ke','First\r'),('MT/00014/018','Caro','Muhoni','Female','CMuhoni@maseno.ac.ke','Second\r'),('MT/00015/017','jackline','Hen','Female','jHen@maseno.ac.ke','Third\r'),('MT/00016/016','Dickson','Munene','Male','DMunene@maseno.ac.ke','Forth\r'),('MT/00017/019','Francis','Luchivia','Male','FLuchivia@maseno.ac.ke','First\r'),('MT/00018/018','Peter','Gathua','Male','PGathua@maseno.ac.ke','Second\r'),('MT/00019/017','witney','joan','Female','wjoan@maseno.ac.ke','Third\r'),('MT/00020/016','Mary','joseph','Female','Mjoseph@maseno.ac.ke','Forth\r'),('MT/00021/019','Abraham ','Japheth','Male','AJapheth@maseno.ac.ke','First\r'),('MT/00022/018','Joram','Peter','Male','JPeter@maseno.ac.ke','Second\r'),('MT/00023/019','John','Musili','Male','JMusili@maseno.ac.ke','First\r'),('MT/00024/018','Ann','Kaunda','Female','AKaunda@maseno.ac.ke','Second\r'),('MT/00025/017','Njeri','Gunjiri','Female','NGunjiri@maseno.ac.ke','Third\r'),('MT/00026/016','Sheldon','Kooper','Male','SKooper@maseno.ac.ke','Forth\r'),('MT/00027/019','Elliot','Anderson','Male','EAnderson@maseno.ac.ke','First\r');
/*!40000 ALTER TABLE `tudent_details_backup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-22 15:50:37
