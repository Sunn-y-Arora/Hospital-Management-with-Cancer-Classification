-- MySQL dump 10.16  Distrib 10.1.16-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: hms
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
-- Table structure for table `abc`
--

DROP TABLE IF EXISTS `abc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abc` (
  `id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abc`
--

LOCK TABLES `abc` WRITE;
/*!40000 ALTER TABLE `abc` DISABLE KEYS */;
INSERT INTO `abc` VALUES (2),(2);
/*!40000 ALTER TABLE `abc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','admin123','20-3-2018 11:42:05 AM');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctorSpecialization` varchar(255) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `consultancyFees` int(11) NOT NULL,
  `appointmentDate` varchar(255) NOT NULL,
  `appointmentTime` varchar(255) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` int(11) NOT NULL,
  `doctorStatus` int(11) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,'Dentist',1,1,500,'2018-03-21','09:25','2018-03-21 00:29:02',1,0,''),(2,'Homeopath',4,5,700,'2018-03-22','14:10','2018-03-22 08:02:58',0,1,''),(3,'General Physician',3,7,1200,'2018-05-20','10:00','2018-03-24 17:58:16',1,1,''),(4,'General Physician',3,9,1200,'2018-03-23','22:00','2018-03-25 22:37:12',1,1,''),(5,'Dentist',1,9,500,'2018-03-23','12:00','2018-03-25 22:38:04',1,1,''),(6,'Ayurveda',5,9,8050,'2018-03-23','11:00','2018-03-25 22:38:28',1,1,''),(7,'Homeopath',2,9,600,'2018-03-23','12:45','2018-03-25 22:38:50',1,1,''),(8,'Homeopath',4,9,700,'2018-03-23','21:00','2018-03-25 22:39:41',1,1,''),(9,'General Physician',3,9,1200,'2018-03-23','14:00','2018-03-25 22:40:06',1,1,'');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specilization` varchar(255) NOT NULL,
  `doctorName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `docFees` varchar(255) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `docEmail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'Dentist','Anuj','New Delhi','500',8285703354,'anuj@gmail.com','5c428d8875d2948607f3e3fe134d71b4','2018-03-20 06:25:37','22-03-2018 01:27:51 PM'),(2,'Homeopath','Sarita Pandey','Varanasi','600',2147483647,'sarita@gmail.com','f925916e2754e5e03f75dd58a5733251','2018-03-20 06:51:51',''),(3,'General Physician','Nitesh Kumar','Ghaziabad','1200',8523699999,'nitesh@gmail.com','f925916e2754e5e03f75dd58a5733251','2018-03-20 07:43:35',''),(4,'Homeopath','Vijay Verma','New Delhi','700',25668888,'vijay@gmail.com','f925916e2754e5e03f75dd58a5733251','2018-03-20 07:45:09',''),(5,'Ayurveda','Sanjeev','Gurugram','8050',442166644646,'sanjeev@gmail.com','f925916e2754e5e03f75dd58a5733251','2018-03-21 07:47:07',''),(6,'General Physician','Amrita','New Delhi India','2500',45497964,'amrita@test.com','f925916e2754e5e03f75dd58a5733251','2018-03-21 07:52:50',''),(7,'Demo test','abc ','xyz','200',852888888,'test@demo.com','f925916e2754e5e03f75dd58a5733251','2018-03-21 08:08:58',''),(9,'Gynecologist/Obstetrician','Sourabh Agarwal','121a df ','1200',8604058224,'abc@gma.com','e10adc3949ba59abbe56e057f20f883e','2018-03-26 01:12:19','');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctorslog`
--

DROP TABLE IF EXISTS `doctorslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctorslog`
--

LOCK TABLES `doctorslog` WRITE;
/*!40000 ALTER TABLE `doctorslog` DISABLE KEYS */;
INSERT INTO `doctorslog` VALUES (1,2,'sarita@gmail.com','0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','2018-03-21 05:53:31','',1),(4,2,'sarita@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2018-03-21 06:41:33','12:11:46',1),(5,2,'sarita@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2018-03-21 06:55:16','2018-03-21 12:27:47 PM',1),(7,0,'info@w3gang.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2018-03-21 08:04:42','',0),(8,0,'info@w3gang.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2018-03-21 08:04:55','',0),(9,2,'sarita@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2018-03-21 08:05:54','2018-03-21 01:36:28 PM',1),(10,0,'sunnyayush007@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2018-03-22 19:45:11','',0),(11,9,'abc@gma.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2018-03-26 01:13:12','26-03-2018 06:51:15 AM',1),(12,9,'abc@gma.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2018-03-26 01:21:38','',1),(13,9,'abc@gma.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2018-03-26 01:24:20','',1),(14,9,'abc@gma.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2018-03-26 01:28:33','',1),(15,9,'abc@gma.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2018-03-26 02:16:14','26-03-2018 07:50:16 AM',1),(16,0,'admin','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2018-03-27 17:40:23','',0);
/*!40000 ALTER TABLE `doctorslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctorspecilization`
--

DROP TABLE IF EXISTS `doctorspecilization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specilization` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctorspecilization`
--

LOCK TABLES `doctorspecilization` WRITE;
/*!40000 ALTER TABLE `doctorspecilization` DISABLE KEYS */;
INSERT INTO `doctorspecilization` VALUES (1,'Gynecologist/Obstetrician','2018-03-22 06:37:25',''),(2,'General Physician','2018-03-22 06:38:12',''),(3,'Dermatologist','2018-03-22 06:38:48',''),(4,'Homeopath','2018-03-22 06:39:26',''),(5,'Ayurveda','2018-03-22 06:39:51',''),(6,'Dentist','2018-03-22 06:40:08',''),(7,'Ear-Nose-Throat (Ent) Specialist','2018-03-22 06:41:18','');
/*!40000 ALTER TABLE `doctorspecilization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload`
--

DROP TABLE IF EXISTS `upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `file` varchar(255) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `Docname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload`
--

LOCK TABLES `upload` WRITE;
/*!40000 ALTER TABLE `upload` DISABLE KEYS */;
INSERT INTO `upload` VALUES (1,'upload/channels.docx','docx','14.16796875','Sourabh Agarwal'),(2,'upload/CLASS ASSIGNMENT 3 consumer behaviour.docx','docx','14.5380859375','Sourabh Agarwal');
/*!40000 ALTER TABLE `upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlog`
--

LOCK TABLES `userlog` WRITE;
/*!40000 ALTER TABLE `userlog` DISABLE KEYS */;
INSERT INTO `userlog` VALUES (18,9,'sunnyayush007@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2018-03-25 22:36:05','',1),(19,9,'sunnyayush007@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2018-03-26 02:21:34','',1);
/*!40000 ALTER TABLE `userlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (9,'Sunny Arora','65/2 Subzi Mandi Railway Colony, Pratap Nagar','NEW DELHI','male','sunnyayush007@gmail.com','e10adc3949ba59abbe56e057f20f883e','2018-03-25 22:35:49','');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-02 13:09:23
