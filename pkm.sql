-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: pkm
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `add_pkm`
--

DROP TABLE IF EXISTS `add_pkm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `add_pkm` (
  `jumlah_pkm` int NOT NULL,
  PRIMARY KEY (`jumlah_pkm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_pkm`
--

LOCK TABLES `add_pkm` WRITE;
/*!40000 ALTER TABLE `add_pkm` DISABLE KEYS */;
/*!40000 ALTER TABLE `add_pkm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mahasiswa` (
  `nim` int NOT NULL AUTO_INCREMENT,
  `nama_mahasiswa` varchar(50) DEFAULT NULL,
  `universitas_id` int NOT NULL,
  `pkm_id` int NOT NULL,
  PRIMARY KEY (`nim`),
  KEY `pkm_id` (`pkm_id`),
  KEY `universitas_id` (`universitas_id`),
  CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`pkm_id`) REFERENCES `pkm` (`pkm_id`),
  CONSTRAINT `mahasiswa_ibfk_2` FOREIGN KEY (`universitas_id`) REFERENCES `universitas` (`universitas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` VALUES (11,'Nana',70,2),(22,'Momo',10,4),(33,'Lala',30,2),(44,'Yaya',10,3),(55,'Caca',20,5),(66,'Rara',30,10),(77,'Tata',80,3),(88,'Kiki',90,10),(99,'Rere',100,8),(101,'Sasa',40,4);
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pkm`
--

DROP TABLE IF EXISTS `pkm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pkm` (
  `pkm_id` int NOT NULL AUTO_INCREMENT,
  `nama_pkm` varchar(300) DEFAULT NULL,
  `jenis_pkm` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`pkm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pkm`
--

LOCK TABLES `pkm` WRITE;
/*!40000 ALTER TABLE `pkm` DISABLE KEYS */;
INSERT INTO `pkm` VALUES (1,'Healbag Inovasi totebag 3 in 1 dengan radiasi batu tourmaline sebagai media terapis mineral alami','PKM-K'),(2,'LUP SCANNER MAKE UP ARTIST','PKM-PI'),(3,'Gagasan Mitigasi Konflik Buaya-Manusia di Aliran Sungai Mentaya','PKM-VGK'),(4,'Potensi Nanoemulsi Minyak Ikan Tindarung Dari Perairan Sulawesi Utara Sebagai Inhibitor HMG-KoA','PKM-RE'),(5,'Sistem Pemberantasan Korupsi Berbasis Teknologi Blockchain Guna Mewujudkan Indonesia Bebas Korupsi 2035','PKM-GFT'),(6,'Alat Pembersih Sisik dan Isi Perut Ikan Otomatis Berbasis Smart Relay sebagai Solusi UMKM Makanan Berbahan Dasar Ikan','PKM-KI'),(7,'Jacket Air Chusion Restraint Safety System Berbasis Arduino','PKM-KI'),(8,'Inovasi Gendongan Bayi dengan Oxytocin Massage sebagai Solusi ASI Tidak Lancar pada Ibu Menyusui','PKM-KI'),(9,'Pa\'commo: Pakan Tikus Laboratorium Pemodelan Sindrom Metabolik dan Obesitas','PKM-KI'),(10,'Obat kumur Herbal berbahan dasar kayu Secang dan Kulit buah naga untuk pencegah inflamasi dan pendeteksi plak gigi','PKM-K');
/*!40000 ALTER TABLE `pkm` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `backup_pkm` BEFORE DELETE ON `pkm` FOR EACH ROW insert into pkm_backup
values(old.pkm_id, old.nama_pkm, old.jenis_pkm) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pkm_backup`
--

DROP TABLE IF EXISTS `pkm_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pkm_backup` (
  `pkm_id` int NOT NULL AUTO_INCREMENT,
  `nama_pkm` varchar(300) DEFAULT NULL,
  `jenis_pkm` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`pkm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pkm_backup`
--

LOCK TABLES `pkm_backup` WRITE;
/*!40000 ALTER TABLE `pkm_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `pkm_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `universitas`
--

DROP TABLE IF EXISTS `universitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `universitas` (
  `universitas_id` int NOT NULL AUTO_INCREMENT,
  `nama_universitas` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  PRIMARY KEY (`universitas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `universitas`
--

LOCK TABLES `universitas` WRITE;
/*!40000 ALTER TABLE `universitas` DISABLE KEYS */;
INSERT INTO `universitas` VALUES (10,'UNDIP','Tembalang'),(20,'UNNES','Gunung Pati'),(30,'UNISSULA','Terboyo Kulon'),(40,'UDINUS','Pendrikan Kidul'),(50,'Unika Soegijapranata','Gajahmungkur'),(60,'UNISBANK','Semarang Selatan'),(70,'UPGRIS','Semarang Timur'),(80,'UIN Walisongo','Tambakaji'),(90,'Unimus','Tembalang'),(100,'USM','Tlogosari Kulon');
/*!40000 ALTER TABLE `universitas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'pkm'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `giveaway_idepkm_haripendidikannasional` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `giveaway_idepkm_haripendidikannasional` ON SCHEDULE AT '2023-05-02 07:00:00' ON COMPLETION NOT PRESERVE ENABLE DO insert into pkm
values(11, 'Nano-hidroksiapatit dari Limbah Sisik Ikan Nila (Oreochromis niloticus) sebagai Penguat Bahan Restorasi Gigi', 'PKM-RE') */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'pkm'
--
/*!50003 DROP PROCEDURE IF EXISTS `InfoPKMMahasiswa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InfoPKMMahasiswa`(IN nim INT)
BEGIN
	SELECT p.nama_pkm, p.jenis_pkm, u.nama_universitas, u.alamat
    FROM mahasiswa m
    JOIN pkm p ON m.pkm_id = p.pkm_id
    JOIN universitas u ON m.universitas_id = u.universitas_id
    WHERE m.nim = nim;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-25  2:39:30
