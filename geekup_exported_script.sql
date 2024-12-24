CREATE DATABASE  IF NOT EXISTS `my_geekup` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `my_geekup`;
-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: geekup
-- ------------------------------------------------------
-- Server version	5.5.5-10.11.6-MariaDB-0+deb12u1

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
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
INSERT INTO `Category` VALUES (1,'Giày'),(2,'Áo'),(3,'Quần'),(4,'Phụ kiện');
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fee`
--

DROP TABLE IF EXISTS `Fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Fee` (
  `fee_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `method` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`fee_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `Fee_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fee`
--

LOCK TABLES `Fee` WRITE;
/*!40000 ALTER TABLE `Fee` DISABLE KEYS */;
INSERT INTO `Fee` VALUES (1,'2024-12-23 16:03:35','CreditCard',50000.00,NULL),(10,'2024-12-23 16:18:15','CreditCard',50000.00,1),(11,'2024-12-23 16:18:34','CreditCard',50000.00,1),(12,'2024-12-23 16:18:45','CreditCard',50000.00,1),(13,'2024-11-23 00:00:00','CreditCard',50000.00,1),(14,'2024-11-23 00:00:00','CreditCard',50000.00,1),(15,'2024-11-23 00:00:00','CreditCard',50000.00,1),(16,'2024-11-23 00:00:00','CreditCard',50000.00,1),(17,'2024-11-23 00:00:00','CreditCard',50000.00,1),(18,'2024-10-23 00:00:00','CreditCard',50000.00,1),(19,'2024-10-23 00:00:00','CreditCard',50000.00,1),(20,'2024-10-23 00:00:00','CreditCard',50000.00,1),(21,'2024-09-23 00:00:00','CreditCard',50000.00,1),(22,'2024-09-23 00:00:00','CreditCard',50000.00,1),(23,'2024-09-23 00:00:00','CreditCard',50000.00,1),(24,'2024-09-23 00:00:00','CreditCard',50000.00,1),(25,'2024-08-23 00:00:00','CreditCard',50000.00,1),(26,'2024-08-23 00:00:00','CreditCard',50000.00,1),(27,'2024-08-23 00:00:00','CreditCard',50000.00,1),(28,'2024-06-23 00:00:00','CreditCard',50000.00,1),(29,'2024-06-23 00:00:00','CreditCard',50000.00,1),(30,'2024-05-23 00:00:00','CreditCard',50000.00,1),(31,'2024-05-23 00:00:00','CreditCard',50000.00,1),(32,'2024-04-23 00:00:00','CreditCard',50000.00,1),(33,'2024-04-23 00:00:00','CreditCard',50000.00,1),(34,'2024-03-23 00:00:00','CreditCard',50000.00,1),(35,'2024-03-23 00:00:00','CreditCard',50000.00,1),(36,'2024-02-23 00:00:00','CreditCard',50000.00,1),(37,'2024-02-23 00:00:00','CreditCard',50000.00,1),(38,'2024-02-23 00:00:00','CreditCard',50000.00,1),(39,'2024-01-23 00:00:00','CreditCard',50000.00,1),(40,'2024-01-23 00:00:00','CreditCard',50000.00,1),(41,'2023-12-23 00:00:00','CreditCard',50000.00,1),(42,'2023-12-23 00:00:00','CreditCard',50000.00,1),(43,'2023-12-23 00:00:00','CreditCard',50000.00,1),(44,'2023-11-23 00:00:00','CreditCard',50000.00,1),(45,'2023-11-23 00:00:00','CreditCard',50000.00,1),(46,'2024-12-23 00:00:00','CreditCard',50000.00,1),(47,'2024-12-23 00:00:00','CreditCard',50000.00,2),(48,'2024-12-23 00:00:00','CreditCard',50000.00,3),(49,'2024-05-23 00:00:00','CreditCard',50000.00,4),(50,'2024-05-23 00:00:00','CreditCard',50000.00,5);
/*!40000 ALTER TABLE `Fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order`
--

DROP TABLE IF EXISTS `Order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_date` datetime DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `fee_id` int(11) DEFAULT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  KEY `fee_id` (`fee_id`),
  KEY `shipment_id` (`shipment_id`),
  CONSTRAINT `Order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`user_id`),
  CONSTRAINT `Order_ibfk_2` FOREIGN KEY (`fee_id`) REFERENCES `Fee` (`fee_id`),
  CONSTRAINT `Order_ibfk_3` FOREIGN KEY (`shipment_id`) REFERENCES `Shipment` (`shipment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order`
--

LOCK TABLES `Order` WRITE;
/*!40000 ALTER TABLE `Order` DISABLE KEYS */;
INSERT INTO `Order` VALUES (12,'2024-12-23 16:18:34',4950000.00,1,11,12),(13,'2024-12-23 16:18:45',4950000.00,1,12,13),(14,'2024-11-23 00:00:00',4950000.00,1,13,14),(15,'2024-11-23 00:00:00',950000.00,1,14,15),(16,'2024-11-23 00:00:00',950000.00,1,15,16),(17,'2024-11-23 00:00:00',1300000.00,1,16,17),(18,'2024-11-23 00:00:00',1800000.00,1,17,18),(19,'2024-10-23 00:00:00',1800000.00,1,18,19),(20,'2024-10-23 00:00:00',2550000.00,1,19,20),(21,'2024-10-23 00:00:00',650000.00,1,20,21),(22,'2024-09-23 00:00:00',1550000.00,1,21,22),(23,'2024-09-23 00:00:00',450000.00,1,22,23),(24,'2024-09-23 00:00:00',350000.00,1,23,24),(25,'2024-09-23 00:00:00',1450000.00,1,24,25),(26,'2024-08-23 00:00:00',1450000.00,1,25,26),(27,'2024-08-23 00:00:00',1800000.00,1,26,27),(28,'2024-08-23 00:00:00',2050000.00,1,27,28),(29,'2024-06-23 00:00:00',4950000.00,1,28,29),(30,'2024-06-23 00:00:00',950000.00,1,29,30),(31,'2024-05-23 00:00:00',950000.00,1,30,31),(32,'2024-05-23 00:00:00',950000.00,1,31,32),(33,'2024-04-23 00:00:00',950000.00,1,32,33),(34,'2024-04-23 00:00:00',1300000.00,1,33,34),(35,'2024-03-23 00:00:00',1300000.00,1,34,35),(36,'2024-03-23 00:00:00',1800000.00,1,35,36),(37,'2024-02-23 00:00:00',1800000.00,1,36,37),(38,'2024-02-23 00:00:00',2550000.00,1,37,38),(39,'2024-02-23 00:00:00',650000.00,1,38,39),(40,'2024-01-23 00:00:00',650000.00,1,39,40),(41,'2024-01-23 00:00:00',1550000.00,1,40,41),(42,'2023-12-23 00:00:00',1550000.00,1,41,42),(43,'2023-12-23 00:00:00',450000.00,1,42,43),(44,'2023-12-23 00:00:00',350000.00,1,43,44),(45,'2023-11-23 00:00:00',1800000.00,1,44,45),(46,'2023-11-23 00:00:00',2050000.00,1,45,46),(47,'2024-12-23 00:00:00',2050000.00,1,46,47),(48,'2024-12-23 00:00:00',2050000.00,2,47,48),(49,'2024-12-23 00:00:00',2050000.00,3,48,49),(50,'2024-05-23 00:00:00',2050000.00,4,49,50),(51,'2024-05-23 00:00:00',2050000.00,5,50,51);
/*!40000 ALTER TABLE `Order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order_Item`
--

DROP TABLE IF EXISTS `Order_Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Order_Item` (
  `order_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `product_id` (`product_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `Order_Item_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `Product` (`product_id`),
  CONSTRAINT `Order_Item_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `Order` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order_Item`
--

LOCK TABLES `Order_Item` WRITE;
/*!40000 ALTER TABLE `Order_Item` DISABLE KEYS */;
INSERT INTO `Order_Item` VALUES (10,5,NULL,NULL),(11,5,1,1),(12,5,1,10),(13,5,1,11),(14,5,1,12),(15,5,1,13),(16,5,1,14),(17,5,4,15),(18,5,4,16),(19,5,6,17),(20,5,7,18),(21,5,7,19),(22,5,8,20),(23,5,9,21),(24,5,10,22),(25,5,11,23),(26,5,12,24),(27,5,13,25),(28,5,13,26),(29,5,14,27),(30,5,15,28),(31,5,1,29),(32,5,4,30),(33,5,4,31),(34,5,5,32),(35,5,5,33),(36,5,6,34),(37,5,6,35),(38,5,7,36),(39,5,7,37),(40,5,8,38),(41,5,9,39),(42,5,9,40),(43,5,10,41),(44,5,10,42),(45,5,11,43),(46,5,12,44),(47,5,14,45),(48,5,15,46),(49,5,15,47),(50,5,15,48),(51,5,15,49),(52,5,15,50),(53,5,15,51),(56,1,1,54),(57,2,4,54);
/*!40000 ALTER TABLE `Order_Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order_Voucher`
--

DROP TABLE IF EXISTS `Order_Voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Order_Voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `voucher_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_voucher_id`),
  KEY `order_id` (`order_id`),
  KEY `voucher_id` (`voucher_id`),
  CONSTRAINT `Order_Voucher_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `Order` (`order_id`),
  CONSTRAINT `Order_Voucher_ibfk_2` FOREIGN KEY (`voucher_id`) REFERENCES `Voucher` (`voucher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order_Voucher`
--

LOCK TABLES `Order_Voucher` WRITE;
/*!40000 ALTER TABLE `Order_Voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `Order_Voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `category_id` (`category_id`),
  KEY `store_id` (`store_id`),
  CONSTRAINT `Product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `Category` (`category_id`),
  CONSTRAINT `Product_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `Store` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES (1,'KAPPA Women\'s Sneakers','Comfortable sneakers',980000.00,4,36,'yellow',1,1),(4,'Cool Shirt','Comfortable shirt',180000.00,3,56,'white',2,1),(5,'Cool Shirt','Comfortable shirt',180000.00,5,56,'white',2,1),(6,'Elegant Dress','Stylish evening dress',250000.00,8,38,'red',3,1),(7,'Running Shoes','Durable running shoes',350000.00,15,42,'blue',1,1),(8,'Leather Jacket','High-quality leather jacket',500000.00,4,48,'black',2,1),(9,'Casual T-Shirt','Breathable cotton t-shirt',120000.00,20,40,'green',2,1),(10,'Slim Fit Jeans','Stretchable slim fit jeans',300000.00,10,36,'dark blue',3,1),(11,'Wool Scarf','Soft wool scarf',80000.00,25,NULL,'grey',4,1),(12,'Baseball Cap','Adjustable cap',60000.00,30,NULL,'black',4,1),(13,'Formal Pants','Comfortable formal wear',280000.00,12,34,'brown',3,1),(14,'Sneakers','Stylish casual sneakers',350000.00,18,43,'white',1,1),(15,'Denim Jacket','Trendy denim jacket',400000.00,7,46,'light blue',2,1);
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Shipment`
--

DROP TABLE IF EXISTS `Shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Shipment` (
  `shipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipment_date` datetime DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `zip_code` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`shipment_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `Shipment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Shipment`
--

LOCK TABLES `Shipment` WRITE;
/*!40000 ALTER TABLE `Shipment` DISABLE KEYS */;
INSERT INTO `Shipment` VALUES (1,'2024-12-23 15:52:39','Ba Bể','Bắc Kạn','Vietnam','26000',1),(11,'2024-12-23 16:18:15','Ba Bể','Bắc Kạn','Vietnam','26000',1),(12,'2024-12-23 16:18:34','Ba Bể','Bắc Kạn','Vietnam','26000',1),(13,'2024-12-23 16:18:45','Ba Bể','Bắc Kạn','Vietnam','26000',1),(14,'2024-11-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(15,'2024-11-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(16,'2024-11-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(17,'2024-11-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(18,'2024-11-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(19,'2024-10-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(20,'2024-10-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(21,'2024-10-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(22,'2024-09-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(23,'2024-09-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(24,'2024-09-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(25,'2024-09-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(26,'2024-08-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(27,'2024-08-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(28,'2024-08-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(29,'2024-06-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(30,'2024-06-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(31,'2024-05-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(32,'2024-05-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(33,'2024-04-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(34,'2024-04-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(35,'2024-03-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(36,'2024-03-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(37,'2024-02-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(38,'2024-02-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(39,'2024-02-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(40,'2024-01-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(41,'2024-01-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(42,'2023-12-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(43,'2023-12-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(44,'2023-12-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(45,'2023-11-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(46,'2023-11-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(47,'2024-12-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',1),(48,'2024-12-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',2),(49,'2024-12-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',3),(50,'2024-05-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',4),(51,'2024-05-23 00:00:00','Ba Bể','Bắc Kạn','Vietnam','26000',5);
/*!40000 ALTER TABLE `Shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Store`
--

DROP TABLE IF EXISTS `Store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Store`
--

LOCK TABLES `Store` WRITE;
/*!40000 ALTER TABLE `Store` DISABLE KEYS */;
/*!40000 ALTER TABLE `Store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `commune` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `housing_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'assessment','gu@gmail.com','default_password','328355333','Bắc Kạn','Ba Bể','Phúc Lộc','73 tân hoà 2','nhà riêng'),(2,'nghia2','nghia2@gmail.com','12345','328355334','Bắc Kạn','Ba Bể','Phúc Lộc','73 tân hoà 2','nhà riêng'),(3,'nghia3','nghia3@gmail.com','12345','328355334','Bắc Kạn','Ba Bể','Phúc Lộc','73 tân hoà 2','nhà riêng'),(4,'nghia4','nghia4@gmail.com','12345','328355334','Bắc Kạn','Ba Bể','Phúc Lộc','73 tân hoà 2','nhà riêng'),(5,'nghia5','nghia5@gmail.com','12345','328355334','Bắc Kạn','Ba Bể','Phúc Lộc','73 tân hoà 2','nhà riêng');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Voucher`
--

DROP TABLE IF EXISTS `Voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`voucher_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `Voucher_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Voucher`
--

LOCK TABLES `Voucher` WRITE;
/*!40000 ALTER TABLE `Voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `Voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-12-23 12:41:57.766169'),(2,'auth','0001_initial','2024-12-23 12:41:57.899136'),(3,'admin','0001_initial','2024-12-23 12:41:57.926943'),(4,'admin','0002_logentry_remove_auto_add','2024-12-23 12:41:57.933820'),(5,'admin','0003_logentry_add_action_flag_choices','2024-12-23 12:41:57.939247'),(6,'contenttypes','0002_remove_content_type_name','2024-12-23 12:41:57.965595'),(7,'auth','0002_alter_permission_name_max_length','2024-12-23 12:41:57.983030'),(8,'auth','0003_alter_user_email_max_length','2024-12-23 12:41:57.994050'),(9,'auth','0004_alter_user_username_opts','2024-12-23 12:41:58.001820'),(10,'auth','0005_alter_user_last_login_null','2024-12-23 12:41:58.017568'),(11,'auth','0006_require_contenttypes_0002','2024-12-23 12:41:58.018586'),(12,'auth','0007_alter_validators_add_error_messages','2024-12-23 12:41:58.023050'),(13,'auth','0008_alter_user_username_max_length','2024-12-23 12:41:58.034389'),(14,'auth','0009_alter_user_last_name_max_length','2024-12-23 12:41:58.044887'),(15,'auth','0010_alter_group_name_max_length','2024-12-23 12:41:58.056128'),(16,'auth','0011_update_proxy_permissions','2024-12-23 12:41:58.061209'),(17,'auth','0012_alter_user_first_name_max_length','2024-12-23 12:41:58.074156'),(18,'sessions','0001_initial','2024-12-23 12:41:58.086353');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'geekup'
--
/*!50003 DROP PROCEDURE IF EXISTS `BuyProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BuyProduct`()
BEGIN
    DECLARE u_id INT;
    DECLARE p_id INT;
    DECLARE f_id INT;
    DECLARE s_id INT;
    DECLARE p_price DECIMAL(10,2);
    DECLARE p_quantity INT;
    DECLARE total_price DECIMAL(10,2);
    DECLARE oi_id INT;
    DECLARE o_id INT;
    DECLARE last_month_date DATE;
    -- SET last_month_date = DATE_SUB(CURDATE(), INTERVAL 13 MONTH);
    SET last_month_date = NOW();

    -- Set initial values for user and product
    SET u_id = 1;
    SET p_id = 15;

    -- Retrieve the product price
    SELECT price INTO p_price
    FROM Product
    WHERE product_id = p_id;

    -- Insert Order_Item 
    INSERT INTO Order_Item (quantity, product_id) VALUES (5, p_id);
    SET oi_id = LAST_INSERT_ID();

    SELECT quantity INTO p_quantity
    FROM Order_Item
    WHERE order_item_id = LAST_INSERT_ID();

    INSERT INTO Shipment 
    VALUES (NULL, last_month_date, 'Ba Bể', 'Bắc Kạn', 'Vietnam', 26000, u_id);
    SET s_id = LAST_INSERT_ID();
     

    -- Insert Fee and get the fee ID
    INSERT INTO Fee VALUES (null, last_month_date, 'CreditCard', 50000, u_id); 
    SET f_id = LAST_INSERT_ID();

    -- Calculate total price for the Order
    SET total_price = p_price * p_quantity + 50000;

    -- Insert Order 
    INSERT INTO `Order` VALUES (null, last_month_date, total_price, u_id, f_id, s_id);
    SET o_id = LAST_INSERT_ID();

    -- Update Order_Item
    UPDATE Order_Item
    SET order_id = o_id
    WHERE order_item_id = oi_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuyProduct2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BuyProduct2`()
BEGIN
    DECLARE u_id INT;
    DECLARE p_id INT;
    DECLARE f_id INT;
    DECLARE s_id INT;
    DECLARE p_price DECIMAL(10,2);
    DECLARE p_quantity INT;
    DECLARE total_price DECIMAL(10,2);
    DECLARE oi_id INT;
    DECLARE o_id INT;
    DECLARE last_month_date DATE;
    -- SET last_month_date = DATE_SUB(CURDATE(), INTERVAL 13 MONTH);
    SET last_month_date = NOW();

    -- Set initial values for user and product
    SET u_id = 2;
    SET p_id = 15;

    -- Retrieve the product price
    SELECT price INTO p_price
    FROM Product
    WHERE product_id = p_id;

    -- Insert Order_Item 
    INSERT INTO Order_Item (quantity, product_id) VALUES (5, p_id);
    SET oi_id = LAST_INSERT_ID();

    SELECT quantity INTO p_quantity
    FROM Order_Item
    WHERE order_item_id = LAST_INSERT_ID();

    INSERT INTO Shipment 
    VALUES (NULL, last_month_date, 'Ba Bể', 'Bắc Kạn', 'Vietnam', 26000, u_id);
    SET s_id = LAST_INSERT_ID();
     

    -- Insert Fee and get the fee ID
    INSERT INTO Fee VALUES (null, last_month_date, 'CreditCard', 50000, u_id); 
    SET f_id = LAST_INSERT_ID();

    -- Calculate total price for the Order
    SET total_price = p_price * p_quantity + 50000;

    -- Insert Order 
    INSERT INTO `Order` VALUES (null, last_month_date, total_price, u_id, f_id, s_id);
    SET o_id = LAST_INSERT_ID();

    -- Update Order_Item
    UPDATE Order_Item
    SET order_id = o_id
    WHERE order_item_id = oi_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuyProduct3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BuyProduct3`()
BEGIN
    DECLARE u_id INT;
    DECLARE p_id INT;
    DECLARE f_id INT;
    DECLARE s_id INT;
    DECLARE p_price DECIMAL(10,2);
    DECLARE p_quantity INT;
    DECLARE total_price DECIMAL(10,2);
    DECLARE oi_id INT;
    DECLARE o_id INT;
    DECLARE last_month_date DATE;
    -- SET last_month_date = DATE_SUB(CURDATE(), INTERVAL 13 MONTH);
    SET last_month_date = NOW();

    -- Set initial values for user and product
    SET u_id = 3;
    SET p_id = 15;

    -- Retrieve the product price
    SELECT price INTO p_price
    FROM Product
    WHERE product_id = p_id;

    -- Insert Order_Item 
    INSERT INTO Order_Item (quantity, product_id) VALUES (5, p_id);
    SET oi_id = LAST_INSERT_ID();

    SELECT quantity INTO p_quantity
    FROM Order_Item
    WHERE order_item_id = LAST_INSERT_ID();

    INSERT INTO Shipment 
    VALUES (NULL, last_month_date, 'Ba Bể', 'Bắc Kạn', 'Vietnam', 26000, u_id);
    SET s_id = LAST_INSERT_ID();
     

    -- Insert Fee and get the fee ID
    INSERT INTO Fee VALUES (null, last_month_date, 'CreditCard', 50000, u_id); 
    SET f_id = LAST_INSERT_ID();

    -- Calculate total price for the Order
    SET total_price = p_price * p_quantity + 50000;

    -- Insert Order 
    INSERT INTO `Order` VALUES (null, last_month_date, total_price, u_id, f_id, s_id);
    SET o_id = LAST_INSERT_ID();

    -- Update Order_Item
    UPDATE Order_Item
    SET order_id = o_id
    WHERE order_item_id = oi_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuyProduct4` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BuyProduct4`()
BEGIN
    DECLARE u_id INT;
    DECLARE p_id INT;
    DECLARE f_id INT;
    DECLARE s_id INT;
    DECLARE p_price DECIMAL(10,2);
    DECLARE p_quantity INT;
    DECLARE total_price DECIMAL(10,2);
    DECLARE oi_id INT;
    DECLARE o_id INT;
    DECLARE last_month_date DATE;
    SET last_month_date = DATE_SUB(CURDATE(), INTERVAL 7 MONTH);
    -- SET last_month_date = NOW();

    -- Set initial values for user and product
    SET u_id = 4;
    SET p_id = 15;

    -- Retrieve the product price
    SELECT price INTO p_price
    FROM Product
    WHERE product_id = p_id;

    -- Insert Order_Item 
    INSERT INTO Order_Item (quantity, product_id) VALUES (5, p_id);
    SET oi_id = LAST_INSERT_ID();

    SELECT quantity INTO p_quantity
    FROM Order_Item
    WHERE order_item_id = LAST_INSERT_ID();

    INSERT INTO Shipment 
    VALUES (NULL, last_month_date, 'Ba Bể', 'Bắc Kạn', 'Vietnam', 26000, u_id);
    SET s_id = LAST_INSERT_ID();
     

    -- Insert Fee and get the fee ID
    INSERT INTO Fee VALUES (null, last_month_date, 'CreditCard', 50000, u_id); 
    SET f_id = LAST_INSERT_ID();

    -- Calculate total price for the Order
    SET total_price = p_price * p_quantity + 50000;

    -- Insert Order 
    INSERT INTO `Order` VALUES (null, last_month_date, total_price, u_id, f_id, s_id);
    SET o_id = LAST_INSERT_ID();

    -- Update Order_Item
    UPDATE Order_Item
    SET order_id = o_id
    WHERE order_item_id = oi_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuyProduct5` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BuyProduct5`()
BEGIN
    DECLARE u_id INT;
    DECLARE p_id INT;
    DECLARE f_id INT;
    DECLARE s_id INT;
    DECLARE p_price DECIMAL(10,2);
    DECLARE p_quantity INT;
    DECLARE total_price DECIMAL(10,2);
    DECLARE oi_id INT;
    DECLARE o_id INT;
    DECLARE last_month_date DATE;
    SET last_month_date = DATE_SUB(CURDATE(), INTERVAL 7 MONTH);
    -- SET last_month_date = NOW();

    -- Set initial values for user and product
    SET u_id = 5;
    SET p_id = 15;

    -- Retrieve the product price
    SELECT price INTO p_price
    FROM Product
    WHERE product_id = p_id;

    -- Insert Order_Item 
    INSERT INTO Order_Item (quantity, product_id) VALUES (5, p_id);
    SET oi_id = LAST_INSERT_ID();

    SELECT quantity INTO p_quantity
    FROM Order_Item
    WHERE order_item_id = LAST_INSERT_ID();

    INSERT INTO Shipment 
    VALUES (NULL, last_month_date, 'Ba Bể', 'Bắc Kạn', 'Vietnam', 26000, u_id);
    SET s_id = LAST_INSERT_ID();
     

    -- Insert Fee and get the fee ID
    INSERT INTO Fee VALUES (null, last_month_date, 'CreditCard', 50000, u_id); 
    SET f_id = LAST_INSERT_ID();

    -- Calculate total price for the Order
    SET total_price = p_price * p_quantity + 50000;

    -- Insert Order 
    INSERT INTO `Order` VALUES (null, last_month_date, total_price, u_id, f_id, s_id);
    SET o_id = LAST_INSERT_ID();

    -- Update Order_Item
    UPDATE Order_Item
    SET order_id = o_id
    WHERE order_item_id = oi_id;
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

-- Dump completed on 2024-12-24 10:44:19
