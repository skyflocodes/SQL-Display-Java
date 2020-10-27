CREATE DATABASE  IF NOT EXISTS `portroyale` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `portroyale`;

CREATE USER 'student'@'localhost' IDENTIFIED BY 'student';
GRANT ALL PRIVILEGES ON *.* TO 'student'@'localhost' WITH GRANT OPTION;

-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: portroyale
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `portrecords`
--

DROP TABLE IF EXISTS `portrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portrecords` (
  `Place` int DEFAULT NULL,
  `User` text,
  `Score` int DEFAULT NULL,
  `GPU` text,
  `CPU` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portrecords`
--

LOCK TABLES `portrecords` WRITE;
/*!40000 ALTER TABLE `portrecords` DISABLE KEYS */;
INSERT INTO `portrecords` VALUES (1,'K|NGP|N',33758,'NVIDIA GeForce RTX 3090 (2x SLI)','Intel Xeon W-3175X Processor'),(2,'JayzTwoCents',30259,'NVIDIA GeForce RTX 3090 (2x SLI)','Intel Core i9-10980XE Extreme Edition Processor'),(3,'CORSAIR HYDRO X Lab',29788,'NVIDIA GeForce RTX 3090 (2x SLI)','Intel Core i9-7960X Processor'),(4,'GamersNexus',29242,'NVIDIA GeForce RTX 3090 (2x SLI)','Intel Core i9-10900KF Processor'),(5,'BPS Customs',28804,'NVIDIA GeForce RTX 3090 (2x SLI)','Intel Core i9-10900KF Processor'),(6,'OG10KTech',28536,'NVIDIA GeForce RTX 3090 (2x SLI)','Intel Core i9-10900KF Processor'),(7,'Paul\'s Hardware',28363,'NVIDIA GeForce RTX 3090 (2x SLI)','Intel Core i9-10900K Processor'),(8,'TecLab_Takukou',28059,'NVIDIA GeForce RTX 3090 (2x SLI)','AMD Ryzen Threadripper 3990X'),(9,'chrismohsseni',27559,'NVIDIA GeForce RTX 3090 (2x SLI)','Intel Core i9-10900K Processor'),(10,'ac143',27059,'NVIDIA GeForce RTX 3090 (2x SLI)','AMD Ryzen 9 3950X'),(11,'elelunicy',26845,'NVIDIA GeForce RTX 3090 (2x SLI)','Intel Core i9-9980XE Processor'),(12,'普普通通Tony大叔',26497,'NVIDIA GeForce RTX 3090 (2x SLI)','AMD Ryzen Threadripper 3990X'),(13,'hallowen',26377,'NVIDIA GeForce RTX 3090 (2x SLI)','AMD Ryzen Threadripper 3990X'),(14,'smaxxonline69',25699,'NVIDIA GeForce RTX 3090 (2x SLI)','AMD Ryzen 9 3900XT'),(15,'[HAN]DeadlyBigDad',25432,'NVIDIA GeForce RTX 3090 (2x SLI)','Intel Core i9-9960X Processor'),(16,'chroman',25376,'NVIDIA GeForce RTX 3090 (2x SLI)','Intel Core i9-7900X Processor'),(17,'吉泽明步',25206,'NVIDIA GeForce RTX 3090 (2x SLI)','Intel Core i9-9900K Processor'),(18,'vbrisebo',25115,'NVIDIA GeForce RTX 3090 (2x SLI)','AMD Ryzen Threadripper 3960X'),(19,'gteather',24918,'NVIDIA GeForce RTX 3090 (2x SLI)','AMD Ryzen Threadripper 3970X'),(20,'JOkiel',24468,'NVIDIA GeForce RTX 3090 (2x SLI)','AMD Ryzen 9 3950X'),(21,'rperson1973',24272,'NVIDIA GeForce RTX 3090 (2x SLI)','Intel Core i9-7980XE Processor'),(22,'Rauf',24143,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-10980XE Extreme Edition Processor'),(23,'我爱周未!',24118,'NVIDIA GeForce RTX 3090 (2x SLI)','AMD Ryzen Threadripper 3970X'),(24,'moyix',23620,'NVIDIA GeForce RTX 3090 (2x SLI)','AMD Ryzen Threadripper 3970X'),(25,'sparetimepc',21929,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','AMD Ryzen Threadripper 3970X'),(26,'gotbobkelso',21875,'NVIDIA Titan RTX (2x SLI)','Intel Xeon W-3175X Processor'),(27,'ZedVile',21581,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-10900K Processor'),(28,'흙수저의반란',21580,'NVIDIA Titan RTX (2x SLI)','Intel Xeon W-3175X Processor'),(29,'ElitePanzerAce',21527,'NVIDIA Titan RTX (2x SLI)','Intel Core i9-7980XE Processor'),(30,'My Little Pwny-2',21346,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','AMD Ryzen 9 3950X'),(31,'V!leAMD',21245,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','AMD Ryzen 9 3950X'),(32,'qRigs',21222,'NVIDIA Titan RTX (2x SLI)','Intel Core i9-9900K Processor'),(33,'IQuit',21131,'NVIDIA Titan RTX (2x SLI)','AMD Ryzen Threadripper 3990X'),(34,'_anti_',21130,'NVIDIA Titan RTX (2x SLI)','Intel Core i9-9980XE Processor'),(35,'ArmpitoftheGiant',21064,'NVIDIA Titan RTX (2x SLI)','Intel Core i9-9900K Processor'),(36,'yuyijun22',21033,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-7980XE Processor'),(37,'Zurv',21007,'NVIDIA Titan RTX (2x SLI)','Intel Core i9-10980XE Extreme Edition Processor'),(38,'Dansv8',20976,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','AMD Ryzen Threadripper 3960X'),(39,'SFF.GALLERY',20957,'NVIDIA Titan RTX (2x SLI)','Intel Core i9-9900KS Processor'),(40,'你T爸爸嗷',20907,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-9960X Processor'),(41,'ΛLTER',20827,'NVIDIA Titan RTX (2x SLI)','Intel Core i9-9980XE Processor'),(42,'おやまの たぬ吉 Lv.18',20802,'NVIDIA Titan RTX (2x SLI)','Intel Core i9-9900KS Processor'),(43,'Jorpheus',20782,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-9900K Processor'),(44,'Jeff_',20754,'NVIDIA Titan RTX (2x SLI)','AMD Ryzen 9 3950X'),(45,'EricSimonSPT',20705,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','AMD Ryzen Threadripper 3990X'),(46,'seiz',20687,'NVIDIA Titan RTX (2x SLI)','Intel Core i9-9980XE Processor'),(47,'jcartu',20671,'NVIDIA Titan RTX (2x SLI)','Intel Xeon W-3175X Processor'),(48,'kurakenshin@Chiphell',20656,'NVIDIA Titan RTX (2x SLI)','AMD Ryzen Threadripper 2990WX'),(49,'fintmica5spd1',20622,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-9900K Processor'),(50,'J7SC',20574,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','AMD Ryzen Threadripper 2950X'),(51,'MarBai92',20573,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-9900K Processor'),(52,'thevehementkind',20545,'NVIDIA Titan RTX (2x SLI)','Intel Core i9-9980XE Processor'),(53,'2416341129',20499,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-9900KS Processor'),(54,'Spud_ASSassin',20436,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-9900K Processor'),(55,'DrWeazle',20428,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-9900K Processor'),(56,'kcdc',20397,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-10940X X-series Processor'),(57,'۞同人堂۞',20395,'NVIDIA Titan RTX (2x SLI)','Intel Core i9-7980XE Processor'),(58,'Sparky_303',20374,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-9900KS Processor'),(59,'miguelcolomer',20362,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-9900K Processor'),(60,'solidton',20361,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-7940X Processor'),(61,'blackgwt',20352,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-7980XE Processor'),(62,'Q56_Monster-2',20329,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-7980XE Processor'),(63,'JessB23S',20317,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i7-8700K Processor'),(64,'timmytthetechie',20310,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','AMD Ryzen 9 3950X'),(65,'Baribasuba',20275,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','AMD Ryzen 7 3700X'),(66,'ooc. Dowgg d[-_-]b',20272,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-7940X Processor'),(67,'elkhog',20257,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-9900KS Processor'),(68,'leotonch',20256,'NVIDIA GeForce RTX 3090 (2x SLI)','Intel Core i9-10980XE Extreme Edition Processor'),(69,'Wharrus',20246,'NVIDIA Titan RTX (2x SLI)','Intel Core i9-9900K Processor'),(70,'russ2567',20244,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','AMD Ryzen Threadripper 2990WX'),(71,'p2bsteve0-2',20237,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-9900K Processor'),(72,'skywalkermibnasa',20234,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i7-6900K Processor'),(73,'igbon',20226,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-10940X X-series Processor'),(74,'prophet72',20191,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-7960X Processor'),(75,'kkk427',20177,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-9900K Processor'),(76,'colehammond',20172,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-10850K Processor'),(77,'Typhoon X',20168,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-10940X X-series Processor'),(78,'wesleyxy',20157,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-7980XE Processor'),(79,'ThirtyIR',20152,'NVIDIA Titan RTX (2x SLI)','Intel Core i7-6950X Processor'),(80,'Tostada Grande',20143,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-9900KS Processor'),(81,'D3LTA KING',20120,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-7960X Processor'),(82,'Xanadu',20118,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-9900K Processor'),(83,'mattman657',20115,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-9900K Processor'),(84,'jamesbrady21',20111,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-9900K Processor'),(85,'cmanessis',20100,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','AMD Ryzen Threadripper 3960X'),(86,'pal9000',20089,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','AMD Ryzen Threadripper 3970X'),(87,'TurboShotUrAss',20087,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-9900K Processor'),(88,'twinklelgg',20080,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-9920X Processor'),(89,'DJJCUN_Kor',20079,'NVIDIA Titan RTX (2x SLI)','Intel Core i9-7980XE Processor'),(90,'USERNAME',20078,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','AMD Ryzen Threadripper 3970X'),(91,'chrissagoth',20077,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i7-6950X Processor'),(92,'Kaapstad-2',20045,'NVIDIA Titan RTX (2x SLI)','Intel Core i7-6950X Processor'),(93,'German-Snake',20036,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-9900K Processor'),(94,'legend-2',20036,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','AMD Ryzen Threadripper 3970X'),(95,'adler',20020,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-9900K Processor'),(96,'swhite',20019,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-9900K Processor'),(97,'bababooey-2',20016,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-9900K Processor'),(98,'rgrlowe',20011,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-9900K Processor'),(99,'Yui.kki',20003,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-9900K Processor'),(100,'ssh6314',19968,'NVIDIA GeForce RTX 2080 Ti (2x SLI)','Intel Core i9-7940X Processor');
/*!40000 ALTER TABLE `portrecords` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-27 14:43:02
