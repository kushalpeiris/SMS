-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sms
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designation`
--

DROP TABLE IF EXISTS `designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `designation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designation`
--

LOCK TABLES `designation` WRITE;
/*!40000 ALTER TABLE `designation` DISABLE KEYS */;
INSERT INTO `designation` VALUES (1,'Management Assistant'),(2,'Department Cleark'),(3,'Court Clerk');
/*!40000 ALTER TABLE `designation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `id` varchar(12) NOT NULL,
  `title_id` int(11) NOT NULL,
  `initials` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `full_name` varchar(191) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `nic` varchar(15) DEFAULT NULL,
  `gender_id` int(11) NOT NULL,
  `marital_status_id` int(11) NOT NULL,
  `address` varchar(191) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `land` varchar(15) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `designation_id` int(11) NOT NULL,
  `date_of_join` date DEFAULT NULL,
  `img_url` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `users_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_employee_title_idx` (`title_id`),
  KEY `fk_employee_gender1_idx` (`gender_id`),
  KEY `fk_employee_marital_status1_idx` (`marital_status_id`),
  KEY `fk_employee_designation1_idx` (`designation_id`),
  KEY `fk_employee_users1_idx` (`users_id`),
  CONSTRAINT `fk_employee_designation1` FOREIGN KEY (`designation_id`) REFERENCES `designation` (`id`),
  CONSTRAINT `fk_employee_gender1` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`),
  CONSTRAINT `fk_employee_marital_status1` FOREIGN KEY (`marital_status_id`) REFERENCES `marital_status` (`id`),
  CONSTRAINT `fk_employee_title` FOREIGN KEY (`title_id`) REFERENCES `title` (`id`),
  CONSTRAINT `fk_employee_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('19912298',1,'Z.H.N.','Pollich','Carolina Jakubowski','1989-01-08','222846137V',1,1,'2691 Rippin Circles Apt. 032\r\nDoylemouth, MS 32055-5480','0772687445','0772493760','wisozk.margarete@example.net',1,'1984-04-03','img/users\\19912298.png','2018-07-31 03:18:45','2018-09-17 01:47:38',NULL,6),('19937694',1,'S.K.T.','Hane','Rex Wolf','1983-03-06','621853298V',1,2,'6323 Elbert Land\nNew Judyfort, OK 01602-4506','0789060329','0785118815','schaefer.harley@example.org',2,'2006-04-11','/img/users/19937694.jpg','2018-07-31 03:18:45','2018-07-31 04:01:05',NULL,9),('19944076',1,'D.E.Z.','Rowe','Maybell Purdy','2016-07-14','495171440V',1,1,'4006 Kenyon Fort Apt. 315\nPadbergtown, NV 61264','0719607747','0748430989','cartwright.johnathan@example.com',2,'2010-01-14','/img/users/19944076.jpg','2018-07-31 03:18:45','2018-07-31 03:37:15',NULL,7),('19960234',2,'X.Q.G.','Labadie','Tessie O\'Kon','2002-10-01','329291449V',1,2,'346 Bergnaum Prairie Apt. 054\nJoshuaside, MS 26459-3471','0786060926','0731709255','stoltenberg.dorothy@example.net',2,'1972-04-08','/img/users/19960234.jpg','2018-07-31 03:18:45','2018-07-31 03:18:45',NULL,NULL),('19969156',2,'M.W.P.','Marks','Gregory Paucek','2003-02-08','402398003V',2,2,'8901 Frami Mountain\nNorth Colemanside, RI 52138','0719114040','0733814019','ufriesen@example.com',2,'1976-10-21','/img/users/19969156.jpg','2018-07-31 03:18:45','2018-07-31 03:18:45',NULL,NULL),('19977154',1,'U.E.Q.','Miller','Mandy Schimmel','1975-08-28','241238064V',2,2,'880 Christop Springs Suite 253\nPort Kenton, GA 13376','0743175184','0742317436','gschroeder@example.org',1,'1999-12-10','/img/users/19977154.jpg','2018-07-31 03:18:45','2018-07-31 03:18:45',NULL,NULL),('19989232',1,'U.F.B.','Reichel','Miss Yazmin Corwin','2003-05-03','966606987V',1,1,'315 Shemar Oval Suite 502\nSouth Nathanieltown, KY 52501','0742876790','0742652723','graham.henri@example.org',2,'1985-01-04','/img/users/19989232.jpg','2018-07-31 03:18:45','2018-07-31 03:18:45',NULL,NULL),('20036792',2,'I.L.X.','Pagac','Durward Goldner','1998-05-10','944688585V',1,1,'51227 Brakus Cove Suite 110\nVernicechester, KY 65413','0731928439','0748631456','gerhold.giovanni@example.org',1,'1987-05-17','/img/users/20036792.jpg','2018-07-31 03:18:45','2018-07-31 03:18:45',NULL,NULL),('20089314',1,'W.S.Y.','Nolan','Devin Raynor','2002-04-23','271402994V',2,1,'60451 Jayden Road Suite 027\nLeannonton, NJ 22161-1449','0772192111','0784650336','waino51@example.org',1,'1985-05-30','/img/users/20089314.jpg','2018-07-31 03:18:45','2018-07-31 03:18:45',NULL,NULL),('20103180',1,'E.S.B.','Kuhlman','Alex Waters','1987-05-21','939832899V',1,2,'9419 Edmund Orchard\nSchadenborough, NC 41496','0734644639','0748415798','xhauck@example.org',1,'1991-07-18','/img/users/20103180.jpg','2018-07-31 03:18:45','2018-07-31 03:42:09',NULL,8),('20109647',2,'S.L.B.','Beatty','Kaya Boyer','1971-05-29','801920572V',1,2,'3439 Narciso Dam Apt. 786\nKenyattashire, FL 43979-3786','0725366210','0726958550','umueller@example.com',3,'1991-12-30','/img/users/20109647.jpg','2018-07-31 03:18:45','2018-07-31 03:18:45',NULL,NULL),('20115643',2,'A.X.D.','Kreiger','Mr. Salvatore McLaughlin','1972-03-28','725775824V',2,1,'258 Tiana Isle Suite 892\nWeissnatland, SC 94387-3750','0789574381','0715066460','hgrant@example.org',1,'1998-07-03','/img/users/20115643.jpg','2018-07-31 03:18:45','2018-07-31 03:18:45',NULL,NULL),('20128063',2,'N.P.Z.','Veum','Katelyn Marks','2001-07-11','517333984V',2,2,'28280 Hildegard Ford\nCecilview, AK 01836-2646','0759972601','0744101833','stamm.joey@example.com',2,'1997-09-30','/img/users/20128063.jpg','2018-07-31 03:18:45','2018-07-31 03:18:45',NULL,NULL),('20135155',2,'I.G.G.','Nienow','Stephan Kirlin DDS','1998-08-06','652994791V',2,2,'567 Quigley Dam\nLake Nigelmouth, MD 49425','0745743272','0775161132','mae.schroeder@example.org',1,'1999-03-02','/img/users/20135155.jpg','2018-07-31 03:18:45','2018-07-31 03:18:45',NULL,NULL),('20168892',2,'G.A.I.','Paucek','Dr. Easter Sporer II','1993-05-31','845920138V',1,1,'6349 McKenzie Landing Apt. 459\nSimonisview, MO 69199','0746873914','0754989691','sanderson@example.com',3,'2000-03-14','/img/users/20168892.jpg','2018-07-31 03:18:45','2018-07-31 03:18:45',NULL,NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `gender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (1,'Male'),(2,'Female');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marital_status`
--

DROP TABLE IF EXISTS `marital_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `marital_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marital_status`
--

LOCK TABLES `marital_status` WRITE;
/*!40000 ALTER TABLE `marital_status` DISABLE KEYS */;
INSERT INTO `marital_status` VALUES (1,'Married'),(2,'Not Married');
/*!40000 ALTER TABLE `marital_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES (1,'User'),(2,'Role'),(3,'Employee');
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_has_permissions`
--

DROP TABLE IF EXISTS `module_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `module_has_permissions` (
  `module_id` int(11) NOT NULL,
  `permissions_id` int(11) NOT NULL,
  PRIMARY KEY (`module_id`,`permissions_id`),
  KEY `fk_module_has_permissions_permissions1_idx` (`permissions_id`),
  KEY `fk_module_has_permissions_module1_idx` (`module_id`),
  CONSTRAINT `fk_module_has_permissions_module1` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`),
  CONSTRAINT `fk_module_has_permissions_permissions1` FOREIGN KEY (`permissions_id`) REFERENCES `permissions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_has_permissions`
--

LOCK TABLES `module_has_permissions` WRITE;
/*!40000 ALTER TABLE `module_has_permissions` DISABLE KEYS */;
INSERT INTO `module_has_permissions` VALUES (1,1),(2,1),(3,1),(1,2),(2,2),(3,2),(1,3),(2,3),(3,3),(1,4),(2,4),(3,4);
/*!40000 ALTER TABLE `module_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'Create'),(2,'View'),(3,'Edit'),(4,'Delete');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privileges`
--

DROP TABLE IF EXISTS `privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `privileges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_privileges_role1_idx` (`role_id`),
  KEY `fk_privileges_module1_idx` (`module_id`),
  CONSTRAINT `fk_privileges_module1` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_privileges_role1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privileges`
--

LOCK TABLES `privileges` WRITE;
/*!40000 ALTER TABLE `privileges` DISABLE KEYS */;
INSERT INTO `privileges` VALUES (1,1,1),(3,1,3),(8,1,2);
/*!40000 ALTER TABLE `privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privileges_has_permissions`
--

DROP TABLE IF EXISTS `privileges_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `privileges_has_permissions` (
  `privileges_id` int(11) NOT NULL,
  `permissions_id` int(11) NOT NULL,
  PRIMARY KEY (`privileges_id`,`permissions_id`),
  KEY `fk_privileges_has_permissions_permissions1_idx` (`permissions_id`),
  KEY `fk_privileges_has_permissions_privileges1_idx` (`privileges_id`),
  CONSTRAINT `fk_privileges_has_permissions_permissions1` FOREIGN KEY (`permissions_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_privileges_has_permissions_privileges1` FOREIGN KEY (`privileges_id`) REFERENCES `privileges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privileges_has_permissions`
--

LOCK TABLES `privileges_has_permissions` WRITE;
/*!40000 ALTER TABLE `privileges_has_permissions` DISABLE KEYS */;
INSERT INTO `privileges_has_permissions` VALUES (1,1),(3,1),(8,1),(1,2),(3,2),(8,2),(1,3),(3,3),(8,3),(1,4),(8,4);
/*!40000 ALTER TABLE `privileges_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'User'),(2,'System Admin');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_stock_store_item1_idx` (`store_item_id`),
  CONSTRAINT `fk_stock_store_item1` FOREIGN KEY (`store_item_id`) REFERENCES `mydb`.`stock_item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_no` varchar(45) DEFAULT NULL,
  `reciept_no` varchar(45) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `phone_1` varchar(15) DEFAULT NULL,
  `phone_2` varchar(15) DEFAULT NULL,
  `fax_1` varchar(15) DEFAULT NULL,
  `fax_2` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `business_reg_no` varchar(45) DEFAULT NULL,
  `business_reg_date` date DEFAULT NULL,
  `vat_no` varchar(45) DEFAULT NULL,
  `nature_of_business` varchar(100) DEFAULT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'1234','1234','Sample Name','0711515161','0711515161','0711515161','0711515161','smssena1110@gmail.com','123456789','2018-09-29','123456','Nature of Business','Contact Person','Sample Sample SampleSample Sample SampleSample Sample SampleSample Sample SampleSample Sample SampleSample Sample SampleSample Sample SampleSample Sample SampleSample Sample Sample',NULL,'2018-09-18 01:00:04',NULL),(2,'sdfsdf','s','s','s','s','s','s','smssena1110@gmail.com','s','2018-09-04','s','s','s','s','2018-09-19 04:03:46','2018-09-19 04:03:46',NULL),(3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-09-19',NULL,NULL,NULL,NULL,'2018-09-19 04:25:28','2018-09-19 04:25:28',NULL);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_address`
--

DROP TABLE IF EXISTS `supplier_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `supplier_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL,
  `number` varchar(45) DEFAULT NULL,
  `street_1` varchar(45) DEFAULT NULL,
  `street_2` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_supplier_address_supplier1_idx` (`supplier_id`),
  CONSTRAINT `fk_supplier_address_supplier1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_address`
--

LOCK TABLES `supplier_address` WRITE;
/*!40000 ALTER TABLE `supplier_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_has_supplier_type`
--

DROP TABLE IF EXISTS `supplier_has_supplier_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `supplier_has_supplier_type` (
  `supplier_id` int(11) NOT NULL,
  `supplier_type_id` int(11) NOT NULL,
  PRIMARY KEY (`supplier_id`,`supplier_type_id`),
  KEY `fk_supplier_has_supplier_type_supplier_type1_idx` (`supplier_type_id`),
  KEY `fk_supplier_has_supplier_type_supplier1_idx` (`supplier_id`),
  CONSTRAINT `fk_supplier_has_supplier_type_supplier1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`),
  CONSTRAINT `fk_supplier_has_supplier_type_supplier_type1` FOREIGN KEY (`supplier_type_id`) REFERENCES `supplier_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_has_supplier_type`
--

LOCK TABLES `supplier_has_supplier_type` WRITE;
/*!40000 ALTER TABLE `supplier_has_supplier_type` DISABLE KEYS */;
INSERT INTO `supplier_has_supplier_type` VALUES (3,2),(3,3),(3,4),(3,5);
/*!40000 ALTER TABLE `supplier_has_supplier_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_type`
--

DROP TABLE IF EXISTS `supplier_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `supplier_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_type`
--

LOCK TABLES `supplier_type` WRITE;
/*!40000 ALTER TABLE `supplier_type` DISABLE KEYS */;
INSERT INTO `supplier_type` VALUES (1,'Computers'),(2,'Servers'),(3,'Wires'),(4,'Electrical'),(5,'Business Bags');
/*!40000 ALTER TABLE `supplier_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `title`
--

DROP TABLE IF EXISTS `title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `title`
--

LOCK TABLES `title` WRITE;
/*!40000 ALTER TABLE `title` DISABLE KEYS */;
INSERT INTO `title` VALUES (1,'Mr.'),(2,'Miss.'),(3,'Mrs.');
/*!40000 ALTER TABLE `title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` int(11) DEFAULT '0',
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `fk_users_role1_idx` (`role_id`),
  CONSTRAINT `fk_users_role1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (6,'sanjaya1110','test@gmail.com','$2y$10$b.ZMMw2AR3wbz0ma/QMUqeeRwldvMMyBVYMpLr1fbEucpP33cu0FW','J6qJl3nnRJsNhbT6Xf9ohDQbdRVAGWcFONqZFFUefwBEPo6kCkLlXNJXJFYc','2018-07-31 03:26:39','2018-08-16 04:25:08',1,1),(7,'admin','admin@admin.com','$2y$10$EYBDr6M9VHhGEoL0oHzu7.4LWsCGmr2CRGTb3XccyybWQFOlLTiJq','gpzYf6M8hmaRqmQV8kvevGYLMkqI5O6xRtVyV610ssvDUsqjuI1ZJi9p8yJD','2018-07-31 03:37:15','2018-07-31 03:37:15',1,1),(8,'aaaaaa','guest@guest.com','$2y$12$8UuJlhIZingm/LXFE2Vyu.RzURZ52AMukuG8a3IgpKGJdR5S832a6','PJG8Wo7UjKl2hRttpddlWc86XGlZP6drimnGuMK0R5DHetBIj7bqQZ6tSpCm','2018-07-31 03:42:09','2018-08-16 00:42:33',1,1),(9,'sanjaya1110','pra@ucsc.cmb.ac.lk','$2y$10$uThaNxU3n4OHLI0QqwV7euTzdLJUkLK/AsjXVzCNiZ8q4eMGoL2Q2',NULL,'2018-07-31 04:01:05','2018-07-31 04:01:05',1,1);
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

-- Dump completed on 2018-10-04 11:35:58
