-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: fortelmedia
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.26-MariaDB

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
-- Table structure for table `clientcontacts`
--

DROP TABLE IF EXISTS `clientcontacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientcontacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clientcontacts_client_id_foreign` (`client_id`),
  CONSTRAINT `clientcontacts_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientcontacts`
--

LOCK TABLES `clientcontacts` WRITE;
/*!40000 ALTER TABLE `clientcontacts` DISABLE KEYS */;
INSERT INTO `clientcontacts` VALUES (1,1,'test address1','postcode 1',NULL,NULL),(2,2,'test address2','postcode 2',NULL,NULL),(3,2,'test address3','postcode 3',NULL,NULL),(4,1,'test address4','postcode 1',NULL,NULL),(5,16,'Kassem Street, 32','02222','2017-10-18 09:10:04','2017-10-18 09:10:04'),(6,17,'Kassem Street, 32','02222','2017-10-18 10:09:01','2017-10-18 10:09:01'),(7,18,'Kassem Street, 32','02222','2017-10-18 10:09:59','2017-10-18 10:09:59'),(8,19,'Kassem Street, 32','02222','2017-10-18 10:10:52','2017-10-18 10:10:52'),(9,20,'Kassem Street, 32','02222','2017-10-18 10:18:36','2017-10-18 10:18:36'),(10,21,'3/1 388 Abercromby Street','G40 2DB','2017-10-18 10:19:51','2017-10-18 10:19:51');
/*!40000 ALTER TABLE `clientcontacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'kareem','ashraf','kareem.ashraf@test.com',1,NULL,NULL,'2017-10-18 10:24:50'),(2,'test','test','test@test.com',1,NULL,NULL,'2017-10-18 07:55:19'),(3,'Kareem','Ashraf','kareem.ashraf.91@gmail.com',1,NULL,'2017-10-18 08:34:06','2017-10-18 08:34:06'),(4,'Kareem','Ashraf','kareem.ashraf.91@gmail.com',1,NULL,'2017-10-18 08:37:57','2017-10-18 08:37:57'),(5,'Kareem','Ashraf','kareem.ashraf.91@gmail.com',1,NULL,'2017-10-18 08:43:57','2017-10-18 08:43:57'),(6,'Kareem','Ashraf','kareem.ashraf.91@gmail.com',1,NULL,'2017-10-18 08:48:53','2017-10-18 08:48:53'),(7,'Kareem','Ashraf','kareem.ashraf.91@gmail.com',1,NULL,'2017-10-18 08:49:33','2017-10-18 08:49:33'),(8,'Kareem','Ashraf','kareem.ashraf.91@gmail.com',1,NULL,'2017-10-18 08:52:33','2017-10-18 08:52:33'),(9,'Kareem','Ashraf','kareem.ashraf.91@gmail.com',1,NULL,'2017-10-18 08:56:36','2017-10-18 08:56:36'),(10,'Kareem','Ashraf','kareem.ashraf.91@gmail.com',1,NULL,'2017-10-18 08:57:17','2017-10-18 08:57:17'),(11,'Kareem','Ashraf','kareem.ashraf.91@gmail.com',1,NULL,'2017-10-18 09:00:30','2017-10-18 09:00:30'),(12,'Kareem','Ashraf','kareem.ashraf.91@gmail.com',1,NULL,'2017-10-18 09:05:12','2017-10-18 09:05:12'),(13,'Kareem','Ashraf','kareem.ashraf.91@gmail.com',1,NULL,'2017-10-18 09:06:10','2017-10-18 09:06:10'),(14,'Kareem','Ashraf','kareem.ashraf.91@gmail.com',1,NULL,'2017-10-18 09:08:11','2017-10-18 09:08:11'),(15,'Kareem','Ashraf','kareem.ashraf.91@gmail.com',1,NULL,'2017-10-18 09:08:44','2017-10-18 09:08:44'),(16,'Kareem','Ashraf','kareem.ashraf.91@gmail.com',1,'2017-10-18 10:27:39','2017-10-18 09:10:04','2017-10-18 10:27:39'),(17,'Kareem','Ashraf','kareem.ashraf.91@gmail.com',1,'2017-10-18 10:27:50','2017-10-18 10:09:01','2017-10-18 10:27:50'),(18,'Kareem','Ashraf','kareem.ashraf.91@gmail.com',1,NULL,'2017-10-18 10:09:58','2017-10-18 10:09:58'),(19,'Kareem','Ashraf','kareem.ashraf.91@gmail.com',1,NULL,'2017-10-18 10:10:52','2017-10-18 10:10:52'),(20,'Kareem','Ashraf','kareem.ashraf.91@gmail.com',1,NULL,'2017-10-18 10:18:36','2017-10-18 10:18:36'),(21,'testing','fortelmedia','Taddycfc1@live.com',1,NULL,'2017-10-18 10:19:51','2017-10-18 10:19:51');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2017_10_15_183420_create_clients_table',1),(4,'2017_10_15_201423_create_clientcontacts_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2017-10-18 15:56:52
