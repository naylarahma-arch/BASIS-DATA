-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: teknik
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `jurusan`
--

DROP TABLE IF EXISTS `jurusan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jurusan` (
  `npm` char(5) NOT NULL,
  `nama_mahasiswa` varchar(50) DEFAULT NULL,
  `jurusan` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`npm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jurusan`
--

LOCK TABLES `jurusan` WRITE;
/*!40000 ALTER TABLE `jurusan` DISABLE KEYS */;
INSERT INTO `jurusan` VALUES ('00075','Rindani Ayu','Teknologi Informasi'),('00076','Meila Dewin','Teknik Sipil'),('00077','Areta Nasywa','Teknik Mesin'),('00078','Dimas Putra','Teknik Industri'),('00079','Hanifa Abir','Teknik Elektro'),('00080','Alfi Fatah','Informatika');
/*!40000 ALTER TABLE `jurusan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matkul`
--

DROP TABLE IF EXISTS `matkul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matkul` (
  `kode_matkul` int(11) NOT NULL AUTO_INCREMENT,
  `NPM` char(5) DEFAULT NULL,
  `nama_mahasiswa` varchar(50) DEFAULT NULL,
  `nama_matkul` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`kode_matkul`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matkul`
--

LOCK TABLES `matkul` WRITE;
/*!40000 ALTER TABLE `matkul` DISABLE KEYS */;
INSERT INTO `matkul` VALUES (1,'00075','Rindani Ayu','Basis Data'),(2,'00075','Rindani Ayu','Algoritma Pemograman'),(3,'00075','Rindani Ayu','Struktur Data'),(4,'00075','Rindani Ayu','Kalkulus'),(5,'00076','Meila Dewin','Fisika'),(6,'00076','Meila Dewin','Kalkulus'),(7,'00077','Areta Nasywa','Kalkulus'),(8,'00077','Areta Nasywa','Manufaktur'),(9,'00077','Areta Nasywa','Kimia'),(10,'00078','Dimas Putra','Sistem Produksi'),(11,'00078','Dimas Putra','Fisika'),(12,'00078','Dimas Putra','Ergonomi'),(13,'00078','Dimas Putra','Statistika Industri'),(14,'00079','Hanifa Abir','Kalkulus'),(15,'00079','Hanifa Abir','Elektronika'),(16,'00080','Alfi Fatah','Basis Data'),(17,'00080','Alfi Fatah','Jaringan Komputer'),(18,'00080','Alfi Fatah','Pemrograman Web');
/*!40000 ALTER TABLE `matkul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nilai`
--

DROP TABLE IF EXISTS `nilai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nilai` (
  `npm` char(5) NOT NULL,
  `nama_mahasiswa` varchar(50) DEFAULT NULL,
  `matkul` varchar(20) DEFAULT NULL,
  `nilai_mahasiswa` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`npm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nilai`
--

LOCK TABLES `nilai` WRITE;
/*!40000 ALTER TABLE `nilai` DISABLE KEYS */;
INSERT INTO `nilai` VALUES ('00075','Rindani Ayu','Basis Data',90.00),('00076','Meila Dewin','Fisika',80.00),('00077','Areta Nasywa','Kalkulus',85.00),('00078','Dimas Putra','Fisika',95.00),('00079','Hanifa Abir','Kalkulus',92.00),('00080','Alfi Fatah','Basis Data',82.00);
/*!40000 ALTER TABLE `nilai` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-18 16:07:06
