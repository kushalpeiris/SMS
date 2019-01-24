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
-- Table structure for table `division`
--

DROP TABLE IF EXISTS `division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `division` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `head_employee_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_division_employee1_idx` (`head_employee_id`),
  CONSTRAINT `fk_division_employee1` FOREIGN KEY (`head_employee_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `division`
--

LOCK TABLES `division` WRITE;
/*!40000 ALTER TABLE `division` DISABLE KEYS */;
INSERT INTO `division` VALUES (1,'IT',19912298),(2,'Marketing',19937694),(3,'HR',19937694);
/*!40000 ALTER TABLE `division` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(12) NOT NULL,
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
  `division_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_employee_title_idx` (`title_id`),
  KEY `fk_employee_gender1_idx` (`gender_id`),
  KEY `fk_employee_marital_status1_idx` (`marital_status_id`),
  KEY `fk_employee_designation1_idx` (`designation_id`),
  KEY `fk_employee_division1_idx` (`division_id`),
  CONSTRAINT `fk_employee_designation1` FOREIGN KEY (`designation_id`) REFERENCES `designation` (`id`),
  CONSTRAINT `fk_employee_division1` FOREIGN KEY (`division_id`) REFERENCES `division` (`id`),
  CONSTRAINT `fk_employee_gender1` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`),
  CONSTRAINT `fk_employee_marital_status1` FOREIGN KEY (`marital_status_id`) REFERENCES `marital_status` (`id`),
  CONSTRAINT `fk_employee_title` FOREIGN KEY (`title_id`) REFERENCES `title` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20168893 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (19912298,'19912298',1,'Z.H.N.','Pollich','Carolina adas','1989-01-08','222846137V',1,1,'2691 Rippin Circles Apt. 032\r\nDoylemouth, MS 32055-5480','0772687445','0772493760','wisozk.margarete@example.net',1,'1984-04-03','img/users\\19912298.png','2018-07-31 03:18:45','2018-10-10 04:33:55',NULL,2),(19937694,'',1,'S.K.T.','Hane','Rex Wolf','1983-03-06','621853298V',1,2,'6323 Elbert Land\nNew Judyfort, OK 01602-4506','0789060329','0785118815','schaefer.harley@example.org',2,'2006-04-11','/img/users/19937694.jpg','2018-07-31 03:18:45','2018-07-31 04:01:05',NULL,0),(19944076,'',1,'D.E.Z.','Rowe','Maybell Purdy','2016-07-14','495171440V',1,1,'4006 Kenyon Fort Apt. 315\nPadbergtown, NV 61264','0719607747','0748430989','cartwright.johnathan@example.com',2,'2010-01-14','/img/users/19944076.jpg','2018-07-31 03:18:45','2018-07-31 03:37:15',NULL,0),(19960234,'',2,'X.Q.G.','Labadie','Tessie O\'Kon','2002-10-01','329291449V',1,2,'346 Bergnaum Prairie Apt. 054\nJoshuaside, MS 26459-3471','0786060926','0731709255','stoltenberg.dorothy@example.net',2,'1972-04-08','/img/users/19960234.jpg','2018-07-31 03:18:45','2018-07-31 03:18:45',NULL,0),(19969156,'',2,'M.W.P.','Marks','Gregory Paucek','2003-02-08','402398003V',2,2,'8901 Frami Mountain\nNorth Colemanside, RI 52138','0719114040','0733814019','ufriesen@example.com',2,'1976-10-21','/img/users/19969156.jpg','2018-07-31 03:18:45','2018-07-31 03:18:45',NULL,0),(19977154,'',1,'U.E.Q.','Miller','Mandy Schimmel','1975-08-28','241238064V',2,2,'880 Christop Springs Suite 253\nPort Kenton, GA 13376','0743175184','0742317436','gschroeder@example.org',1,'1999-12-10','/img/users/19977154.jpg','2018-07-31 03:18:45','2018-07-31 03:18:45',NULL,0),(19989232,'',1,'U.F.B.','Reichel','Miss Yazmin Corwin','2003-05-03','966606987V',1,1,'315 Shemar Oval Suite 502\nSouth Nathanieltown, KY 52501','0742876790','0742652723','graham.henri@example.org',2,'1985-01-04','/img/users/19989232.jpg','2018-07-31 03:18:45','2018-07-31 03:18:45',NULL,0),(20036792,'',2,'I.L.X.','Pagac','Durward Goldner','1998-05-10','944688585V',1,1,'51227 Brakus Cove Suite 110\nVernicechester, KY 65413','0731928439','0748631456','gerhold.giovanni@example.org',1,'1987-05-17','/img/users/20036792.jpg','2018-07-31 03:18:45','2018-07-31 03:18:45',NULL,0),(20089314,'',1,'W.S.Y.','Nolan','Devin Raynor','2002-04-23','271402994V',2,1,'60451 Jayden Road Suite 027\nLeannonton, NJ 22161-1449','0772192111','0784650336','waino51@example.org',1,'1985-05-30','/img/users/20089314.jpg','2018-07-31 03:18:45','2018-07-31 03:18:45',NULL,0),(20103180,'',1,'E.S.B.','Kuhlman','Alex Waters','1987-05-21','939832899V',1,2,'9419 Edmund Orchard\nSchadenborough, NC 41496','0734644639','0748415798','xhauck@example.org',1,'1991-07-18','/img/users/20103180.jpg','2018-07-31 03:18:45','2018-07-31 03:42:09',NULL,0),(20109647,'',2,'S.L.B.','Beatty','Kaya Boyer','1971-05-29','801920572V',1,2,'3439 Narciso Dam Apt. 786\nKenyattashire, FL 43979-3786','0725366210','0726958550','umueller@example.com',3,'1991-12-30','/img/users/20109647.jpg','2018-07-31 03:18:45','2018-07-31 03:18:45',NULL,0),(20115643,'',2,'A.X.D.','Kreiger','Mr. Salvatore McLaughlin','1972-03-28','725775824V',2,1,'258 Tiana Isle Suite 892\nWeissnatland, SC 94387-3750','0789574381','0715066460','hgrant@example.org',1,'1998-07-03','/img/users/20115643.jpg','2018-07-31 03:18:45','2018-07-31 03:18:45',NULL,0),(20128063,'',2,'N.P.Z.','Veum','Katelyn Marks','2001-07-11','517333984V',2,2,'28280 Hildegard Ford\nCecilview, AK 01836-2646','0759972601','0744101833','stamm.joey@example.com',2,'1997-09-30','/img/users/20128063.jpg','2018-07-31 03:18:45','2018-07-31 03:18:45',NULL,0),(20135155,'',2,'I.G.G.','Nienow','Stephan Kirlin DDS','1998-08-06','652994791V',2,2,'567 Quigley Dam\nLake Nigelmouth, MD 49425','0745743272','0775161132','mae.schroeder@example.org',1,'1999-03-02','/img/users/20135155.png','2018-07-31 03:18:45','2018-07-31 03:18:45',NULL,0),(20168892,'',2,'G.A.I.','Paucek','Dr. Easter Sporer II','1993-05-31','845920138V',1,1,'6349 McKenzie Landing Apt. 459\nSimonisview, MO 69199','0746873914','0754989691','sanderson@example.com',3,'2000-03-14','/img/users/20168892.jpg','2018-07-31 03:18:45','2018-07-31 03:18:45',NULL,0);
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
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_inventory_product1_idx` (`product_id`),
  KEY `fk_inventory_stock1_idx` (`stock_id`),
  CONSTRAINT `fk_inventory_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `fk_inventory_stock1` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (4,3,47,0),(5,2,48,0),(6,2,49,11),(7,3,50,0),(8,2,50,0),(9,1,50,100),(10,1,51,2),(11,3,52,0),(12,2,53,0),(13,1,53,114),(14,1,54,14),(15,3,55,100),(16,3,56,90);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
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
-- Table structure for table `nature_of_business`
--

DROP TABLE IF EXISTS `nature_of_business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nature_of_business` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nature_of_business`
--

LOCK TABLES `nature_of_business` WRITE;
/*!40000 ALTER TABLE `nature_of_business` DISABLE KEYS */;
/*!40000 ALTER TABLE `nature_of_business` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `product_sub_category_id` int(11) NOT NULL,
  `product_type_id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `product_status_id` int(11) NOT NULL,
  `product_code` varchar(45) DEFAULT NULL,
  `asset_code` varchar(255) DEFAULT NULL,
  `barcode` varchar(45) DEFAULT NULL,
  `reorder_level` int(11) DEFAULT NULL,
  `critical_reorder_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_product_sub_category1_idx` (`product_sub_category_id`),
  KEY `fk_product_product_type1_idx` (`product_type_id`),
  KEY `fk_product_product_status1_idx` (`product_status_id`),
  CONSTRAINT `fk_product_product_status1` FOREIGN KEY (`product_status_id`) REFERENCES `product_status` (`id`),
  CONSTRAINT `fk_product_product_sub_category1` FOREIGN KEY (`product_sub_category_id`) REFERENCES `product_sub_category` (`id`),
  CONSTRAINT `fk_product_product_type1` FOREIGN KEY (`product_type_id`) REFERENCES `product_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'erer',2,1,'ere','sdsd','img/products\\ere.jpg',1,NULL,'rer','erer',5,NULL),(2,'A4',1,1,'ABC123','wqewq','img/products\\ABC123.jpg',1,NULL,'weqwe','werwer',10,5),(3,'Pencil',5,1,'QWE123','awdwad','img/products\\QWE123.jpg',1,NULL,'aaa','aaa',5,100),(4,'Book',6,1,'1131','ssdsds','img/products\\1131.png',2,NULL,'515613','5115',10,5);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1,'stationary'),(2,'motor spare parts');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_issue`
--

DROP TABLE IF EXISTS `product_issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product_issue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_request_id` int(11) NOT NULL,
  `issued_at` timestamp NULL DEFAULT NULL,
  `issued_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_issue_product_request1_idx` (`product_request_id`),
  KEY `fk_product_issue_employee1_idx` (`issued_by`),
  CONSTRAINT `fk_product_issue_employee1` FOREIGN KEY (`issued_by`) REFERENCES `employee` (`id`),
  CONSTRAINT `fk_product_issue_product_request1` FOREIGN KEY (`product_request_id`) REFERENCES `product_request` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_issue`
--

LOCK TABLES `product_issue` WRITE;
/*!40000 ALTER TABLE `product_issue` DISABLE KEYS */;
INSERT INTO `product_issue` VALUES (1,6,'2018-10-25 04:00:22',19912298),(2,6,'2018-10-25 04:16:11',19912298),(3,6,'2018-10-25 04:18:26',19912298),(4,6,'2018-10-25 04:19:56',19912298),(5,6,'2018-10-25 04:20:57',19912298),(6,6,'2018-10-25 04:21:56',19912298),(7,6,'2018-10-25 04:24:37',19912298),(8,6,'2018-10-25 04:25:37',19912298),(9,6,'2018-10-25 04:26:49',19912298),(10,6,'2018-10-25 04:27:02',19912298),(11,6,'2018-10-25 04:27:30',19912298),(12,6,'2018-10-25 04:27:42',19912298),(13,6,'2018-10-25 04:28:45',19912298),(14,6,'2018-10-25 04:30:14',19912298),(15,6,'2018-10-25 04:30:52',19912298),(16,6,'2018-10-25 04:34:31',19912298),(17,6,'2018-10-25 04:35:05',19912298),(18,6,'2018-10-29 00:45:23',19912298),(19,6,'2018-10-29 04:07:48',19912298),(20,6,'2018-10-29 04:09:43',19912298),(21,6,'2018-10-29 04:31:58',19912298),(22,6,'2018-10-29 04:33:47',19912298),(23,6,'2018-10-29 04:46:47',19912298),(24,5,'2018-10-29 05:01:38',19912298),(25,5,'2018-10-29 05:01:52',19912298),(26,5,'2018-10-29 05:05:18',19912298),(27,5,'2018-10-29 05:06:59',19912298),(28,5,'2018-10-29 05:07:34',19912298),(29,5,'2018-10-29 21:55:15',19912298),(30,1,'2018-10-29 22:10:40',19912298),(31,1,'2018-10-29 22:10:56',19912298),(32,1,'2018-10-29 22:11:11',19912298),(33,1,'2018-10-29 22:57:44',19912298),(34,1,'2018-10-29 22:58:06',19912298),(35,1,'2018-10-29 22:58:18',19912298),(36,7,'2018-10-29 23:06:22',19912298);
/*!40000 ALTER TABLE `product_issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_issue_items`
--

DROP TABLE IF EXISTS `product_issue_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product_issue_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_issue_id` int(11) NOT NULL,
  `product_request_items_id` int(11) NOT NULL,
  `stock_items_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_issue_items_product_issue1_idx` (`product_issue_id`),
  KEY `fk_product_issue_items_product_request_items1_idx` (`product_request_items_id`),
  KEY `fk_product_issue_items_stock_items1_idx` (`stock_items_id`),
  CONSTRAINT `fk_product_issue_items_product_issue1` FOREIGN KEY (`product_issue_id`) REFERENCES `product_issue` (`id`),
  CONSTRAINT `fk_product_issue_items_product_request_items1` FOREIGN KEY (`product_request_items_id`) REFERENCES `product_request_items` (`id`),
  CONSTRAINT `fk_product_issue_items_stock_items1` FOREIGN KEY (`stock_items_id`) REFERENCES `stock_items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_issue_items`
--

LOCK TABLES `product_issue_items` WRITE;
/*!40000 ALTER TABLE `product_issue_items` DISABLE KEYS */;
INSERT INTO `product_issue_items` VALUES (1,6,8,NULL,0,NULL,NULL),(2,7,8,NULL,0,NULL,NULL),(3,8,8,NULL,0,NULL,NULL),(4,9,8,NULL,0,NULL,NULL),(5,10,8,NULL,0,NULL,NULL),(6,11,8,NULL,0,NULL,NULL),(7,11,9,NULL,5,NULL,NULL),(8,11,10,NULL,0,NULL,NULL),(9,12,8,NULL,0,NULL,NULL),(10,12,9,NULL,4,NULL,NULL),(11,12,10,NULL,0,NULL,NULL),(12,13,8,NULL,0,NULL,NULL),(13,13,9,NULL,0,NULL,NULL),(14,13,10,NULL,10,NULL,NULL),(15,14,8,NULL,20,NULL,NULL),(16,14,9,NULL,0,NULL,NULL),(17,15,8,NULL,2,NULL,NULL),(18,15,9,NULL,0,NULL,NULL),(19,16,8,NULL,0,NULL,NULL),(20,16,9,NULL,1,NULL,NULL),(21,17,8,NULL,3,NULL,NULL),(22,18,8,NULL,10,NULL,NULL),(23,21,8,NULL,10,1000.00,1000.00),(24,22,8,NULL,10,1000.00,1000.00),(25,23,8,NULL,30,3000.00,3000.00),(26,24,7,NULL,0,0.00,0.00),(27,25,7,NULL,0,0.00,0.00),(28,26,7,NULL,0,0.00,0.00),(29,27,7,NULL,-1,0.00,0.00),(30,28,7,NULL,-1,0.00,0.00),(31,29,7,NULL,1,100.00,100.00),(32,30,3,NULL,10,1000.00,1000.00),(33,31,2,NULL,1,100.00,100.00),(34,32,2,NULL,8,800.00,800.00),(35,33,2,NULL,1,100.00,100.00),(36,34,1,NULL,5,5000.00,500.00),(37,35,1,NULL,5,5000.00,500.00),(38,36,11,NULL,12,1200.00,1200.00);
/*!40000 ALTER TABLE `product_issue_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_issue_items_stocks`
--

DROP TABLE IF EXISTS `product_issue_items_stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product_issue_items_stocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_issue_items_id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_issue_items_stocks_product_issue_items1_idx` (`product_issue_items_id`),
  KEY `fk_product_issue_items_stocks_stock1_idx` (`stock_id`),
  CONSTRAINT `fk_product_issue_items_stocks_product_issue_items1` FOREIGN KEY (`product_issue_items_id`) REFERENCES `product_issue_items` (`id`),
  CONSTRAINT `fk_product_issue_items_stocks_stock1` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_issue_items_stocks`
--

LOCK TABLES `product_issue_items_stocks` WRITE;
/*!40000 ALTER TABLE `product_issue_items_stocks` DISABLE KEYS */;
INSERT INTO `product_issue_items_stocks` VALUES (1,7,49,2),(2,7,48,10),(3,17,47,2),(4,20,50,100),(5,21,50,100),(6,22,52,12);
/*!40000 ALTER TABLE `product_issue_items_stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_request`
--

DROP TABLE IF EXISTS `product_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_request_number` varchar(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `requested_at` timestamp NULL DEFAULT NULL,
  `requested_by` int(11) DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `confirmed_at` timestamp NULL DEFAULT NULL,
  `confirmed_by` int(11) DEFAULT NULL,
  `last_issued_at` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_request_employee1_idx` (`requested_by`),
  KEY `fk_product_request_employee2_idx` (`approved_by`),
  KEY `fk_product_request_employee3_idx` (`confirmed_by`),
  CONSTRAINT `fk_product_request_employee1` FOREIGN KEY (`requested_by`) REFERENCES `employee` (`id`),
  CONSTRAINT `fk_product_request_employee2` FOREIGN KEY (`approved_by`) REFERENCES `employee` (`id`),
  CONSTRAINT `fk_product_request_employee3` FOREIGN KEY (`confirmed_by`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_request`
--

LOCK TABLES `product_request` WRITE;
/*!40000 ALTER TABLE `product_request` DISABLE KEYS */;
INSERT INTO `product_request` VALUES (1,'RQ181023001',NULL,'2018-10-22 04:34:05',19912298,'2018-10-29 21:56:43',19912298,'2018-10-29 21:59:00',19912298,NULL,'2018-10-29 22:58:18'),(5,'RQ181023002',NULL,'2018-10-23 05:05:56',19912298,'2018-10-24 23:36:37',19912298,'2018-10-24 23:36:40',19912298,NULL,'2018-10-29 21:55:15'),(6,'RQ181025001',NULL,'2018-10-25 00:59:32',19912298,'2018-10-25 00:59:50',19912298,'2018-10-25 00:59:53',19912298,'2018-10-29 00:45:24','2018-10-29 04:46:47'),(7,'RQ181030001',NULL,'2018-10-29 23:01:46',19912298,'2018-10-29 23:01:53',19912298,'2018-10-29 23:01:57',19912298,NULL,NULL);
/*!40000 ALTER TABLE `product_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_request_items`
--

DROP TABLE IF EXISTS `product_request_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product_request_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_request_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `received_quantity` int(11) DEFAULT NULL,
  `last_received_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_request_items_product_request1_idx` (`product_request_id`),
  KEY `fk_product_request_items_product1_idx` (`product_id`),
  CONSTRAINT `fk_product_request_items_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `fk_product_request_items_product_request1` FOREIGN KEY (`product_request_id`) REFERENCES `product_request` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_request_items`
--

LOCK TABLES `product_request_items` WRITE;
/*!40000 ALTER TABLE `product_request_items` DISABLE KEYS */;
INSERT INTO `product_request_items` VALUES (1,1,3,10,10,'2018-10-29 22:58:18'),(2,1,2,10,10,'2018-10-29 22:57:45'),(3,1,1,10,10,'2018-10-29 22:10:41'),(7,5,2,1,1,'2018-10-29 21:55:15'),(8,6,3,50,50,'2018-10-29 04:46:47'),(9,6,2,10,10,'2018-10-25 04:34:31'),(10,6,1,10,10,'2018-10-25 04:28:45'),(11,7,2,100,12,'2018-10-29 23:06:22'),(12,7,1,100,NULL,NULL);
/*!40000 ALTER TABLE `product_request_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_status`
--

DROP TABLE IF EXISTS `product_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_status`
--

LOCK TABLES `product_status` WRITE;
/*!40000 ALTER TABLE `product_status` DISABLE KEYS */;
INSERT INTO `product_status` VALUES (1,'Active'),(2,'Discontinued');
/*!40000 ALTER TABLE `product_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_sub_category`
--

DROP TABLE IF EXISTS `product_sub_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product_sub_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `product_category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_sub_category_product_category1_idx` (`product_category_id`),
  CONSTRAINT `fk_product_sub_category_product_category1` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_sub_category`
--

LOCK TABLES `product_sub_category` WRITE;
/*!40000 ALTER TABLE `product_sub_category` DISABLE KEYS */;
INSERT INTO `product_sub_category` VALUES (1,'A4',1),(2,'A3',1),(3,'Motor Oils',2),(4,'Body Parts',2),(5,'Pencil',1),(6,'Book',1);
/*!40000 ALTER TABLE `product_sub_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT INTO `product_type` VALUES (1,'consumable'),(2,'assets');
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
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
  `stock_number` varchar(45) DEFAULT NULL,
  `invoice_number` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `supplier_id` int(11) NOT NULL,
  `stock_request_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_stock_supplier1_idx` (`supplier_id`),
  KEY `fk_stock_stock_request1_idx` (`stock_request_id`),
  KEY `fk_stock_employee1_idx` (`created_by`),
  CONSTRAINT `fk_stock_employee1` FOREIGN KEY (`created_by`) REFERENCES `employee` (`id`),
  CONSTRAINT `fk_stock_stock_request1` FOREIGN KEY (`stock_request_id`) REFERENCES `stock_request` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_stock_supplier1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (3,'sds','asd','2018-10-16',1,5,19912298),(4,'1234','11254','2018-09-26',4,7,19912298),(5,'1234','1251','2018-10-20',4,5,19912298),(6,'1234','1251','2018-10-20',4,5,19912298),(7,'1234','1251','2018-10-20',4,5,19912298),(8,'1234','223434','2018-10-20',5,5,19912298),(9,'aaaa','aaaa','2018-10-20',1,5,19912298),(10,'aaaa','aaaa','2018-10-20',1,5,19912298),(11,'qqq','qqq','2018-10-20',1,5,19912298),(12,'sdfsd','fdsfsd','2018-10-20',5,5,19912298),(13,'dfdfdfg','fdgfdgdf','2018-10-20',1,7,19912298),(14,'32','234234','2018-10-20',4,7,19912298),(15,'dfg','dfgdfg','2018-10-20',1,7,19912298),(16,'jgjghj','ghjghj','2018-10-20',2,7,19912298),(17,'asdasd','sadasd','2018-10-21',1,8,19912298),(18,'gfgfhf','hfghfgh','2018-10-21',4,8,19912298),(19,'sdfds','fsdfsd','2018-10-21',1,9,19912298),(20,'fdg','fdgdfg','2018-10-21',1,9,19912298),(21,'dsgs','dgdsgsd','2018-10-21',4,9,19912298),(22,'fhf','hfghfgh','2018-10-21',5,9,19912298),(23,'dgdg','dfgdfg','2018-10-21',5,9,19912298),(24,'fghfgh','fghfgh','2018-10-21',1,9,19912298),(25,'ddg','dfgdfgd','2018-10-21',4,9,19912298),(26,'cbfg','bfgnfgnfg','2018-10-21',1,9,19912298),(27,'dfgdf','gdfgdf','2018-10-21',4,9,19912298),(28,'gfhfg','hfghfg','2018-10-21',4,9,19912298),(29,'fdf','fdgdf','2018-10-03',5,9,19912298),(30,'fdf','fdgdf','2018-10-03',5,9,19912298),(31,'fdf','fdgdf','2018-10-03',5,9,19912298),(32,'rthr','thtrh','2018-10-21',5,9,19912298),(33,'hfgh','fghfghgfh','2018-10-21',1,9,19912298),(34,'hfgh','fghfghgfh','2018-10-21',1,9,19912298),(35,'hfgh','fghfghgfh','2018-10-21',1,9,19912298),(36,'hfgh','fghfghgfh','2018-10-21',1,9,19912298),(37,'hfgh','fghfghgfh','2018-10-21',1,9,19912298),(38,'hfgh','fghfghgfh','2018-10-21',1,9,19912298),(39,'sdfdsfd','sdfsdf','2018-10-21',1,9,19912298),(40,'sdfdsfd','sdfsdf','2018-10-21',1,9,19912298),(41,'sdfsd','fsdf','2018-10-21',1,11,19912298),(42,'sdfsd','fsdf','2018-10-21',1,11,19912298),(43,'dfg','gdfgfd','2018-10-21',1,11,19912298),(44,'dfg','dfgdfg','2018-10-21',1,11,19912298),(45,'rgfg','dfgdfgdf','2018-10-21',1,11,19912298),(46,'99999','99999','2018-10-22',4,12,19912298),(47,'777777','777777','2018-10-22',5,12,19912298),(48,'4444','4444','2018-10-22',1,12,19912298),(49,'7778','77778','2018-10-22',1,12,19912298),(50,'fhgf','hgfhfg','2018-10-25',1,14,19912298),(51,'dfd','gdfgdf','2018-10-25',1,12,19912298),(52,'12345','1254','2018-10-29',1,13,19912298),(53,'215156','1616516','2018-10-30',1,13,19912298),(54,'161','51651561','2018-10-30',1,13,19912298),(55,'1213','212313','2018-10-30',4,15,19912298),(56,'1231','2131','2018-10-30',1,15,19912298);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_items`
--

DROP TABLE IF EXISTS `stock_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `stock_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_id` int(11) NOT NULL,
  `stock_request_items_id` int(11) NOT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `tax` decimal(6,2) DEFAULT NULL,
  `asset_code` varchar(255) DEFAULT NULL,
  `barcode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_stock_items_stock1_idx` (`stock_id`),
  KEY `fk_stock_items_stock_request_items1_idx` (`stock_request_items_id`),
  CONSTRAINT `fk_stock_items_stock1` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_stock_items_stock_request_items1` FOREIGN KEY (`stock_request_items_id`) REFERENCES `stock_request_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_items`
--

LOCK TABLES `stock_items` WRITE;
/*!40000 ALTER TABLE `stock_items` DISABLE KEYS */;
INSERT INTO `stock_items` VALUES (1,3,49,NULL,12,NULL,NULL,NULL),(2,3,50,NULL,12,NULL,NULL,NULL),(3,3,51,NULL,12,NULL,NULL,NULL),(4,4,52,2500.00,1,200.00,NULL,NULL),(5,4,53,2500.00,10,100.00,NULL,NULL),(6,5,52,100.00,5,100.00,NULL,NULL),(7,6,52,100.00,5,100.00,NULL,NULL),(8,7,52,100.00,5,100.00,NULL,NULL),(9,7,53,500.00,10,100.00,NULL,NULL),(10,8,52,100.00,5,100.00,NULL,NULL),(11,8,53,100.00,10,100.00,NULL,NULL),(12,9,52,10.00,7,100.00,NULL,NULL),(13,9,53,100.00,20,100.00,NULL,NULL),(14,10,52,100.00,5,100.00,NULL,NULL),(15,10,53,100.00,10,100.00,NULL,NULL),(16,11,53,100.00,10,100.00,NULL,NULL),(17,12,53,100.00,2,100.00,NULL,NULL),(18,13,49,100.00,1,100.00,NULL,NULL),(19,13,50,0.00,0,0.00,NULL,NULL),(20,13,51,0.00,0,0.00,NULL,NULL),(21,14,50,1323.00,1,32.00,NULL,NULL),(22,14,51,234.00,1,324.00,NULL,NULL),(23,16,51,100.00,1,1000.00,NULL,NULL),(24,17,56,100.00,10,100.00,NULL,NULL),(25,17,57,0.00,0,0.00,NULL,NULL),(26,18,57,100.00,10,100.00,NULL,NULL),(27,19,61,100.00,10,100.00,NULL,NULL),(28,19,62,0.00,0,0.00,NULL,NULL),(29,19,63,0.00,0,0.00,NULL,NULL),(30,20,61,100.00,2,100.00,NULL,NULL),(31,20,62,0.00,0,0.00,NULL,NULL),(32,20,63,0.00,0,0.00,NULL,NULL),(33,21,61,100.00,10,100.00,NULL,NULL),(34,21,62,0.00,0,0.00,NULL,NULL),(35,21,63,0.00,0,0.00,NULL,NULL),(36,22,61,0.00,0,0.00,NULL,NULL),(37,22,62,100.00,11,100.00,NULL,NULL),(38,22,63,0.00,0,0.00,NULL,NULL),(39,23,61,0.00,0,0.00,NULL,NULL),(40,23,62,100.00,1,100.00,NULL,NULL),(41,23,63,0.00,0,0.00,NULL,NULL),(42,24,61,0.00,0,0.00,NULL,NULL),(43,24,62,100.00,11,100.00,NULL,NULL),(44,24,63,0.00,0,0.00,NULL,NULL),(45,25,61,0.00,0,0.00,NULL,NULL),(46,25,62,0.00,0,0.00,NULL,NULL),(47,25,63,100.00,12,100.00,NULL,NULL),(48,26,61,0.00,0,0.00,NULL,NULL),(49,26,62,100.00,10,100.00,NULL,NULL),(50,27,61,0.00,0,0.00,NULL,NULL),(51,27,62,100.00,2,0.00,NULL,NULL),(52,28,61,1000.00,12,100.00,NULL,NULL),(53,28,62,0.00,0,0.00,NULL,NULL),(54,31,62,100.00,10,0.00,NULL,NULL),(55,32,62,100.00,2,100.00,NULL,NULL),(56,33,62,100.00,9,100.00,NULL,NULL),(57,34,62,100.00,9,100.00,NULL,NULL),(58,35,62,100.00,9,100.00,NULL,NULL),(59,36,62,100.00,9,100.00,NULL,NULL),(60,37,62,100.00,9,100.00,NULL,NULL),(61,38,62,100.00,9,100.00,NULL,NULL),(62,40,62,111.00,1,111.00,NULL,NULL),(63,42,70,100000.00,10,200.00,NULL,NULL),(64,42,71,0.00,0,0.00,NULL,NULL),(65,42,72,0.00,0,0.00,NULL,NULL),(66,43,71,100.00,5,100.00,NULL,NULL),(67,43,72,0.00,0,0.00,NULL,NULL),(68,44,71,100.00,5,1100.00,NULL,NULL),(69,44,72,0.00,0,0.00,NULL,NULL),(70,45,72,100.00,10,1000.00,NULL,NULL),(71,46,79,100.00,10,100.00,NULL,NULL),(72,46,80,0.00,0,0.00,NULL,NULL),(73,46,81,0.00,0,0.00,NULL,NULL),(74,47,79,100.00,2,100.00,NULL,NULL),(75,47,80,0.00,0,0.00,NULL,NULL),(76,47,81,0.00,0,0.00,NULL,NULL),(77,48,80,100.00,10,100.00,NULL,NULL),(78,48,81,0.00,0,0.00,NULL,NULL),(79,49,80,100.00,2,100.00,NULL,NULL),(80,49,81,0.00,0,0.00,NULL,NULL),(81,50,85,100.00,100,100.00,NULL,NULL),(82,50,86,100.00,100,100.00,NULL,NULL),(83,50,87,100.00,100,100.00,NULL,NULL),(84,51,81,100.00,12,100.00,NULL,NULL),(85,52,88,100.00,12,100.00,NULL,NULL),(86,52,89,0.00,0,0.00,NULL,NULL),(87,52,90,0.00,0,0.00,NULL,NULL),(88,53,89,100.00,13,100.00,NULL,NULL),(89,53,90,100.00,114,100.00,NULL,NULL),(90,54,90,1000.00,14,100.00,NULL,NULL),(91,55,92,1000.00,100,100.00,NULL,NULL),(92,56,92,1000.00,100,100.00,NULL,NULL);
/*!40000 ALTER TABLE `stock_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_request`
--

DROP TABLE IF EXISTS `stock_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `stock_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_request_number` varchar(100) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `requested_by` int(11) DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_stock_request_employee1_idx` (`requested_by`),
  KEY `fk_stock_request_employee2_idx` (`approved_by`),
  CONSTRAINT `fk_stock_request_employee1` FOREIGN KEY (`requested_by`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_stock_request_employee2` FOREIGN KEY (`approved_by`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_request`
--

LOCK TABLES `stock_request` WRITE;
/*!40000 ALTER TABLE `stock_request` DISABLE KEYS */;
INSERT INTO `stock_request` VALUES (5,'qwe123','2018-10-12 03:25:40',19912298,'2018-10-16 00:55:17',19912298,'2018-10-20 11:14:05','2018-10-20 11:14:05'),(7,'5555','2018-10-12 04:10:48',19912298,'2018-10-12 04:10:56',19912298,'2018-10-20 11:46:50','2018-10-20 11:46:50'),(8,'okjn','2018-10-20 12:04:41',19912298,'2018-10-21 00:15:12',19912298,'2018-10-21 00:25:24','2018-10-21 00:25:24'),(9,'asdasd','2018-10-21 00:26:24',19912298,'2018-10-21 00:26:38',19912298,'2018-10-21 00:49:28','2018-10-21 00:49:28'),(11,'dsfsdfsd','2018-10-21 00:50:45',19912298,'2018-10-21 00:50:51',19912298,'2018-10-21 00:54:31','2018-10-21 00:54:31'),(12,'sdfsdf','2018-10-21 00:51:14',19912298,'2018-10-21 00:57:53',19912298,'2018-10-25 04:33:51','2018-10-25 04:33:51'),(13,'ewerwerw','2018-10-21 00:51:42',19912298,'2018-10-29 00:43:30',19912298,'2018-10-29 22:54:35','2018-10-29 22:54:35'),(14,'21323','2018-10-25 04:32:12',19912298,'2018-10-25 04:32:24',19912298,'2018-10-25 04:33:07','2018-10-25 04:33:51'),(15,'121212','2018-10-29 22:55:49',19912298,'2018-10-29 22:55:58',19912298,'2018-10-29 22:57:05','2018-10-29 22:57:05');
/*!40000 ALTER TABLE `stock_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_request_items`
--

DROP TABLE IF EXISTS `stock_request_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `stock_request_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `stock_request_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `received_quantity` int(11) DEFAULT NULL,
  `last_recieved_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_stock_request_items_product1_idx` (`product_id`),
  KEY `fk_stock_request_items_stock_request1_idx` (`stock_request_id`),
  CONSTRAINT `fk_stock_request_items_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_stock_request_items_stock_request1` FOREIGN KEY (`stock_request_id`) REFERENCES `stock_request` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_request_items`
--

LOCK TABLES `stock_request_items` WRITE;
/*!40000 ALTER TABLE `stock_request_items` DISABLE KEYS */;
INSERT INTO `stock_request_items` VALUES (49,3,7,1,1,'2018-10-20'),(50,2,7,1,1,'2018-10-20'),(51,1,7,1,1,'2018-10-20'),(52,2,5,12,12,'2018-10-20'),(53,1,5,32,32,'2018-10-20'),(56,2,8,10,10,'2018-10-21'),(57,1,8,10,10,'2018-10-21'),(61,3,9,12,12,'2018-10-21'),(62,2,9,12,12,'2018-10-21'),(63,1,9,12,12,'2018-10-21'),(70,3,11,10,10,'2018-10-21'),(71,1,11,10,10,'2018-10-21'),(72,2,11,10,10,'2018-10-21'),(79,3,12,12,12,'2018-10-22'),(80,2,12,12,12,'2018-10-22'),(81,1,12,12,12,'2018-10-25'),(85,3,14,100,100,'2018-10-25'),(86,2,14,100,100,'2018-10-25'),(87,1,14,100,100,'2018-10-25'),(88,3,13,12,12,'2018-10-29'),(89,2,13,13,13,'2018-10-30'),(90,1,13,114,114,'2018-10-30'),(92,3,15,200,200,'2018-10-30');
/*!40000 ALTER TABLE `stock_request_items` ENABLE KEYS */;
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
  `nature_of_business_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_supplier_nature_of_business1_idx` (`nature_of_business_id`),
  CONSTRAINT `fk_supplier_nature_of_business1` FOREIGN KEY (`nature_of_business_id`) REFERENCES `nature_of_business` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'1234','1234','Sample Name','0711515161','0711515161','0711515161','0711515161','smssena1110@gmail.com','123456789','2018-09-29','123456','Nature of Business','Contact Person','Sample Sample SampleSample Sample SampleSample Sample SampleSample Sample SampleSample Sample SampleSample Sample SampleSample Sample SampleSample Sample SampleSample Sample Sample',NULL,'2018-09-18 01:00:04',NULL,0),(2,'sdfsdf','s','s','s','s','s','s','smssena1110@gmail.com','s','2018-09-04','s','s','s','s','2018-09-19 04:03:46','2018-09-19 04:03:46',NULL,0),(3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-09-19',NULL,NULL,NULL,NULL,'2018-09-19 04:25:28','2018-09-19 04:25:28',NULL,0),(4,'asdas','asdas','asdas','asdas','asdas','asdasd','asd','smsena1110@gmail.com','asds','2018-10-10','asds','asdasd','adas','asd','2018-10-08 01:58:36','2018-10-08 01:58:36',NULL,0),(5,'asdas','asdas','asdas','asdas','asdas','asdasd','asd','smsena1110@gmail.com','asds','2018-10-10','asds','asdasd','adas','asd','2018-10-08 01:58:53','2018-10-08 01:58:53',NULL,0),(6,'asdas','asdas','asdas','asdas','asdas','asdasd','asd','smsena1110@gmail.com','asds','2018-10-10','asds','asdasd','adas','asd','2018-10-08 02:02:40','2018-10-08 02:02:40',NULL,0);
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
-- Table structure for table `supplier_has_product`
--

DROP TABLE IF EXISTS `supplier_has_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `supplier_has_product` (
  `supplier_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`supplier_id`,`product_id`),
  KEY `fk_supplier_has_product_product1_idx` (`product_id`),
  KEY `fk_supplier_has_product_supplier1_idx` (`supplier_id`),
  CONSTRAINT `fk_supplier_has_product_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `fk_supplier_has_product_supplier1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_has_product`
--

LOCK TABLES `supplier_has_product` WRITE;
/*!40000 ALTER TABLE `supplier_has_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier_has_product` ENABLE KEYS */;
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
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `fk_users_role1_idx` (`role_id`),
  KEY `fk_users_employee1_idx` (`employee_id`),
  CONSTRAINT `fk_users_employee1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  CONSTRAINT `fk_users_role1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (10,'Test User','test@test.com','$2y$10$YAa1/1MULK3yBKjIk9kI.e0RB9c22E74sCfhg9di6AOOLMCwK7ikW','iM8PuONg3v3cm68JKssBz0QEMmwYh94BUhAfObkanO9HKt2kruMJZrVYFvf3','2018-10-11 03:07:55','2018-10-11 03:07:55',1,1,19912298);
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

-- Dump completed on 2018-11-13 20:05:51
