-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: pharmacy
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `category_msbs`
--

DROP TABLE IF EXISTS `category_msbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_msbs` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category_status` enum('Enable','Disable') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category_datetime` datetime NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_msbs`
--

LOCK TABLES `category_msbs` WRITE;
/*!40000 ALTER TABLE `category_msbs` DISABLE KEYS */;
INSERT INTO `category_msbs` VALUES (1,'Category1','Enable','2022-06-24 10:58:23'),(2,'Pain','Enable','2022-06-26 23:10:12');
/*!40000 ALTER TABLE `category_msbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_rack_msbs`
--

DROP TABLE IF EXISTS `location_rack_msbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location_rack_msbs` (
  `location_rack_id` int NOT NULL AUTO_INCREMENT,
  `location_rack_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `location_rack_status` enum('Enable','Disable') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `location_rack_datetime` datetime NOT NULL,
  PRIMARY KEY (`location_rack_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_rack_msbs`
--

LOCK TABLES `location_rack_msbs` WRITE;
/*!40000 ALTER TABLE `location_rack_msbs` DISABLE KEYS */;
INSERT INTO `location_rack_msbs` VALUES (1,'Rack Number 1','Enable','2022-06-26 23:10:30');
/*!40000 ALTER TABLE `location_rack_msbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine_manufacuter_company_msbs`
--

DROP TABLE IF EXISTS `medicine_manufacuter_company_msbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine_manufacuter_company_msbs` (
  `medicine_manufacuter_company_id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `company_short_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `company_status` enum('Enable','Disable') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `company_added_datetime` datetime NOT NULL,
  `company_updated_datetime` datetime NOT NULL,
  PRIMARY KEY (`medicine_manufacuter_company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine_manufacuter_company_msbs`
--

LOCK TABLES `medicine_manufacuter_company_msbs` WRITE;
/*!40000 ALTER TABLE `medicine_manufacuter_company_msbs` DISABLE KEYS */;
INSERT INTO `medicine_manufacuter_company_msbs` VALUES (1,'Cipla','CPL','Enable','2022-06-26 23:10:45','2022-06-26 23:10:45');
/*!40000 ALTER TABLE `medicine_manufacuter_company_msbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine_msbs`
--

DROP TABLE IF EXISTS `medicine_msbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine_msbs` (
  `medicine_id` int NOT NULL AUTO_INCREMENT,
  `medicine_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `medicine_pack_qty` int NOT NULL,
  `medicine_manufactured_by` int NOT NULL,
  `medicine_category` int NOT NULL,
  `medicine_available_quantity` int NOT NULL,
  `medicine_location_rack` int NOT NULL,
  `medicine_status` enum('Enable','Disable') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `medicine_add_datetime` datetime NOT NULL,
  `medicine_update_datetime` datetime NOT NULL,
  PRIMARY KEY (`medicine_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine_msbs`
--

LOCK TABLES `medicine_msbs` WRITE;
/*!40000 ALTER TABLE `medicine_msbs` DISABLE KEYS */;
INSERT INTO `medicine_msbs` VALUES (1,'Crocin',10,1,2,1358,1,'Enable','2022-06-26 23:12:02','2022-06-26 23:12:02'),(2,'Dolo',20,1,2,35,1,'Enable','2022-06-26 23:16:27','2022-06-26 23:16:27');
/*!40000 ALTER TABLE `medicine_msbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine_purchase_msbs`
--

DROP TABLE IF EXISTS `medicine_purchase_msbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine_purchase_msbs` (
  `medicine_purchase_id` int NOT NULL AUTO_INCREMENT,
  `medicine_id` int NOT NULL,
  `supplier_id` int NOT NULL,
  `medicine_batch_no` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `medicine_purchase_qty` int NOT NULL,
  `available_quantity` int NOT NULL,
  `medicine_purchase_price_per_unit` decimal(12,2) NOT NULL,
  `medicine_purchase_total_cost` decimal(12,2) NOT NULL,
  `medicine_manufacture_month` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `medicine_manufacture_year` int NOT NULL,
  `medicine_expired_month` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `medicine_expired_year` int NOT NULL,
  `medicine_sale_price_per_unit` decimal(12,2) NOT NULL,
  `medicine_purchase_enter_by` int NOT NULL,
  `medicine_purchase_datetime` datetime NOT NULL,
  `medicine_purchase_status` enum('Enable','Disable') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `medicine_whole_sale_price_per_unit` decimal(12,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`medicine_purchase_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine_purchase_msbs`
--

LOCK TABLES `medicine_purchase_msbs` WRITE;
/*!40000 ALTER TABLE `medicine_purchase_msbs` DISABLE KEYS */;
INSERT INTO `medicine_purchase_msbs` VALUES (3,1,2,'2525252',200,185,150.00,30000.00,'01',2022,'01',2024,160.00,1,'2022-07-06 19:17:57','Enable',140.00),(4,2,2,'4141414',20,-5,200.00,4000.00,'02',2022,'03',2025,250.00,1,'2022-07-10 22:43:03','Enable',180.00);
/*!40000 ALTER TABLE `medicine_purchase_msbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item_msbs`
--

DROP TABLE IF EXISTS `order_item_msbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item_msbs` (
  `order_item_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `medicine_id` int NOT NULL,
  `medicine_purchase_id` int NOT NULL,
  `medicine_quantity` int NOT NULL,
  `medicine_price` decimal(12,2) NOT NULL,
  PRIMARY KEY (`order_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item_msbs`
--

LOCK TABLES `order_item_msbs` WRITE;
/*!40000 ALTER TABLE `order_item_msbs` DISABLE KEYS */;
INSERT INTO `order_item_msbs` VALUES (8,0,1,3,1,160.00),(11,9,1,3,1,160.00),(12,10,1,3,1,160.00),(13,0,1,3,2,160.00),(14,0,2,4,10,250.00),(15,11,1,3,10,160.00),(16,11,2,4,15,250.00);
/*!40000 ALTER TABLE `order_item_msbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_msbs`
--

DROP TABLE IF EXISTS `order_msbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_msbs` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `patient_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `doctor_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order_total_amount` decimal(12,2) NOT NULL,
  `order_created_by` int NOT NULL,
  `order_status` enum('Enable','Disable') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order_added_on` datetime NOT NULL,
  `order_updated_on` datetime NOT NULL,
  `order_type` enum('Whole','Retail') COLLATE utf8_unicode_ci DEFAULT 'Retail',
  `discount_given` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_msbs`
--

LOCK TABLES `order_msbs` WRITE;
/*!40000 ALTER TABLE `order_msbs` DISABLE KEYS */;
INSERT INTO `order_msbs` VALUES (9,'Durgesh Kumar Tiwari','Shruti Dixit',217.12,1,'Enable','2022-07-10 22:00:47','2022-07-10 22:43:46','Retail',15.00),(10,'Whole','Test',211.46,1,'Enable','2022-07-10 22:08:23','2022-07-10 22:42:07','Whole',12.00),(11,'Roshni Tiwari','Vandna',6628.65,1,'Enable','2022-07-10 22:45:49','2022-07-10 22:46:12','Retail',5.00);
/*!40000 ALTER TABLE `order_msbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_msbs`
--

DROP TABLE IF EXISTS `store_msbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_msbs` (
  `store_id` int NOT NULL AUTO_INCREMENT,
  `store_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `store_address` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `store_contact_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `store_email_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `store_timezone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `store_currency` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `store_added_on` datetime NOT NULL,
  `store_updated_on` datetime NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_msbs`
--

LOCK TABLES `store_msbs` WRITE;
/*!40000 ALTER TABLE `store_msbs` DISABLE KEYS */;
INSERT INTO `store_msbs` VALUES (1,'HarshShop','gomti nagar','8896163869','harsh@gmail.com','Asia/Calcutta','INR','2022-06-24 07:27:19','2022-07-06 23:22:59');
/*!40000 ALTER TABLE `store_msbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_msbs`
--

DROP TABLE IF EXISTS `supplier_msbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier_msbs` (
  `supplier_id` int NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `supplier_address` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `supplier_contact_no` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `supplier_email` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `supplier_status` enum('Enable','Disable') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `supplier_datetime` datetime NOT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_msbs`
--

LOCK TABLES `supplier_msbs` WRITE;
/*!40000 ALTER TABLE `supplier_msbs` DISABLE KEYS */;
INSERT INTO `supplier_msbs` VALUES (1,'John','Gomti Nagar','8896163869','abc@gmail.com','Enable','2022-06-26 23:11:12'),(2,'Shruti','Vns','8896163869','shruti@gmail.com','Enable','2022-07-06 19:08:27');
/*!40000 ALTER TABLE `supplier_msbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_msbs`
--

DROP TABLE IF EXISTS `user_msbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_msbs` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_type` enum('Master','User') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_status` enum('Enable','Disable') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_created_on` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_msbs`
--

LOCK TABLES `user_msbs` WRITE;
/*!40000 ALTER TABLE `user_msbs` DISABLE KEYS */;
INSERT INTO `user_msbs` VALUES (1,'durgesh','durgesh@gmail.com','durgesh','Master','Enable','2022-06-24 07:26:29');
/*!40000 ALTER TABLE `user_msbs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-04 16:19:03
