-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.2

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
-- Table structure for table `Billboard`
--

DROP TABLE IF EXISTS `Billboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Billboard` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storeId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageUrl` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Billboard_storeId_idx` (`storeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Billboard`
--

LOCK TABLES `Billboard` WRITE;
/*!40000 ALTER TABLE `Billboard` DISABLE KEYS */;
INSERT INTO `Billboard` VALUES ('73b803ed-913f-48b6-b15d-d03753dbef7b','7c0fd241-97a9-4277-9d0b-b64e9590fdc6','billboard 1','https://res.cloudinary.com/denuh810s/image/upload/v1689423203/db0btilfbuwoebnbtay4.png','2023-07-15 12:13:38.111','2023-07-15 12:13:38.111'),('c0260de2-21bf-4ee6-bc01-6425ea9d4075','7c0fd241-97a9-4277-9d0b-b64e9590fdc6','billboard2','https://res.cloudinary.com/denuh810s/image/upload/v1689190110/nrlde6xzrgh4snzcwkyo.jpg','2023-07-12 19:27:44.266','2023-07-12 19:28:40.650');
/*!40000 ALTER TABLE `Billboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Category` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storeId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billboardId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Category_storeId_idx` (`storeId`),
  KEY `Category_billboardId_idx` (`billboardId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
INSERT INTO `Category` VALUES ('42d11ff5-d442-4496-835d-d2fb1cdf601d','7c0fd241-97a9-4277-9d0b-b64e9590fdc6','73b803ed-913f-48b6-b15d-d03753dbef7b','t-shirt','2023-07-18 13:57:25.991','2023-07-18 13:57:25.991'),('9ba1f06f-3d59-4c75-8c5c-49e2aa1436e2','7c0fd241-97a9-4277-9d0b-b64e9590fdc6','c0260de2-21bf-4ee6-bc01-6425ea9d4075','short','2023-07-18 13:59:49.258','2023-07-18 13:59:49.258');
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Color`
--

DROP TABLE IF EXISTS `Color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Color` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storeId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Color_storeId_idx` (`storeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Color`
--

LOCK TABLES `Color` WRITE;
/*!40000 ALTER TABLE `Color` DISABLE KEYS */;
INSERT INTO `Color` VALUES ('81500b01-487c-45ab-a0f1-84103a0c8468','7c0fd241-97a9-4277-9d0b-b64e9590fdc6','Blue','#0000ff','2023-07-17 21:59:17.541','2023-07-17 22:00:10.390'),('af1816be-0633-4ef3-83f1-5dc934d75e09','7c0fd241-97a9-4277-9d0b-b64e9590fdc6','Red','#ff0000','2023-07-17 21:58:39.097','2023-07-17 22:00:18.349'),('b6e7ae47-f43c-48cf-bb90-b5f657b50d17','7c0fd241-97a9-4277-9d0b-b64e9590fdc6','Green','#00ff00','2023-07-17 21:59:44.629','2023-07-17 22:00:01.610');
/*!40000 ALTER TABLE `Color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Image`
--

DROP TABLE IF EXISTS `Image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Image` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Image_productId_idx` (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Image`
--

LOCK TABLES `Image` WRITE;
/*!40000 ALTER TABLE `Image` DISABLE KEYS */;
INSERT INTO `Image` VALUES ('2d3ac78b-5598-4146-87fa-480f637b7782','7f455dec-e783-45f1-8046-9e589a274dc8','https://res.cloudinary.com/denuh810s/image/upload/v1689688880/rflgr43mhtct3fnc9jzd.jpg','2023-07-18 14:20:39.265','2023-07-18 14:20:39.265'),('8925451d-6f72-48c4-9856-3cac9e15c1d8','7f455dec-e783-45f1-8046-9e589a274dc8','https://res.cloudinary.com/denuh810s/image/upload/v1689688880/jualpyfjgif5f2ho2oay.jpg','2023-07-18 14:20:39.265','2023-07-18 14:20:39.265'),('a0b69b56-d0a7-4eb7-b132-539bdc588c78','188b0d34-eced-48f2-b802-8a1197b8a813','https://res.cloudinary.com/denuh810s/image/upload/v1689705521/wflrktqbaydtkdg3zw8d.jpg','2023-07-18 18:39:06.124','2023-07-18 18:39:06.124'),('c3137ea2-e39c-4068-b3ca-7b347d656772','ec70faf4-9c9c-4bd7-89b9-1bd45edfd06c','https://res.cloudinary.com/denuh810s/image/upload/v1689705430/ympuacpihurg90mnleyh.webp','2023-07-18 18:38:05.844','2023-07-18 18:38:05.844'),('d78010a2-9398-4573-8906-0a786d983f27','ec70faf4-9c9c-4bd7-89b9-1bd45edfd06c','https://res.cloudinary.com/denuh810s/image/upload/v1689705419/pf1gfrimr98xsngzkur8.webp','2023-07-18 18:38:05.844','2023-07-18 18:38:05.844');
/*!40000 ALTER TABLE `Image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order`
--

DROP TABLE IF EXISTS `Order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Order` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storeId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isPaid` tinyint(1) NOT NULL DEFAULT '0',
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Order_storeId_idx` (`storeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order`
--

LOCK TABLES `Order` WRITE;
/*!40000 ALTER TABLE `Order` DISABLE KEYS */;
/*!40000 ALTER TABLE `Order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderItem`
--

DROP TABLE IF EXISTS `OrderItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrderItem` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orderId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `OrderItem_orderId_idx` (`orderId`),
  KEY `OrderItem_productId_idx` (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderItem`
--

LOCK TABLES `OrderItem` WRITE;
/*!40000 ALTER TABLE `OrderItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrderItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Product` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storeId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(65,30) NOT NULL,
  `isFeatured` tinyint(1) NOT NULL DEFAULT '0',
  `isArchived` tinyint(1) NOT NULL DEFAULT '0',
  `sizeId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colorId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Product_storeId_idx` (`storeId`),
  KEY `Product_sizeId_idx` (`sizeId`),
  KEY `Product_colorId_idx` (`colorId`),
  KEY `Product_categoryId_idx` (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES ('188b0d34-eced-48f2-b802-8a1197b8a813','7c0fd241-97a9-4277-9d0b-b64e9590fdc6','9ba1f06f-3d59-4c75-8c5c-49e2aa1436e2','testd',9.990000000000000000000000000000,1,0,'62ffa815-f69c-4a3b-ad81-a93018ee485e','81500b01-487c-45ab-a0f1-84103a0c8468','2023-07-18 18:38:48.607','2023-07-18 18:39:06.079'),('7f455dec-e783-45f1-8046-9e589a274dc8','7c0fd241-97a9-4277-9d0b-b64e9590fdc6','42d11ff5-d442-4496-835d-d2fb1cdf601d','t-shirt',9.990000000000000000000000000000,0,1,'e70fedbe-0b5e-4fec-ac2f-2edef576ac9a','af1816be-0633-4ef3-83f1-5dc934d75e09','2023-07-18 14:02:36.634','2023-07-18 14:20:39.257'),('ec70faf4-9c9c-4bd7-89b9-1bd45edfd06c','7c0fd241-97a9-4277-9d0b-b64e9590fdc6','9ba1f06f-3d59-4c75-8c5c-49e2aa1436e2','Short',13.500000000000000000000000000000,1,0,'e70fedbe-0b5e-4fec-ac2f-2edef576ac9a','81500b01-487c-45ab-a0f1-84103a0c8468','2023-07-18 18:38:05.844','2023-07-18 18:38:05.844');
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Size`
--

DROP TABLE IF EXISTS `Size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Size` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storeId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Size_storeId_idx` (`storeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Size`
--

LOCK TABLES `Size` WRITE;
/*!40000 ALTER TABLE `Size` DISABLE KEYS */;
INSERT INTO `Size` VALUES ('62ffa815-f69c-4a3b-ad81-a93018ee485e','7c0fd241-97a9-4277-9d0b-b64e9590fdc6','Slim','S','2023-07-18 13:59:13.614','2023-07-18 13:59:13.614'),('d1f4b10e-e9d3-4f58-a5c1-b3288b95ccb6','7c0fd241-97a9-4277-9d0b-b64e9590fdc6','Large','L','2023-07-18 13:59:06.436','2023-07-18 13:59:06.436'),('e70fedbe-0b5e-4fec-ac2f-2edef576ac9a','7c0fd241-97a9-4277-9d0b-b64e9590fdc6','medium','M','2023-07-18 13:58:57.713','2023-07-18 13:58:57.713');
/*!40000 ALTER TABLE `Size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Store`
--

DROP TABLE IF EXISTS `Store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Store` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Store`
--

LOCK TABLES `Store` WRITE;
/*!40000 ALTER TABLE `Store` DISABLE KEYS */;
INSERT INTO `Store` VALUES ('7c0fd241-97a9-4277-9d0b-b64e9590fdc6','test-store','user_2SLAM9LeCHDjSrzajSTNDkcFUki','2023-07-12 19:25:30.385','2023-07-12 19:25:30.385');
/*!40000 ALTER TABLE `Store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-20  0:07:47
