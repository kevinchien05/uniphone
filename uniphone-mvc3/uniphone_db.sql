-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: uniphone_db
-- ------------------------------------------------------
-- Server version	5.7.33

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
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rom` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (14,6,2,'images/ip12.png ','iPhone 12 ','128','blue',14000000,1,'2022-01-15 15:36:36','2022-01-15 15:36:36');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(255) DEFAULT NULL,
  `c_email` varchar(255) DEFAULT NULL,
  `c_phone` varchar(255) DEFAULT NULL,
  `c_message` text,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rom` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `price2` int(11) DEFAULT NULL,
  `price3` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `color2` varchar(255) DEFAULT NULL,
  `color3` varchar(255) DEFAULT NULL,
  `rom` varchar(255) DEFAULT NULL,
  `rom2` varchar(255) DEFAULT NULL,
  `rom3` varchar(255) DEFAULT NULL,
  `details` text,
  `box` longtext,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'iPhone 12 Pro Max','Apple','images/iph12.png',20000000,22000000,25000000,'black','blue','white','128','256','512','iPhone 12 Pro Max. Layar Super Retina XDR 6,7 inci yang lebih besar.1 Ceramic Shield dengan ketahanan jatuh empat kali lebih baik.2 Fotografi pencahayaan rendah yang menakjubkan dengan sistem kamera Pro terbaik di iPhone, dan rentang zoom optik 5x. Mampu merekam, mengedit, dan memutar video sekelas sinema dengan Dolby Vision. Potret mode Malam dan pengalaman AR di level berikutnya dengan LiDAR Scanner. Chip A14 Bionic yang andal. Dan aksesori MagSafe baru untuk kemudahan pemasangan dan pengisian daya nirkabel yang lebih cepat.3 Untuk berjuta kemungkinan spektakuler','iPhone 12 Pro Max, Lighting to USB-C cable, Manual Book, SIM Card Ejector, Apple Logo Sticker  ','2022-01-11 18:09:39','2022-01-11 18:09:39'),(2,'iPhone 12','Apple','images/ip12.png',13000000,14000000,15000000,'black','blue','white','64','128','256','iPhone 12. Layar Super Retina XDR 6,1 inci yang begitu cerah.1 Ceramic Shield dengan ketahanan jatuh empat kali lebih baik.2 Fotografi pencahayaan rendah yang menakjubkan dengan mode Malam di semua kamera. Mampu merekam, mengedit, dan memutar video sekelas sinema dengan Dolby Vision. Chip A14 Bionic yang andal. Dan aksesori MagSafe baru untuk kemudahan pemasangan dan pengisian daya nirkabel yang lebih cepat.3 Saatnya bersenang-senang. ','iPhone 12, Lighting to USB-C cable, Manual Book, SIM Card Ejector, Apple Logo Sticker','2022-01-11 18:09:39','2022-01-11 18:09:39'),(3,'Samsung S21 5G','Samsung','images/s21.png',10000000,11000000,12000000,'gray','black','white','128','256','512','Seri Galaxy S21 memiliki desain yang mirip dengan pendahulunya, dengan layar Infinity-O berisi potongan melingkar di tengah atas untuk kamera selfie depan. Panel belakang S21 diperkuat polikarbonat yang mirip dengan S20 FE dan Note 20, sedangkan S21+ dan S21 Ultra menggunakan kaca. Susunan kamera belakang telah diintegrasikan ke dalam bodi ponsel dan memiliki lingkungan logam; S21 Ultra memiliki kamera serat karbon yang mengelilingi warna eksklusif.','Samsung S21 5G, Adaptor, Kabel Type- C, Manual Book, Ejection Pin','2022-01-12 19:02:38','2022-01-12 19:02:38');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'kevin','kevinchien24@gmail.com','kevin0506','2022-01-09 05:29:07','2022-01-14 14:08:22'),(2,'budiman','budiman@gmail.com','budi123','2022-01-12 11:29:19','2022-01-12 11:29:19'),(3,'lisa','lisa@gmail.com','lisa','2022-01-14 11:39:58','2022-01-14 11:40:26'),(4,'kiri','kiri@gmail.com','kirikanna','2022-01-14 14:08:42','2022-01-14 14:08:42'),(5,'jalu','jalu@gmail.com','123','2022-01-14 14:09:03','2022-01-14 14:09:03'),(6,'jony','jony@gmail.com','jony123','2022-01-15 15:19:37','2022-01-15 15:19:46');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishes`
--

DROP TABLE IF EXISTS `wishes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rom` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishes`
--

LOCK TABLES `wishes` WRITE;
/*!40000 ALTER TABLE `wishes` DISABLE KEYS */;
INSERT INTO `wishes` VALUES (2,3,3,'images/s21.png','Samsung S21 5G ','128','blue',10000000,'2022-01-14 11:41:02','2022-01-14 11:41:02');
/*!40000 ALTER TABLE `wishes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-15 22:40:50
