-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2019 at 09:08 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`id`, `name`) VALUES
(1, 'Assistant Network Manager'),
(2, 'Assistant Lecturer'),
(3, 'Assistant Registrar'),
(4, 'Associate Professor'),
(5, 'Deputy Director'),
(6, 'Director'),
(7, 'Driver'),
(8, 'Instructor'),
(9, 'Lab Attendant'),
(10, 'Lecturer'),
(11, 'Management Assistant'),
(12, 'Media Officer'),
(13, 'Network Assistant'),
(14, 'Professor'),
(15, 'Programmer Cum Systems Analyst'),
(16, 'Public Relation Officer'),
(17, 'Scientific Assistant'),
(18, 'Senior Assistant Librarian'),
(19, 'Senior Assistant Registrar'),
(20, 'Deputy Registrar'),
(21, 'Senior Lecturer'),
(22, 'Senior Professor'),
(23, 'Technical Officer'),
(24, 'Technical Officer (ICT)'),
(25, 'Technical Officer (Media)'),
(26, 'Telephone Operator Cum Receptionist'),
(27, 'Temporary Instructor'),
(28, 'Works Aid'),
(29, 'Works Engineer'),
(30, 'Senior Assistant Bursar'),
(31, 'Deputy Bursar'),
(32, 'Student'),
(33, 'Intern'),
(34, 'aaa');

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE `division` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head_employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`id`, `name`, `head_employee_id`) VALUES
(1, 'Academic and Publication Branch', 5),
(6, 'Administration Branch', 12),
(7, 'External Degree Centre', 1),
(8, 'Center for Digital Forensic', 1),
(9, 'Computer Service Centre', 3),
(10, 'E-learning Centre', 1),
(11, 'Engineering Division 	', 8),
(12, 'Examination Division ', 6),
(13, 'Financial Department	', 3),
(14, 'Library	 ', 3),
(15, 'ADMTC', 1),
(16, 'Network Operating Centre', 7),
(17, 'Software Development Unit 	', 4),
(18, 'Office of the Director', 1),
(19, 'Post Graduate, Research & Projects', 4),
(20, 'Professional Development Center 	', 4);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
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
  `division_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `emp_id`, `title_id`, `initials`, `last_name`, `full_name`, `date_of_birth`, `nic`, `gender_id`, `marital_status_id`, `address`, `mobile`, `land`, `email`, `designation_id`, `date_of_join`, `img_url`, `created_at`, `updated_at`, `deleted_at`, `division_id`) VALUES
(1, '2019/001', 1, 'HLPM', 'Madhushanka', 'Hewa Lunuvilage Prageeth Madhawa Madhushanka', '1992-03-21', '920811213V', 1, 2, 'No 88,\r\nKanaththa Road,\r\nNaligama,\r\nMirigama.', '0715902443', '0332274361', 'pra@i3cubes.com', 13, '2018-08-08', 'img/users\\19912298.jpg', '2018-07-31 03:18:45', '2019-01-22 05:46:52', NULL, 1),
(2, '2019/002', 1, 'TKN', 'PEIRIS', 'Kushal Peiris', '1994-09-01', '913456783V', 1, 2, 'No 77,\r\nMirigama,\r\nGampaha', '0701234567', '0312345678', 'tknpeiris@gmail.com', 33, '2018-10-01', 'img/users\\002.jpg', '2018-11-21 10:24:23', '2019-01-22 05:51:27', NULL, 10),
(3, '2019/003', 1, 'PU', 'Udara', 'Pamud', '1981-11-11', '811234567V', 1, 2, 'No 288,\r\nColombo 7.', '0771880209', '0332273224', 'ufm@i3cubes.com', 1, '2002-09-10', 'img/users\\.jpg', '2018-11-21 10:28:15', '2019-01-17 06:11:16', NULL, 10),
(4, '2019/004', 2, 'WNH', 'Fernando', 'Weerahannedige Nelini Hareendri Fernando', '1977-11-03', '884545445V', 2, 2, 'No 89,\r\nJosop Road,\r\nMalabe.', '0728136805', '0332284325', 'ufc@i3cubes.com', 1, '2007-10-17', 'img/users\\004.jpg', '2018-11-21 10:46:59', '2019-01-17 09:32:36', NULL, 1),
(5, '2019/005', 1, 'WHKNC', 'Marcus', 'Wickrama Hetti Konnehelage Nethmina Chiran Marcus', '1991-09-25', '913456783V', 1, 1, 'No 34,\r\nMel Road,\r\nColombo 6.', '0783454321', '0116734563', 'whk@i3cubes.com', 14, '1994-10-04', 'img/users\\005.jpg', '2018-11-21 10:51:38', '2019-01-17 06:36:46', NULL, 1),
(6, '2019/006', 2, 'DS', 'Kodikara', 'Dunara Sasindi Kodikara', '1987-06-24', '879022345V', 2, 2, 'No 55,\r\n1 Lane,\r\nColombo 8', '0779865378', '0115473576', 'dsk@i3cubes.com', 8, '2014-11-04', 'img/users\\006.jpg', '2018-11-21 11:13:23', '2018-11-21 11:13:23', NULL, 1),
(7, '2019/008', 3, 'TGA', 'Dewmini', 'Thudugala Gamage Amavi Dewmini', '1989-09-20', '893456345V', 2, 2, 'No 99,\r\nMalabe.', '0728763452', '0120835627', 'tga@i3cubes.com', 1, '2018-11-02', 'img/users\\008.jpg', '2018-11-21 11:18:14', '2019-01-16 09:58:02', NULL, 6),
(8, '2019/007', 1, 'LADH', 'Premaratne', 'Lekam Appuhamilage Dona Hansika Premaratne', '1986-09-30', '860923456V', 1, 1, 'No 67,\r\nGamage road,\r\nColombo 5.', '0711880209', '0354720511', 'usk@i3cubes.com', 9, '2016-10-03', 'img/users\\007.jpg', '2018-11-21 11:26:38', '2018-11-22 01:14:01', NULL, 6),
(9, '2019/009', 1, 'SPAJCB', 'Samarakoon', 'Samarakoon Perumbulli Arachchilage Janaka Chamodh Bandara Samarakoon', '1974-12-17', '749802356V', 1, 1, 'No 67,\r\nGolden road,\r\nMalabe.', '0716745321', '0563456278', 'spa@i3cubes.com', 1, '2012-11-07', 'img/users\\009.jpg', '2018-11-21 11:31:06', '2018-11-21 11:31:06', NULL, 7),
(10, '2019/010', 2, 'TNA', 'Akmeemana', 'Thanusha Nadeeshan Akmeemana', '1988-10-04', '889034567V', 2, 1, 'No 45,\r\nNaligama,\r\nVeyangoda.', '0777456610', '0459845234', 'tna@i3cubes.com', 4, '2016-10-04', 'img/users\\010.jpg', '2018-11-21 11:37:53', '2018-11-21 11:37:53', NULL, 1),
(11, '2019/011', 2, 'JS', 'Wijesekara', 'Januki Sihara Wijesekara', '1992-10-14', '920123364V', 2, 1, 'No 367,\r\nMiriswaththa,\r\nGampaha.', '0718136805', '0557878352', 'usm@i3cubes.com', 10, '2018-11-01', 'img/users\\011.jpg', '2018-11-21 11:40:49', '2018-11-22 01:14:29', NULL, 6),
(12, '2019/012', 2, 'HJP', 'Perera', 'Hettige Janith Prasanga Perera', '1992-11-06', '928765432V', 2, 1, 'No 22,\r\nColombo.', '0715633451', '0114536721', 'hjp@i3cubes.com', 1, '2018-11-07', 'img/users\\012.JPG', '2018-11-21 12:24:34', '2018-11-21 12:24:34', NULL, 8),
(13, '2019/013', 4, 'GN', 'jjkjhkhk', 'kkkhkh', '1996-02-06', '913456783V', 1, 1, 'gjgkgkhk', '0325567602', '0325567602', 'clerk@ucsc.cmb.ac.lk', 15, '2018-02-13', NULL, '2019-01-22 06:24:50', '2019-01-22 06:25:12', '2019-01-22 06:25:12', 7),
(14, '000367', 2, 'FHAM', 'Premachandra', 'Franciscu Hettige Anne Mindika Premachandra', '1983-11-17', '838221750V', 1, 1, 'No.7A, Udaya Mawatha, Templers Road, Mount Lavinia', '', '0112581245', 'amp', 12, '2009-05-04', '000367_5886526250_image.jpg', NULL, NULL, NULL, 17),
(15, '000100', 2, 'TA', 'Weerasinghe', 'Thushani Alwis Weerasinghe', '1972-12-21', '728560770V', 1, 1, 'No.25/6C, Gramberg Watta Road, Maharagama', '', '0112581245', 'taw', 12, '2009-09-23', '', NULL, NULL, NULL, 19),
(16, '000138', 2, 'MGNAS', 'Fernando ', 'Muthunama Gonnage Noel Antoney Sanath Fernando ', '1960-12-10', '603450671V', 1, 1, 'No.27, Pilicia Mawatha, Hapugoda, Kandana', '', '0112581245', 'nas', 12, '2009-05-06', '', NULL, NULL, NULL, 19),
(17, '000137', 2, 'DD', 'Karunaratna', 'Damitha Dissakitti Karunaratna', '1960-11-23', '603280598V', 1, 1, 'Wasantha Withanage Place, Maharagama Road, Mammpe, Piliyandale', '', '0112581245', 'ddk', 15, '2006-09-22', '000137_5759148905_image.jpg', NULL, NULL, NULL, 18),
(18, '000148', 2, 'GDSP', 'Wimalaratne', 'Galpayage Don Susantha Prasad Wimalaratne', '1967-11-12', '673170803V', 1, 1, 'Sanketh, Colombo Road, Pokunuwita', '', '0112581245', 'spw', 15, '2009-08-21', '', NULL, NULL, NULL, 18),
(19, '000053', 2, 'MDJS', 'Goonetillake', 'Mestiyage Dona Jeevani Samantha Goonetillake', '1968-08-27', '687401018V', 1, 1, 'No. 681, Arawwala, Pannipitiya', '', '0112581245', 'jsg', 15, '2010-11-30', '', NULL, NULL, NULL, 19),
(20, '000144', 2, 'HL', 'Premaratne', 'Hemakumar Lalith Premaratne', '1952-07-22', '522043460V', 1, 1, '212. High Level Road, Maharagama', '', '0112581245', 'hlp', 15, '2011-05-20', '', NULL, NULL, NULL, 17);

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `name`) VALUES
(1, 'Male'),
(2, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `stock_id`, `quantity`) VALUES
(31, 20, 69, 90),
(32, 28, 69, 100),
(33, 25, 69, 50),
(34, 23, 69, 9),
(35, 24, 69, 4),
(36, 15, 69, 500),
(37, 14, 69, 499),
(38, 14, 70, 1),
(39, 6, 70, 0),
(40, 5, 70, 0),
(41, 14, 71, 2),
(42, 15, 71, 2),
(43, 8, 71, 3),
(44, 7, 71, 6),
(45, 7, 72, 100),
(46, 6, 72, 100),
(47, 5, 72, 50);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `log_type_id` int(11) NOT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `users_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `log_type_id`, `timestamp`, `message`, `users_id`) VALUES
(150, 1, '2018-11-21 09:28:48', 'User Role has updated. Added new permissions.', 10),
(151, 1, '2018-11-21 10:05:45', 'Employee Created - EmpID - 2018/001', 10),
(152, 1, '2018-11-21 10:15:48', 'Employee Updated - EmpID - 2018/001', 10),
(153, 1, '2018-11-21 10:15:57', 'Employee Updated - EmpID - 2018/001', 10),
(154, 1, '2018-11-21 10:17:00', 'Employee Updated - EmpID - 2018/001', 10),
(155, 1, '2018-11-21 10:17:09', 'Employee Updated - EmpID - 2018/001', 10),
(156, 1, '2018-11-21 10:17:14', 'Employee Updated - EmpID - 2018/001', 10),
(157, 1, '2018-11-21 10:17:44', 'Employee Updated - EmpID - 2018/001', 10),
(158, 1, '2018-11-21 10:24:23', 'Employee Created - EmpID - 2018/002', 10),
(159, 1, '2018-11-21 10:28:15', 'Employee Created - EmpID - 2018/003', 10),
(160, 1, '2018-11-21 10:38:02', 'Employee Updated - EmpID - 2018/001', 10),
(161, 1, '2018-11-21 10:41:43', 'Employee Updated - EmpID - 2018/002', 10),
(162, 1, '2018-11-21 10:46:59', 'Employee Created - EmpID - 2018/004', 10),
(163, 1, '2018-11-21 10:51:38', 'Employee Created - EmpID - 2018/005', 10),
(164, 1, '2018-11-21 11:13:23', 'Employee Created - EmpID - 2018/006', 10),
(165, 1, '2018-11-21 11:18:02', 'Employee Created - EmpID - 2018/007', 10),
(166, 1, '2018-11-21 11:18:14', 'Employee Created - EmpID - 2018/008', 10),
(167, 1, '2018-11-21 11:18:39', 'Employee Deleted - EmpID - 2018/007', 10),
(168, 1, '2018-11-21 11:26:38', 'Employee Created - EmpID - 2018/007', 10),
(169, 1, '2018-11-21 11:31:06', 'Employee Created - EmpID - 2019/009', 10),
(170, 1, '2018-11-21 11:34:11', 'Employee Created - EmpID - 2018/010', 10),
(171, 1, '2018-11-21 11:37:53', 'Employee Created - EmpID - 2018/010', 10),
(172, 1, '2018-11-21 11:40:49', 'Employee Created - EmpID - 2018/011', 10),
(173, 1, '2018-11-21 11:42:54', 'Employee Updated - EmpID - 2018/007', 10),
(174, 1, '2018-11-21 11:50:46', 'Employee Updated - EmpID - 19912298', 10),
(175, 1, '2018-11-21 12:24:34', 'Employee Created - EmpID - 2018/012', 10),
(176, 1, '2018-11-21 12:48:44', 'User account updated', 10),
(177, 1, '2018-11-21 12:51:32', 'New Role created.', 10),
(178, 1, '2018-11-21 12:53:03', 'New Role created.', 10),
(179, 1, '2018-11-21 12:55:00', 'New Role created.', 10),
(180, 1, '2018-11-21 12:55:54', 'New Role created.', 10),
(181, 1, '2018-11-21 12:58:10', 'New Role created.', 10),
(182, 1, '2018-11-21 13:07:43', 'User account updated', 10),
(183, 1, '2018-11-21 13:08:28', 'User Role has updated. Changed permissions.', 10),
(184, 1, '2018-11-21 13:08:39', 'User Role has updated. Deleted permissions.', 10),
(185, 1, '2018-11-21 13:08:41', 'User Role has updated. Deleted permissions.', 10),
(186, 1, '2018-11-21 13:08:42', 'User Role has updated. Deleted permissions.', 10),
(187, 1, '2018-11-21 13:08:43', 'User Role has updated. Deleted permissions.', 10),
(188, 1, '2018-11-21 13:08:45', 'User Role has updated. Deleted permissions.', 10),
(189, 1, '2018-11-21 13:08:47', 'User Role has updated. Deleted permissions.', 10),
(190, 1, '2018-11-21 13:08:48', 'User Role has updated. Deleted permissions.', 10),
(191, 1, '2018-11-21 13:08:49', 'User Role has updated. Deleted permissions.', 10),
(192, 1, '2018-11-21 13:09:10', 'User Role has updated. Changed permissions.', 10),
(193, 1, '2018-11-21 14:09:39', 'User account created', 10),
(194, 1, '2018-11-21 14:14:21', 'Employee Updated - EmpID - 2018/011', 10),
(195, 1, '2018-11-21 14:15:52', 'User account created', 10),
(196, 1, '2018-11-21 23:00:29', 'Product Created - Product Code - CON/SPI/001', 10),
(197, 1, '2018-11-21 23:03:12', 'Product Created - Product Code - ASS/ELO/001', 10),
(198, 1, '2018-11-21 23:05:25', 'Product Created - Product Code - ASS/ELO/002', 10),
(199, 1, '2018-11-21 23:06:27', 'Product Updated - Product Code - CON/SPI/001', 10),
(200, 1, '2018-11-21 23:07:48', 'Product Updated - Product Code - CON/SPI/001', 10),
(201, 1, '2018-11-21 23:17:19', 'Product Updated - Product Code - CON-SPI-001', 10),
(202, 1, '2018-11-21 23:21:50', 'Product Created - Product Code - CON-SPI-002', 10),
(203, 1, '2018-11-21 23:23:07', 'Product Updated - Product Code - ASS-ELO-001', 10),
(204, 1, '2018-11-21 23:23:25', 'Product Updated - Product Code - ASS-ELO-002', 10),
(205, 1, '2018-11-21 23:28:24', 'Product Created - Product Code - ASS-ELO-003', 10),
(206, 1, '2018-11-21 23:31:31', 'Product Created - Product Code - ASS-ELO-003', 10),
(207, 1, '2018-11-21 23:34:14', 'Product Created - Product Code - ASS-ELO-004', 10),
(208, 1, '2018-11-21 23:35:30', 'Product Created - Product Code - ASS-ELO-005', 10),
(209, 1, '2018-11-21 23:37:31', 'Product Created - Product Code - ASS-ELO-006', 10),
(210, 1, '2018-11-21 23:41:18', 'Product Created - Product Code - CON-STA-001', 10),
(211, 1, '2018-11-21 23:42:18', 'Product Created - Product Code - CON-STA-002', 10),
(212, 1, '2018-11-21 23:45:22', 'Product Created - Product Code - CON-STA-003', 10),
(213, 1, '2018-11-21 23:55:56', 'Employee Updated - EmpID - 2018/008', 10),
(214, 1, '2018-11-22 00:43:33', 'Product Updated - Product Code - CON-STA-003', 10),
(215, 1, '2018-11-22 00:44:51', 'Product Created - Product Code - CON-STA-004', 10),
(216, 1, '2018-11-22 00:46:34', 'Product Created - Product Code - CON-STA-005', 10),
(217, 1, '2018-11-22 00:48:07', 'Product Created - Product Code - CON-STA-006', 10),
(218, 1, '2018-11-22 00:49:09', 'Product Created - Product Code - CON-STA-007', 10),
(219, 1, '2018-11-22 00:53:22', 'Product Created - Product Code - ASS-FER-002', 10),
(220, 1, '2018-11-22 00:55:00', 'Product Created - Product Code - ASS-FER-044', 10),
(221, 1, '2018-11-22 00:56:12', 'Product Created - Product Code - ASS-FER-003', 10),
(222, 1, '2018-11-22 00:58:37', 'Product Created - Product Code - ASS-KTH-001', 10),
(223, 1, '2018-11-22 01:01:53', 'Product Created - Product Code - CON-CLE-001', 10),
(224, 1, '2018-11-22 01:02:49', 'Product Created - Product Code - CON-CLE-002', 10),
(225, 1, '2018-11-22 01:05:24', 'Product Created - Product Code - CON-SPI-003', 10),
(226, 1, '2018-11-22 01:05:24', 'Product Created - Product Code - CON-SPI-003', 10),
(227, 1, '2018-11-22 01:06:44', 'Product Created - Product Code - CON-SPI-004', 10),
(228, 1, '2018-11-22 01:08:19', 'Product Created - Product Code - CON-ELT-001', 10),
(229, 1, '2018-11-22 01:10:48', 'User account created', 10),
(230, 1, '2018-11-22 01:11:27', 'User account created', 10),
(231, 1, '2018-11-22 01:13:04', 'Employee Updated - EmpID - 2018/004', 10),
(232, 1, '2018-11-22 01:13:34', 'Employee Updated - EmpID - 2018/003', 10),
(233, 1, '2018-11-22 01:14:01', 'Employee Updated - EmpID - 2018/007', 10),
(234, 1, '2018-11-22 01:14:29', 'Employee Updated - EmpID - 2018/011', 10),
(235, 1, '2018-11-22 01:22:21', 'User account updated', 10),
(236, 1, '2018-11-22 01:22:39', 'User account updated', 10),
(237, 1, '2018-11-22 01:23:10', 'User account updated', 10),
(238, 1, '2018-11-22 01:23:23', 'User account updated', 10),
(239, 1, '2018-11-22 01:26:38', 'User Role has updated. Changed permissions.', 10),
(240, 1, '2018-11-22 01:29:39', 'User Role has updated. Changed permissions.', 10),
(241, 1, '2018-11-22 01:31:00', 'User Role has updated. Deleted permissions.', 10),
(242, 1, '2018-11-22 01:40:00', 'Product Updated - Product Code - ASS-ELO-066', 10),
(243, 1, '2018-11-22 01:41:08', 'Stock request added - stock request number - SRN0001', 15),
(244, 1, '2018-11-22 01:44:37', 'User Role has updated. Changed permissions.', 10),
(245, 1, '2018-11-22 02:03:38', 'Stock request added - stock request number - SRN0002', 15),
(246, 1, '2018-11-22 02:13:36', 'Stock request added - stock request approved - SRN0001', 16),
(247, 1, '2018-11-22 06:02:48', 'New stock added - Stock number - SN001', 15),
(248, 1, '2018-11-22 06:08:33', 'Requested new products - Request number - RQ181122001', 17),
(249, 1, '2018-11-22 06:10:12', 'User Role has updated. Changed permissions.', 10),
(250, 1, '2018-11-22 06:15:11', 'Requested new products - Request number - RQ181122002', 17),
(251, 1, '2018-11-22 06:16:20', 'User Role has updated. Changed permissions.', 10),
(252, 1, '2018-11-22 06:16:37', 'User Role has updated. Deleted permissions.', 10),
(253, 1, '2018-11-22 06:19:20', 'User Role has updated. Changed permissions.', 10),
(254, 1, '2018-11-22 06:33:44', 'Product request approved - Request number - RQ181122002', 18),
(255, 1, '2018-11-22 06:35:57', 'Product request confirmed - Request number - RQ181122002', 16),
(256, 1, '2018-11-22 06:37:05', 'Products Issued - request ID - 24', 15),
(257, 1, '2018-11-22 12:30:32', 'Requested new products - Request number - RQ181122003', 17),
(258, 1, '2018-11-22 12:30:48', 'Product request approved - Request number - RQ181122003', 18),
(259, 1, '2018-11-22 12:31:11', 'Product request confirmed - Request number - RQ181122003', 16),
(260, 1, '2018-11-22 12:32:01', 'Products Issued - request ID - 25', 15),
(261, 1, '2018-11-22 12:32:21', 'Products Issued - request ID - 25', 15),
(262, 1, '2018-11-22 13:00:00', 'Requested new products - Request number - RQ181122004', 17),
(263, 1, '2018-11-22 13:00:24', 'Product request approved - Request number - RQ181122004', 18),
(264, 1, '2018-11-22 13:01:14', 'Product request confirmed - Request number - RQ181122004', 16),
(265, 1, '2018-11-22 13:01:32', 'Products Issued - request ID - 26', 15),
(266, 1, '2018-11-22 14:16:04', 'Product Updated - Product Code - CON-STA-007', 10),
(267, 1, '2018-11-22 14:23:04', 'Stock request added - stock request number - SRN0004', 15),
(268, 1, '2019-01-15 13:21:37', 'Product Created - Product Code - S101001', 10),
(269, 1, '2019-01-15 13:23:05', 'Product Created - Product Code - S102001', 10),
(270, 1, '2019-01-15 13:23:41', 'Product Created - Product Code - S101001', 10),
(271, 1, '2019-01-16 05:19:14', 'Product Created - Product Code - S101001', 10),
(272, 1, '2019-01-16 09:35:13', 'User account created', 10),
(273, 1, '2019-01-16 09:47:34', 'User account updated', 10),
(274, 1, '2019-01-16 09:47:45', 'User account updated', 10),
(275, 1, '2019-01-16 09:53:49', 'User account updated', 10),
(276, 1, '2019-01-16 09:57:43', 'Employee Updated - EmpID - 2018/008', 10),
(277, 1, '2019-01-16 09:58:02', 'Employee Updated - EmpID - 2018/008', 10),
(278, 1, '2019-01-17 05:39:05', 'Product Updated - Product Code - S101001', 10),
(279, 1, '2019-01-17 05:41:51', 'Product Created - Product Code - S101001', 10),
(280, 1, '2019-01-17 05:43:46', 'Product Created - Product Code - S214001', 10),
(281, 1, '2019-01-17 05:45:12', 'Product Updated - Product Code - S101001', 10),
(282, 1, '2019-01-17 05:45:42', 'Product Updated - Product Code - S101001', 10),
(283, 1, '2019-01-17 05:46:33', 'Requested new products - Request number - RQ190117001', 10),
(284, 1, '2019-01-17 05:48:51', 'User account updated', 10),
(285, 1, '2019-01-17 05:49:37', 'User account updated', 10),
(286, 1, '2019-01-17 05:54:03', 'New Role created.', 10),
(287, 1, '2019-01-17 05:54:54', 'New Role created.', 10),
(288, 1, '2019-01-17 05:56:54', 'User account updated', 10),
(289, 1, '2019-01-17 05:57:10', 'User account updated', 10),
(290, 1, '2019-01-17 05:57:20', 'User account updated', 10),
(291, 1, '2019-01-17 06:05:50', 'Employee Updated - EmpID - 2018/003', 10),
(292, 1, '2019-01-17 06:10:40', 'Employee Updated - EmpID - 2018/003', 10),
(293, 1, '2019-01-17 06:11:16', 'Employee Updated - EmpID - 2018/003', 10),
(294, 1, '2019-01-17 06:12:38', 'User account updated', 10),
(295, 1, '2019-01-17 06:17:55', 'User account updated', 10),
(296, 1, '2019-01-17 06:19:40', 'User account created', 10),
(297, 1, '2019-01-17 06:20:22', 'User account created', 10),
(298, 1, '2019-01-17 06:21:40', 'User account updated', 10),
(299, 1, '2019-01-17 06:21:54', 'User account updated', 10),
(300, 1, '2019-01-17 06:23:14', 'User account created', 10),
(301, 1, '2019-01-17 06:23:50', 'User account created', 10),
(302, 1, '2019-01-17 06:24:36', 'User account updated', 10),
(303, 1, '2019-01-17 06:26:01', 'User account updated', 10),
(304, 1, '2019-01-17 06:28:53', 'User account updated', 10),
(305, 1, '2019-01-17 06:29:53', 'New Role created.', 10),
(306, 1, '2019-01-17 06:30:27', 'User account updated', 10),
(307, 1, '2019-01-17 06:33:08', 'User account updated', 10),
(308, 1, '2019-01-17 06:33:27', 'User account updated', 10),
(309, 1, '2019-01-17 06:33:42', 'User account updated', 10),
(310, 1, '2019-01-17 06:33:58', 'User account updated', 10),
(311, 1, '2019-01-17 06:34:12', 'User account updated', 10),
(312, 1, '2019-01-17 06:34:27', 'User account updated', 10),
(313, 1, '2019-01-17 06:34:39', 'User account updated', 10),
(314, 1, '2019-01-17 06:34:53', 'User account updated', 10),
(315, 1, '2019-01-17 06:35:47', 'Employee Updated - EmpID - 2018/004', 10),
(316, 1, '2019-01-17 06:36:46', 'Employee Updated - EmpID - 2018/005', 10),
(317, 1, '2019-01-17 06:39:23', 'User account created', 10),
(318, 1, '2019-01-17 06:46:53', 'Employee Updated - EmpID - 2018/010', 10),
(319, 1, '2019-01-17 06:47:51', 'Requested new products - Request number - RQ190117002', 17),
(320, 1, '2019-01-17 06:48:07', 'Requested new products - Request number - RQ190117003', 17),
(321, 1, '2019-01-17 06:49:01', 'User Role has updated. Changed permissions.', 19),
(322, 1, '2019-01-17 06:49:23', 'User Role has updated. Changed permissions.', 19),
(323, 1, '2019-01-17 06:49:44', 'User Role has updated. Changed permissions.', 19),
(324, 1, '2019-01-17 06:52:15', 'Requested new products - Request number - RQ190117004', 17),
(325, 1, '2019-01-17 06:57:10', 'Requested new products - Request number - RQ190117005', 19),
(326, 1, '2019-01-17 06:59:29', 'Requested new products - Request number - RQ190117006', 24),
(327, 1, '2019-01-17 07:10:36', 'Product request approved - Request number - RQ190117002', 20),
(328, 1, '2019-01-17 07:10:41', 'Product request approval denied - Request number - RQ190117003', 20),
(329, 1, '2019-01-17 07:10:50', 'Product request approved - Request number - RQ190117004', 20),
(330, 1, '2019-01-17 07:12:18', 'Product request confirmed - Request number - RQ190117002', 19),
(331, 1, '2019-01-17 08:36:17', 'Requested new products - Request number - RQ190117007', 17),
(332, 1, '2019-01-17 08:38:17', 'Requested new products - Request number - RQ190117008', 17),
(333, 1, '2019-01-17 09:28:26', 'Requested new products - Request number - RQ190117009', 17),
(334, 1, '2019-01-17 09:31:22', 'Employee Updated - EmpID - 2018/004', 19),
(335, 1, '2019-01-17 09:32:03', 'Employee Updated - EmpID - 2018/004', 19),
(336, 1, '2019-01-17 09:32:37', 'Employee Updated - EmpID - 2018/004', 19),
(337, 1, '2019-01-17 09:32:44', 'Employee Updated - EmpID - 2018/004', 19),
(338, 1, '2019-01-17 09:33:37', 'Requested new products - Request number - RQ190117010', 17),
(339, 1, '2019-01-17 09:34:04', 'Product request approved - Request number - RQ190117010', 20),
(340, 1, '2019-01-17 09:35:09', 'Employee Updated - EmpID - 2018/008', 19),
(341, 1, '2019-01-17 12:30:45', 'Product Created - Product Code - S101001', 19),
(342, 1, '2019-01-17 12:33:53', 'Requested new products - Request number - RQ190117011', 19),
(343, 1, '2019-01-18 04:41:14', 'Requested new products - Request number - RQ190118001', 19),
(344, 1, '2019-01-18 04:42:17', 'Requested new products - Request number - RQ190118002', 19),
(345, 1, '2019-01-18 04:44:12', 'Requested new products - Request number - RQ190118003', 17),
(346, 1, '2019-01-18 04:45:11', 'Product request approved - Request number - RQ190118003', 20),
(347, 1, '2019-01-18 04:45:20', 'Product request approved - Request number - RQ190117008', 20),
(348, 1, '2019-01-18 04:45:57', 'Product request confirmed - Request number - RQ190118003', 19),
(349, 1, '2019-01-18 04:50:22', 'Stock request added - stock request number - SRN190118001', 19),
(350, 1, '2019-01-18 04:50:39', 'Stock request added - stock request approved - SRN190118001', 19),
(351, 1, '2019-01-21 03:38:47', 'Product Created - Product Code - S101002', 19),
(352, 1, '2019-01-21 03:52:23', 'Product request confirmed - Request number - RQ190117010', 19),
(353, 1, '2019-01-21 09:18:40', 'Product Created - Product Code - S101003', 19),
(354, 1, '2019-01-21 09:29:43', 'New stock added - Stock number - SN003', 19),
(355, 1, '2019-01-21 09:32:06', 'Stock request added - stock request number - SRN190121001', 19),
(356, 1, '2019-01-21 09:32:37', 'Stock request added - stock request approved - SRN190121001', 19),
(357, 1, '2019-01-21 09:33:19', 'New stock added - Stock number - SN003', 19),
(358, 1, '2019-01-21 09:36:19', 'Products Issued - request ID - 28', 19),
(359, 1, '2019-01-22 04:50:57', 'Stock request added - stock request number - SRN190122001', 19),
(360, 1, '2019-01-22 04:51:10', 'Stock request added - stock request approved - SRN190122001', 19),
(361, 1, '2019-01-22 04:52:23', 'New stock added - Stock number - SN003', 19),
(362, 1, '2019-01-22 05:46:52', 'Employee Updated - EmpID - 2018/001', 19),
(363, 1, '2019-01-22 05:51:27', 'Employee Updated - EmpID - 2018/002', 19),
(364, 1, '2019-01-22 06:24:50', 'Employee Created - EmpID - 2019/013', 19),
(365, 1, '2019-01-22 06:25:12', 'Employee Deleted - EmpID - 2019/013', 19),
(366, 1, '2019-01-22 10:45:25', 'Requested new products - Request number - RQ190122001', 19),
(367, 1, '2019-01-22 10:46:30', 'Requested new products - Request number - RQ190122002', 17),
(368, 1, '2019-01-22 10:58:42', 'Requested new products - Request number - RQ190122003', 17),
(369, 1, '2019-01-22 11:19:37', 'Requested new products - Request number - RQ190122004', 17),
(370, 1, '2019-01-22 11:19:59', 'Product request approved - Request number - RQ190122004', 20);

-- --------------------------------------------------------

--
-- Table structure for table `log_type`
--

CREATE TABLE `log_type` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_type`
--

INSERT INTO `log_type` (`id`, `name`) VALUES
(1, 'ACTIVITY'),
(2, 'ERROR'),
(3, 'WARNING');

-- --------------------------------------------------------

--
-- Table structure for table `marital_status`
--

CREATE TABLE `marital_status` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marital_status`
--

INSERT INTO `marital_status` (`id`, `name`) VALUES
(1, 'Married'),
(2, 'Not Married');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `name`) VALUES
(1, 'User'),
(2, 'Role'),
(3, 'Employee'),
(4, 'Log'),
(5, 'Supplier'),
(6, 'Product'),
(7, 'Stock'),
(8, 'Inventory'),
(10, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `module_has_permissions`
--

CREATE TABLE `module_has_permissions` (
  `module_id` int(11) NOT NULL,
  `permissions_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module_has_permissions`
--

INSERT INTO `module_has_permissions` (`module_id`, `permissions_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(4, 2),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 3),
(6, 5),
(6, 6),
(6, 7),
(6, 8),
(6, 9),
(7, 1),
(7, 2),
(7, 10),
(7, 11),
(7, 12),
(7, 13),
(8, 2),
(10, 14);

-- --------------------------------------------------------

--
-- Table structure for table `nature_of_business`
--

CREATE TABLE `nature_of_business` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nature_of_business`
--

INSERT INTO `nature_of_business` (`id`, `name`) VALUES
(1, 'Sole Proprietorship'),
(2, 'Partnership'),
(3, 'Corporation'),
(4, 'Limited Liability Company'),
(5, 'Cooperative');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`) VALUES
(1, 'Create'),
(2, 'View'),
(3, 'Edit'),
(4, 'Delete'),
(5, 'Approve Product Request'),
(6, 'Confirm Product Request'),
(7, 'Issue Products'),
(8, 'View Product Request'),
(9, 'Create Product Request'),
(10, 'Approve Stock Request'),
(11, 'Create Stock Request'),
(12, 'View Stock Request'),
(13, 'Download Stock Request'),
(14, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE `privileges` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`id`, `role_id`, `module_id`) VALUES
(16, 1, 6),
(34, 7, 6),
(35, 8, 1),
(36, 8, 3),
(37, 8, 5),
(38, 8, 6),
(39, 8, 7),
(40, 8, 8),
(41, 9, 1),
(43, 9, 5),
(44, 9, 6),
(45, 9, 7),
(46, 9, 8),
(47, 10, 6),
(48, 11, 1),
(49, 11, 2),
(50, 11, 3),
(51, 11, 4),
(52, 11, 5),
(53, 11, 6),
(54, 11, 7),
(55, 11, 8),
(56, 11, 10),
(57, 12, 1),
(58, 12, 2),
(59, 12, 3),
(60, 12, 4),
(61, 12, 5),
(62, 12, 6),
(63, 12, 7),
(64, 12, 8),
(65, 13, 1),
(66, 13, 2),
(67, 13, 3),
(68, 13, 4),
(69, 13, 5),
(70, 13, 6),
(71, 13, 7),
(72, 13, 8),
(73, 14, 5),
(74, 14, 7),
(75, 14, 8);

-- --------------------------------------------------------

--
-- Table structure for table `privileges_has_permissions`
--

CREATE TABLE `privileges_has_permissions` (
  `privileges_id` int(11) NOT NULL,
  `permissions_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `privileges_has_permissions`
--

INSERT INTO `privileges_has_permissions` (`privileges_id`, `permissions_id`) VALUES
(16, 8),
(16, 9),
(34, 5),
(35, 2),
(36, 1),
(36, 2),
(36, 3),
(37, 1),
(37, 2),
(37, 3),
(38, 1),
(38, 2),
(38, 3),
(38, 5),
(38, 6),
(38, 7),
(38, 8),
(39, 1),
(39, 2),
(39, 10),
(39, 11),
(39, 12),
(39, 13),
(40, 2),
(41, 2),
(43, 1),
(43, 2),
(43, 3),
(44, 1),
(44, 2),
(44, 3),
(44, 7),
(44, 8),
(45, 1),
(45, 2),
(45, 11),
(45, 12),
(45, 13),
(46, 2),
(47, 8),
(47, 9),
(48, 1),
(48, 2),
(48, 3),
(49, 1),
(49, 2),
(49, 3),
(49, 4),
(50, 1),
(50, 2),
(50, 3),
(50, 4),
(51, 2),
(52, 1),
(52, 2),
(52, 3),
(53, 1),
(53, 2),
(53, 3),
(53, 5),
(53, 6),
(53, 7),
(53, 8),
(53, 9),
(54, 1),
(54, 2),
(54, 10),
(54, 11),
(54, 12),
(54, 13),
(55, 2),
(56, 14),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 1),
(62, 2),
(62, 3),
(62, 5),
(62, 6),
(62, 7),
(62, 8),
(62, 9),
(63, 2),
(63, 10),
(63, 11),
(63, 12),
(63, 13),
(64, 2),
(65, 2),
(66, 1),
(66, 2),
(66, 3),
(66, 4),
(67, 2),
(68, 2),
(69, 2),
(70, 1),
(70, 2),
(70, 3),
(70, 5),
(70, 6),
(70, 7),
(70, 8),
(70, 9),
(71, 2),
(71, 10),
(71, 11),
(71, 12),
(71, 13),
(72, 2),
(73, 1),
(73, 2),
(73, 3),
(74, 1),
(74, 2),
(74, 11),
(74, 12),
(74, 13),
(75, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_sub_category_id` int(11) NOT NULL,
  `product_type_id` int(11) NOT NULL,
  `code` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_status_id` int(11) NOT NULL,
  `product_code` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcode` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reorder_level` int(11) DEFAULT NULL,
  `critical_reorder_level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `product_sub_category_id`, `product_type_id`, `code`, `description`, `image_url`, `product_status_id`, `product_code`, `asset_code`, `barcode`, `reorder_level`, `critical_reorder_level`) VALUES
(5, 'Portable Hard Disk', 20, 1, 'S8331', 'Western Digital 1 TB', 'img/products\\CON-SPI-001.jpg', 2, NULL, NULL, '00121', 5, 2),
(6, 'Moniter', 20, 2, 'ASS-ELO-001', '14 inch', 'img/products\\ASS-ELO-001.jpg', 1, NULL, 'ASS/2018-01/001', '80001', 10, 3),
(7, 'Moniter', 20, 2, 'ASS-ELO-002', 'HP 21\"', 'img/products\\002.jpg', 1, NULL, 'ASS/2018-2/001', '23345', 15, 10),
(8, 'Portable Hard Disk', 25, 1, 'CON-SPI-002', 'Transcend 500GB', 'img/products\\CON-SPI-002.jpg', 1, NULL, NULL, '01123', 8, 4),
(9, 'All In One', 20, 2, 'ASS-ELO-003', 'DELL', 'img/products\\ASS-ELO-003.jpg', 2, NULL, 'ASS/2018-03/002', '12345', 2, 1),
(10, 'All In One Dell', 20, 2, 'ASS-ELO-066', 'DeLL', 'img/products\\ASS-ELO-003.jpg', 1, NULL, 'ASS/2018-03/003', '45678', 3, 1),
(11, 'Laptop', 20, 2, 'ASS-ELO-004', 'I5, 15.5 inch', 'img/products\\ASS-ELO-004.jpg', 1, NULL, 'ASS/2018-03/004', '34523', 2, 1),
(12, 'Laptop', 20, 2, 'ASS-ELO-005', 'I7 , 14 inch', 'img/products\\ASS-ELO-005.jpg', 1, NULL, 'ASS/2018-03/005', '23533', 2, 1),
(13, 'MAC', 20, 2, 'ASS-ELO-006', 'I7 , 24 inch', 'img/products\\ASS-ELO-006.jpg', 1, NULL, 'ASS/2018-3/006', '67855', 5, 2),
(14, 'A3 Paper', 8, 1, 'CON-STA-001', 'White A3 Paper Packets', 'img/products\\CON-STA-001.jpg', 1, NULL, NULL, '90001', 100, 50),
(15, 'A4 Paper', 8, 1, 'CON-STA-002', 'White A4 Paper Packets', 'img/products\\CON-STA-002.jpg', 1, NULL, NULL, '90023', 200, 50),
(16, 'Glue Pen', 27, 1, 'CON-STA-003', 'Attles', 'img/products\\CON-STA-003.jpg', 1, NULL, NULL, '90022', 200, 20),
(17, 'Pencile', 9, 1, 'CON-STA-004', 'HP', 'img/products\\CON-STA-004.jpg', 1, NULL, NULL, '45345', 300, 100),
(18, 'Scissor', 27, 1, 'CON-STA-005', NULL, 'img/products\\CON-STA-005.jpg', 1, NULL, NULL, '12344', 20, 5),
(19, 'Stapler Machine', 27, 1, 'CON-STA-006', 'Small', 'img/products\\CON-STA-006.jpg', 1, NULL, NULL, '55667', 50, 10),
(20, 'Sticky Notes', 27, 1, 'CON-STA-007', 'Small', 'img/products\\CON-STA-007.jpg', 1, NULL, NULL, '34545', 200, 100),
(21, 'Fiber Chair', 14, 2, 'ASS-FER-002', '2 Arms with wheels', 'img/products\\ASS-FER-002.jpg', 1, NULL, 'ASS/2018-05/005', '93000', 1, 0),
(22, 'Steal Chair', 14, 1, 'ASS-FER-044', 'Steal Chair', 'img/products\\ASS-FER-044.jpg', 1, NULL, NULL, '90123', 1, 0),
(23, 'Chair', 14, 2, 'ASS-FER-003', 'Black Chair without Arms', 'img/products\\ASS-FER-003.jpg', 1, NULL, 'ASS/2018-05/006', '90144', 5, 2),
(24, 'Boiller', 29, 2, 'ASS-KTH-001', 'Steal', 'img/products\\ASS-KTH-001.jpg', 1, NULL, 'ASS/2018-03/025', '90678', 1, 0),
(25, 'Dust Pan', 17, 1, 'CON-CLE-001', NULL, 'img/products\\CON-CLE-001.jpg', 1, NULL, NULL, '87634', 2, 1),
(26, 'Soap', 17, 1, 'CON-CLE-002', 'Dettol', 'img/products\\CON-CLE-002.jpg', 1, NULL, NULL, '67354', 20, 5),
(27, 'Printer Cartridge', 33, 1, 'CON-SPI-003', 'For 5580 Printer', 'img/products\\CON-SPI-003.jpg', 1, NULL, NULL, '34345', 4, 2),
(28, 'Printer Cartridge', 33, 1, 'CON-SPI-003', 'For 5580 Printer', 'img/products\\CON-SPI-003.jpg', 1, NULL, NULL, '34345', 4, 2),
(29, 'Printer Toner', 33, 1, 'S102001', 'for HP 1320', 'img/products\\CON-SPI-004.jpg', 1, NULL, NULL, '45670', 5, 1),
(30, 'Power Extention Code', 23, 1, 'CON-ELT-001', '5M', 'img/products\\CON-ELT-001.jpg', 1, NULL, NULL, '45465', 10, 8),
(37, 'aaa', 1, 1, 'S101001', NULL, NULL, 1, NULL, NULL, '00111', 50, 10),
(38, '11', 1, 1, 'S101002', NULL, NULL, 1, NULL, NULL, '00001', 50, 10),
(39, '1111', 1, 1, 'S101003', NULL, NULL, 1, NULL, NULL, '00001', 50, 10);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `name`) VALUES
(1, 'Stationery'),
(2, 'Toners'),
(3, 'Electrical'),
(4, 'Mechanical Fasteners'),
(5, 'Ribbon'),
(6, 'Cleaning'),
(7, 'Tableware'),
(8, 'Hardware & Maintenance');

-- --------------------------------------------------------

--
-- Table structure for table `product_issue`
--

CREATE TABLE `product_issue` (
  `id` int(11) NOT NULL,
  `product_request_id` int(11) NOT NULL,
  `issued_at` timestamp NULL DEFAULT NULL,
  `issued_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_issue`
--

INSERT INTO `product_issue` (`id`, `product_request_id`, `issued_at`, `issued_by`) VALUES
(41, 24, '2018-11-22 06:37:05', 8),
(42, 25, '2018-11-22 12:32:01', 8),
(43, 25, '2018-11-22 12:32:20', 8),
(44, 26, '2018-11-22 13:01:31', 8),
(45, 40, '2019-01-18 04:47:15', 2),
(46, 28, '2019-01-21 09:36:19', 2),
(47, 28, '2019-01-21 09:36:19', 2),
(48, 28, '2019-01-21 09:36:19', 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_issue_items`
--

CREATE TABLE `product_issue_items` (
  `id` int(11) NOT NULL,
  `product_issue_id` int(11) NOT NULL,
  `product_request_items_id` int(11) NOT NULL,
  `stock_items_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_issue_items`
--

INSERT INTO `product_issue_items` (`id`, `product_issue_id`, `product_request_items_id`, `stock_items_id`, `quantity`, `price`, `tax`) VALUES
(43, 41, 39, NULL, 1, '50.00', '3.00'),
(44, 42, 40, NULL, 8, '400.00', '24.00'),
(45, 43, 40, NULL, 2, '100.00', '6.00'),
(46, 44, 41, NULL, 1, '50.00', '3.00'),
(47, 45, 71, NULL, 1, '50.00', '3.00'),
(48, 46, 44, NULL, 1, '0.00', '0.00'),
(49, 47, 45, NULL, 2, '100.00', '0.00'),
(50, 48, 46, NULL, 1, '50.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `product_issue_items_stocks`
--

CREATE TABLE `product_issue_items_stocks` (
  `id` int(11) NOT NULL,
  `product_issue_items_id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_request`
--

CREATE TABLE `product_request` (
  `id` int(11) NOT NULL,
  `product_request_number` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `requested_at` timestamp NULL DEFAULT NULL,
  `requested_by` int(11) DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `confirmed_at` timestamp NULL DEFAULT NULL,
  `confirmed_by` int(11) DEFAULT NULL,
  `last_issued_at` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `divisional_head_id` int(11) DEFAULT NULL,
  `requested_division_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_request`
--

INSERT INTO `product_request` (`id`, `product_request_number`, `date`, `requested_at`, `requested_by`, `approved_at`, `approved_by`, `confirmed_at`, `confirmed_by`, `last_issued_at`, `completed_at`, `divisional_head_id`, `requested_division_id`) VALUES
(23, 'RQ181122001', NULL, '2018-11-22 06:08:33', 4, NULL, NULL, NULL, NULL, NULL, NULL, 3, 9),
(24, 'RQ181122002', NULL, '2018-11-22 06:15:11', 4, '2018-11-22 06:33:44', 3, '2018-11-22 06:35:57', 11, NULL, '2018-11-22 06:37:05', 3, 9),
(25, 'RQ181122003', NULL, '2018-11-22 12:30:32', 4, '2018-11-22 12:30:48', 3, '2018-11-22 12:31:11', 11, NULL, '2018-11-22 12:32:21', 3, 9),
(26, 'RQ181122004', NULL, '2018-11-22 13:00:00', 4, '2018-11-22 13:00:24', 3, '2018-11-22 13:01:14', 11, NULL, '2018-11-22 13:01:32', 3, 9),
(27, 'RQ190117001', NULL, '2019-01-17 05:46:33', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(28, 'RQ190117002', NULL, '2019-01-17 06:47:51', 4, '2019-01-17 07:10:36', 5, '2019-01-17 07:12:18', 2, NULL, NULL, 5, 9),
(30, 'RQ190117004', NULL, '2019-01-17 06:52:14', 4, '2019-01-17 07:10:50', 5, NULL, NULL, NULL, NULL, 5, 9),
(31, 'RQ190117005', NULL, '2019-01-17 06:57:10', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10),
(32, 'RQ190117006', NULL, '2019-01-17 06:59:29', 10, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(33, 'RQ190117007', NULL, '2019-01-17 08:36:16', 4, NULL, NULL, NULL, NULL, NULL, NULL, 5, 9),
(34, 'RQ190117008', NULL, '2019-01-17 08:38:17', 4, '2019-01-18 04:45:20', 5, NULL, NULL, NULL, NULL, 5, 9),
(35, 'RQ190117009', NULL, '2019-01-17 09:28:26', 4, NULL, NULL, NULL, NULL, NULL, NULL, 3, 9),
(36, 'RQ190117010', NULL, '2019-01-17 09:33:37', 4, '2019-01-17 09:34:04', 5, '2019-01-21 03:52:23', 2, NULL, NULL, 5, 1),
(37, 'RQ190117011', NULL, '2019-01-17 12:33:52', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10),
(38, 'RQ190118001', NULL, '2019-01-18 04:41:14', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10),
(39, 'RQ190118002', NULL, '2019-01-18 04:42:17', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10),
(40, 'RQ190118003', NULL, '2019-01-18 04:44:12', 4, '2019-01-18 04:45:11', 5, '2019-01-18 04:45:57', 2, NULL, NULL, 5, 1),
(41, 'RQ190122001', NULL, '2019-01-22 10:45:25', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10),
(42, 'RQ190122002', NULL, '2019-01-22 10:46:30', 4, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1),
(43, 'RQ190122003', NULL, '2019-01-22 10:58:42', 4, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1),
(44, 'RQ190122004', NULL, '2019-01-22 11:19:37', 4, '2019-01-22 11:19:59', 5, NULL, NULL, NULL, NULL, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_request_items`
--

CREATE TABLE `product_request_items` (
  `id` int(11) NOT NULL,
  `product_request_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `received_quantity` int(11) DEFAULT NULL,
  `last_received_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_request_items`
--

INSERT INTO `product_request_items` (`id`, `product_request_id`, `product_id`, `quantity`, `received_quantity`, `last_received_date`) VALUES
(38, 23, 23, 2, NULL, NULL),
(39, 24, 23, 1, 1, '2018-11-22 06:37:05'),
(40, 25, 20, 10, 10, '2018-11-22 12:32:21'),
(41, 26, 24, 1, 1, '2018-11-22 13:01:32'),
(42, 27, 6, 2, NULL, NULL),
(43, 27, 5, 3, NULL, NULL),
(44, 28, 7, 1, 1, '2019-01-21 09:36:19'),
(45, 28, 6, 2, 2, '2019-01-21 09:36:19'),
(46, 28, 5, 3, 1, '2019-01-21 09:36:19'),
(49, 30, 7, 1, NULL, NULL),
(50, 30, 6, 2, NULL, NULL),
(51, 30, 5, 3, NULL, NULL),
(52, 31, 8, 1, NULL, NULL),
(53, 31, 7, 2, NULL, NULL),
(54, 32, 6, 2, NULL, NULL),
(55, 32, 5, 2, NULL, NULL),
(56, 33, 6, 2, NULL, NULL),
(57, 33, 5, 3, NULL, NULL),
(58, 34, 6, 2, NULL, NULL),
(59, 34, 5, 4, NULL, NULL),
(60, 35, 7, 3, NULL, NULL),
(61, 35, 6, 2, NULL, NULL),
(62, 35, 5, 5, NULL, NULL),
(63, 36, 6, 1, NULL, NULL),
(64, 36, 5, 1, NULL, NULL),
(65, 37, 6, 2, NULL, NULL),
(66, 37, 5, 3, NULL, NULL),
(67, 38, 14, 2, NULL, NULL),
(68, 38, 5, 3, NULL, NULL),
(69, 39, 6, 3, NULL, NULL),
(70, 39, 5, 2, NULL, NULL),
(71, 40, 14, 1, 1, '2019-01-18 04:47:15'),
(72, 40, 5, 2, NULL, NULL),
(73, 41, 6, 2, NULL, NULL),
(74, 41, 5, 2, NULL, NULL),
(75, 42, 6, 2, NULL, NULL),
(76, 43, 6, 2, NULL, NULL),
(77, 44, 5, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_status`
--

CREATE TABLE `product_status` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_status`
--

INSERT INTO `product_status` (`id`, `name`) VALUES
(1, 'Active'),
(2, 'Discontinued');

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_category`
--

CREATE TABLE `product_sub_category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sub_category`
--

INSERT INTO `product_sub_category` (`id`, `name`, `product_category_id`) VALUES
(1, 'Barcode', 1),
(2, 'Blades', 1),
(8, 'Books', 1),
(9, 'Box File', 1),
(14, 'Cartridge', 2),
(17, 'Colour Ribbon', 5),
(18, 'Numbering machine', 4),
(20, 'Baskets', 6),
(21, 'Dusters', 6),
(23, 'Cups & Saucers', 7),
(25, 'Soap', 6),
(27, 'Bulldog', 1),
(29, 'Punchers', 4),
(33, 'Scrolls', 8),
(34, 'C.Sheet', 1),
(35, 'Cello tape', 1),
(36, 'Cutter', 1),
(37, 'D.Sheet', 1),
(38, 'Envelope', 1),
(39, 'Eraser', 1),
(40, 'File Covers', 1),
(41, 'File Folder', 1),
(42, 'File tag', 1),
(43, 'Gum Bottle', 1),
(44, 'Hard Board', 1),
(45, 'Hard Board File', 1),
(46, 'ID Card', 1),
(47, 'Invoices', 1),
(48, 'L.Sheet', 1),
(49, 'Leave Register', 1),
(50, 'Ledger Sheet', 1),
(51, 'Letter Head', 1),
(52, 'Log Books', 1),
(53, 'Magi Board', 1),
(54, 'Paper clip', 1),
(55, 'Paper Cutter', 1),
(56, 'Paper Fastener', 1),
(57, 'Paper weight', 1),
(58, 'Papers', 1),
(59, 'Pen', 1),
(60, 'Pencil', 1),
(61, 'Pens', 1),
(62, 'Photocopy Paper', 1),
(63, 'Receipt Book', 1),
(64, 'Requisition forms', 1),
(65, 'Rubber Band', 1),
(66, 'Rulers', 1),
(67, 'Slips Books', 1),
(68, 'Stick Pad', 1),
(69, 'Stickers', 1),
(70, 'T.Sheet', 1),
(71, 'Tape', 1),
(72, 'Tippex', 1),
(73, 'Twine Ball', 1),
(74, 'Warrants Books', 1),
(75, 'Wrapping Papers', 1),
(76, 'Slips Books CSC', 1),
(77, 'Ink', 2),
(78, 'Toner', 2),
(79, 'Battery', 3),
(80, 'CD', 3),
(81, 'CD Box', 3),
(82, 'Diskettes', 3),
(83, 'DV cam Tapes', 3),
(84, 'DVD', 3),
(85, 'Extension Code', 3),
(86, 'Scissors', 4),
(87, 'Stapler Mac', 4),
(88, 'Stapler Pin', 4),
(89, 'Plate', 7),
(90, 'Tyre', 8);

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`id`, `name`) VALUES
(1, 'consumable'),
(2, 'assets');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'User'),
(7, 'Department Heads'),
(8, 'Store Manager'),
(9, 'Store Keeper'),
(10, 'Department Cleark'),
(11, 'System Administrator'),
(12, 'Senior Assistant Bursar'),
(13, 'Deputy Bursar'),
(14, 'Procurement Clerk');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `stock_number` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_number` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `supplier_id` int(11) NOT NULL,
  `stock_request_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `stock_number`, `invoice_number`, `date`, `supplier_id`, `stock_request_id`, `created_by`) VALUES
(69, 'SN001', 'SM-3000', '2018-11-22', 7, 22, 8),
(70, 'SN003', '12', '2019-01-21', 8, 25, 2),
(71, 'SN003', '13', '2019-01-21', 9, 26, 2),
(72, 'SN003', '13', '2019-01-22', 14, 27, 2);

-- --------------------------------------------------------

--
-- Table structure for table `stock_items`
--

CREATE TABLE `stock_items` (
  `id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `stock_request_items_id` int(11) NOT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `tax` decimal(6,2) DEFAULT NULL,
  `asset_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcode` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_items`
--

INSERT INTO `stock_items` (`id`, `stock_id`, `stock_request_items_id`, `unit_price`, `quantity`, `tax`, `asset_code`, `barcode`) VALUES
(107, 69, 116, '50.00', 100, '3.00', NULL, NULL),
(108, 69, 117, '100.00', 100, '2.00', NULL, NULL),
(109, 69, 118, '20.00', 50, '0.00', NULL, NULL),
(110, 69, 119, '3000.00', 10, '10.00', NULL, NULL),
(111, 69, 120, '500.00', 5, '0.00', NULL, NULL),
(112, 69, 121, '400.00', 500, '0.00', NULL, NULL),
(113, 69, 122, '450.00', 500, '0.00', NULL, NULL),
(114, 70, 127, '50.00', 1, '0.00', NULL, NULL),
(115, 70, 128, '42.00', 2, '0.00', NULL, NULL),
(116, 70, 129, '5.00', 1, '0.00', NULL, NULL),
(117, 71, 134, '0.00', 2, '0.00', NULL, NULL),
(118, 71, 135, '0.00', 2, '0.00', NULL, NULL),
(119, 71, 136, '0.00', 3, '0.00', NULL, NULL),
(120, 71, 137, '0.00', 7, '0.00', NULL, NULL),
(121, 72, 141, '5000.00', 100, '0.00', NULL, NULL),
(122, 72, 142, '6000.00', 100, '0.00', NULL, NULL),
(123, 72, 143, '7000.00', 50, '0.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock_request`
--

CREATE TABLE `stock_request` (
  `id` int(11) NOT NULL,
  `stock_request_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `requested_by` int(11) DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_request`
--

INSERT INTO `stock_request` (`id`, `stock_request_number`, `date`, `requested_by`, `approved_at`, `approved_by`, `updated_at`, `completed_at`) VALUES
(22, 'SRN0001', '2018-11-22 01:41:08', 8, '2018-11-22 02:13:36', 11, '2018-11-22 06:02:48', NULL),
(23, 'SRN0002', '2018-11-22 02:03:38', 8, NULL, NULL, NULL, NULL),
(24, 'SRN0004', '2018-11-22 14:23:04', 8, NULL, NULL, NULL, NULL),
(25, 'SRN190118001', '2019-01-18 04:50:22', 2, '2019-01-18 04:50:39', 2, '2019-01-21 09:29:43', NULL),
(26, 'SRN190121001', '2019-01-21 09:32:06', 2, '2019-01-21 09:32:37', 2, '2019-01-21 09:33:19', NULL),
(27, 'SRN190122001', '2019-01-22 04:50:56', 2, '2019-01-22 04:51:09', 2, '2019-01-22 04:52:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock_request_items`
--

CREATE TABLE `stock_request_items` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `stock_request_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `received_quantity` int(11) DEFAULT NULL,
  `last_recieved_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_request_items`
--

INSERT INTO `stock_request_items` (`id`, `product_id`, `stock_request_id`, `quantity`, `received_quantity`, `last_recieved_date`) VALUES
(115, 8, 23, 10, NULL, NULL),
(116, 20, 22, 400, 100, '2018-11-22'),
(117, 28, 22, 100, 100, '2018-11-22'),
(118, 25, 22, 50, 50, '2018-11-22'),
(119, 23, 22, 10, 10, '2018-11-22'),
(120, 24, 22, 5, 5, '2018-11-22'),
(121, 15, 22, 500, 500, '2018-11-22'),
(122, 14, 22, 500, 500, '2018-11-22'),
(123, 5, 24, 100, NULL, NULL),
(127, 14, 25, 2, 1, '2019-01-21'),
(128, 6, 25, 2, 2, '2019-01-21'),
(129, 5, 25, 2, 1, '2019-01-21'),
(134, 14, 26, 2, 2, '2019-01-21'),
(135, 15, 26, 2, 2, '2019-01-21'),
(136, 8, 26, 5, 3, '2019-01-21'),
(137, 7, 26, 10, 7, '2019-01-21'),
(141, 7, 27, 100, 100, '2019-01-22'),
(142, 6, 27, 100, 100, '2019-01-22'),
(143, 5, 27, 100, 50, '2019-01-22');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `doc_no` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reciept_no` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_reg_no` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_reg_date` date DEFAULT NULL,
  `vat_no` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nature_of_business` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `nature_of_business_id` int(11) NOT NULL,
  `is_active` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `doc_no`, `reciept_no`, `company_name`, `phone_1`, `phone_2`, `fax_1`, `fax_2`, `email`, `business_reg_no`, `business_reg_date`, `vat_no`, `nature_of_business`, `contact_person`, `remark`, `created_at`, `updated_at`, `deleted_at`, `nature_of_business_id`, `is_active`) VALUES
(7, 'DOC/2018/001', '51381', 'Easyhome', '0112078169', '0112564553', '0112078169', NULL, 'easyhome.lk@gmail.com', 'PV99461', '2012-07-20', '700098765', NULL, NULL, NULL, '2018-11-21 15:05:57', '2019-01-16 09:57:16', NULL, 2, 1),
(8, 'DOC/2018/002', '18270', 'Asian Electricales', '0112439143', '0112439142', '0112338023', NULL, 'abc@pvt.com', 'PV12933', '2015-07-04', '520322705', NULL, 'ABC Perera', NULL, '2018-11-21 21:36:35', '2018-11-21 21:36:35', NULL, 1, 1),
(9, 'DOC/2018/003', '51848', 'PVC Center', '0112445099', '0112432919', '0112429144', '0112432919', 'pvccenter1@gmail.com', 'PV56485', '2015-07-04', '520344705', NULL, 'VP Gamage', NULL, '2018-11-21 21:41:35', '2018-11-21 21:41:35', NULL, 2, 1),
(10, 'DOC/2018/004', '51935', 'U K Electricals', '0112448646', '0112448633', '0112471836', '0112481836', 'ukelectricals25@hotmail.com', 'PV40847', '1992-07-31', '526664705', NULL, 'GSD Rahuman', NULL, '2018-11-21 21:44:26', '2018-11-21 21:44:26', NULL, 2, 1),
(11, 'DOC/2018/005', '07859', 'Metro Electricals pvt Ltd', '0112327666', '0112527656', '0312327656', '0112327656', 'metroepl@sltnet.lk', 'PV12817', '1992-09-09', '520344705', NULL, 'GS Silva', NULL, '2018-11-21 21:47:39', '2018-11-21 21:47:39', NULL, 4, 1),
(12, 'DOC/2018/006', '51820', 'Orel Corparation(Pvt)Ltd', '0774979210', '08149792000', '0114979563', '01141112100', 'lakshitha@orelcorp.com', 'PV72125', '2013-03-01', '114721255', NULL, 'RR gamage', NULL, '2018-11-21 21:55:54', '2018-11-21 21:55:54', NULL, 5, 1),
(13, 'DOC/2018/007', '51820', 'Electrical Lanka(Pvt)Ltd', '0742289494', '0772289494', '0912289494', '0122289494', 'janith@xon-group.com', 'PV90996', '2013-12-02', '175609962', NULL, 'SD Perera', NULL, '2018-11-21 22:01:44', '2018-11-21 22:13:38', NULL, 1, 1),
(14, 'DOC/2018/008', '51908', 'Ambro Electricals', '0112325623', '0112327923', '0115007923', '0112325000', 'ambroel@sltnet.lk', 'PV07256', '1987-05-16', '409007287', NULL, NULL, NULL, '2018-11-21 22:04:40', '2018-11-21 22:04:40', NULL, 5, 1),
(15, 'DOC/2018/009', '52105', 'M R Electricals', '0115769569', '0115766636', '0112332900', '0112332900', 'gdk@pvt.com', 'PV76110', '2007-02-07', '409007400', NULL, NULL, NULL, '2018-11-21 22:07:44', '2018-11-21 22:07:44', NULL, 2, 1),
(16, 'DOC/2018/010', '54323', 'CBA company Pvt Ltd.', '0118156805', '0114678611', '0115902443', '0118921405', 'cba@gmail.com', 'PV01111', '1973-10-12', '445677287', NULL, NULL, NULL, '2018-11-21 22:10:31', '2018-11-21 22:10:31', NULL, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_address`
--

CREATE TABLE `supplier_address` (
  `id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `number` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_1` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_2` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_has_product`
--

CREATE TABLE `supplier_has_product` (
  `supplier_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE `title` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`id`, `name`) VALUES
(1, 'Mr.'),
(2, 'Miss.'),
(3, 'Mrs.'),
(4, 'Prof.'),
(5, 'Dr.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` int(11) DEFAULT '0',
  `role_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `is_active`, `role_id`, `employee_id`, `deleted_at`) VALUES
(10, 'System Administrator', 'pra@i3cubes.com', '$2y$10$eJDmAWwf3WvOGkRVZzDU.Od80XNMcN.ML8reWAYhRuOEwfu922N0y', 'XacXexf1aPkyopZSaBV774vFtH1V6riH3QWJCIDe37ZjukJIWeALacPBJeCa', '2018-10-11 03:07:55', '2018-11-21 13:07:43', 1, 11, 1, NULL),
(15, 'Store Manager', 'sm@ucsc.cmb.ac.lk', '$2y$10$JqQW8aUg6Xd9ypmX6dzxRO35KIZP7x1Bcoq7kg8AxibvfPat6d1oG', NULL, '2018-11-21 14:09:39', '2019-01-17 06:33:08', 1, 8, 8, NULL),
(16, 'Procurement Clerk', 'pc@ucsc.cmb.ac.lk', '$2y$10$S0nFiQB1DuyIxnOHQTKyaOf.rBxhWHESs8KeU9hbyKveEtUDZh6N6', NULL, '2018-11-21 14:15:52', '2019-01-17 06:33:27', 1, 14, 11, NULL),
(17, 'Department Clerk', 'clerk@ucsc.cmb.ac.lk', '$2y$10$rWxF9y3hTy3cpKn.pq/GxOXbCEAVC3FPBs/VSg2D8lz7JmhMDJCgy', 'qm0DMkqrFNHVDggC7tyBIldA5m9bF4XCWQpWMrrokN389nqzLaXDbZVcJ7X0', '2018-11-22 01:10:48', '2019-01-17 06:33:42', 1, 10, 4, NULL),
(18, 'User_01', 'user@ucsc.cmb.ac.lk', '$2y$10$kHgv16JjlODOXu4QzTDhmePmF1qD8aIFj1ZCDXYc3/XtIP5t4/qM.', NULL, '2018-11-22 01:11:27', '2019-01-17 05:57:10', 1, 1, 3, NULL),
(19, 'System Administrator', 'tknpeiris@gmail.com', '$2y$10$lr6GYhpvLaCPh41zmFtPLu84trMaqg7UYkXSq3JmFTnGgd4umN15C', 'vDkb7ibjj6KxK9Vtfo4s0f2N8LlwR5Gv7FpcIh2uOCeLX0lFZuCn3CD5AFLU', '2019-01-16 09:35:13', '2019-01-17 06:33:58', 1, 11, 2, NULL),
(20, 'Department Head', 'head@ucsc.cmb.ac.lk', '$2y$10$.D7l28SoQKbQKn9ycSdkN.y2qry8r0lC.1bC4UnJPck8Q3cFbwnSa', '22hN214EnkbAQTfjQNGi0N19uHn5BBc2GeCFnJX7v2CRIG07BckhZTo7uiMm', '2019-01-17 06:19:40', '2019-01-17 06:34:12', 1, 7, 5, NULL),
(21, 'Storekeeper', 'storekeeper@ucsc.cmb.ac.lk', '$2y$10$vSRnyuSbVyKbDbOeESLMMeRiIc685SaGkQzHbSJwDUBXuZN7ioxuS', NULL, '2019-01-17 06:20:22', '2019-01-17 06:34:26', 1, 9, 6, NULL),
(22, 'Senior Assistant Bursar', 'sab@ucsc.cmb.ac.lk', '$2y$10$d7CQWYlXgcKIRj7YXGIpfO6bhI6KX9JUNK6BCVMFfnkhdCz80AiF6', NULL, '2019-01-17 06:23:14', '2019-01-17 06:34:39', 1, 12, 7, NULL),
(23, 'Deputy Bursar', 'db@ucsc.cmb.ac.lk', '$2y$10$LhyJBm7A999fKDhqWoGH2uCxH2oFykZ8EdT9szIy/6p0bRYw7iUq.', NULL, '2019-01-17 06:23:50', '2019-01-17 06:34:53', 1, 13, 9, NULL),
(24, 'Department Clerk2', 'clerk2@ucsc.cmb.ac.lk', '$2y$10$orWRecbinvLG64wf3dB9HOrqivzw08QDxDdwRTWV1SA.cTsQugzka', 'JV0pIj8lFxjQEdMIzlnOWrQ6VMfHwYasI0R0YJwOtcQJlz1SQs8Exe8x17sg', '2019-01-17 06:39:23', '2019-01-17 06:39:23', 1, 10, 10, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_division_employee1_idx` (`head_employee_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_employee_title_idx` (`title_id`),
  ADD KEY `fk_employee_gender1_idx` (`gender_id`),
  ADD KEY `fk_employee_marital_status1_idx` (`marital_status_id`),
  ADD KEY `fk_employee_designation1_idx` (`designation_id`),
  ADD KEY `fk_employee_division1_idx` (`division_id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_inventory_product1_idx` (`product_id`),
  ADD KEY `fk_inventory_stock1_idx` (`stock_id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_log_log_type1_idx` (`log_type_id`),
  ADD KEY `fk_log_users1_idx` (`users_id`);

--
-- Indexes for table `log_type`
--
ALTER TABLE `log_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marital_status`
--
ALTER TABLE `marital_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_has_permissions`
--
ALTER TABLE `module_has_permissions`
  ADD PRIMARY KEY (`module_id`,`permissions_id`),
  ADD KEY `fk_module_has_permissions_permissions1_idx` (`permissions_id`),
  ADD KEY `fk_module_has_permissions_module1_idx` (`module_id`);

--
-- Indexes for table `nature_of_business`
--
ALTER TABLE `nature_of_business`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_privileges_role1_idx` (`role_id`),
  ADD KEY `fk_privileges_module1_idx` (`module_id`);

--
-- Indexes for table `privileges_has_permissions`
--
ALTER TABLE `privileges_has_permissions`
  ADD PRIMARY KEY (`privileges_id`,`permissions_id`),
  ADD KEY `fk_privileges_has_permissions_permissions1_idx` (`permissions_id`),
  ADD KEY `fk_privileges_has_permissions_privileges1_idx` (`privileges_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_product_sub_category1_idx` (`product_sub_category_id`),
  ADD KEY `fk_product_product_type1_idx` (`product_type_id`),
  ADD KEY `fk_product_product_status1_idx` (`product_status_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_issue`
--
ALTER TABLE `product_issue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_issue_product_request1_idx` (`product_request_id`),
  ADD KEY `fk_product_issue_employee1_idx` (`issued_by`);

--
-- Indexes for table `product_issue_items`
--
ALTER TABLE `product_issue_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_issue_items_product_issue1_idx` (`product_issue_id`),
  ADD KEY `fk_product_issue_items_product_request_items1_idx` (`product_request_items_id`),
  ADD KEY `fk_product_issue_items_stock_items1_idx` (`stock_items_id`);

--
-- Indexes for table `product_issue_items_stocks`
--
ALTER TABLE `product_issue_items_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_issue_items_stocks_product_issue_items1_idx` (`product_issue_items_id`),
  ADD KEY `fk_product_issue_items_stocks_stock1_idx` (`stock_id`);

--
-- Indexes for table `product_request`
--
ALTER TABLE `product_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_request_employee1_idx` (`requested_by`),
  ADD KEY `fk_product_request_employee2_idx` (`approved_by`),
  ADD KEY `fk_product_request_employee3_idx` (`confirmed_by`),
  ADD KEY `fk_product_request_employee4_idx` (`divisional_head_id`),
  ADD KEY `fk_product_request_division1_idx` (`requested_division_id`);

--
-- Indexes for table `product_request_items`
--
ALTER TABLE `product_request_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_request_items_product_request1_idx` (`product_request_id`),
  ADD KEY `fk_product_request_items_product1_idx` (`product_id`);

--
-- Indexes for table `product_status`
--
ALTER TABLE `product_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sub_category`
--
ALTER TABLE `product_sub_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_sub_category_product_category1_idx` (`product_category_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_stock_supplier1_idx` (`supplier_id`),
  ADD KEY `fk_stock_stock_request1_idx` (`stock_request_id`),
  ADD KEY `fk_stock_employee1_idx` (`created_by`);

--
-- Indexes for table `stock_items`
--
ALTER TABLE `stock_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_stock_items_stock1_idx` (`stock_id`),
  ADD KEY `fk_stock_items_stock_request_items1_idx` (`stock_request_items_id`);

--
-- Indexes for table `stock_request`
--
ALTER TABLE `stock_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_stock_request_employee1_idx` (`requested_by`),
  ADD KEY `fk_stock_request_employee2_idx` (`approved_by`);

--
-- Indexes for table `stock_request_items`
--
ALTER TABLE `stock_request_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_stock_request_items_product1_idx` (`product_id`),
  ADD KEY `fk_stock_request_items_stock_request1_idx` (`stock_request_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_supplier_nature_of_business1_idx` (`nature_of_business_id`);

--
-- Indexes for table `supplier_address`
--
ALTER TABLE `supplier_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_supplier_address_supplier1_idx` (`supplier_id`);

--
-- Indexes for table `supplier_has_product`
--
ALTER TABLE `supplier_has_product`
  ADD PRIMARY KEY (`supplier_id`,`product_id`),
  ADD KEY `fk_supplier_has_product_product1_idx` (`product_id`),
  ADD KEY `fk_supplier_has_product_supplier1_idx` (`supplier_id`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `fk_users_role1_idx` (`role_id`),
  ADD KEY `fk_users_employee1_idx` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `division`
--
ALTER TABLE `division`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;

--
-- AUTO_INCREMENT for table `log_type`
--
ALTER TABLE `log_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `marital_status`
--
ALTER TABLE `marital_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nature_of_business`
--
ALTER TABLE `nature_of_business`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_issue`
--
ALTER TABLE `product_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `product_issue_items`
--
ALTER TABLE `product_issue_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `product_issue_items_stocks`
--
ALTER TABLE `product_issue_items_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_request`
--
ALTER TABLE `product_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `product_request_items`
--
ALTER TABLE `product_request_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `product_status`
--
ALTER TABLE `product_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_sub_category`
--
ALTER TABLE `product_sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `stock_items`
--
ALTER TABLE `stock_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `stock_request`
--
ALTER TABLE `stock_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `stock_request_items`
--
ALTER TABLE `stock_request_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `supplier_address`
--
ALTER TABLE `supplier_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `division`
--
ALTER TABLE `division`
  ADD CONSTRAINT `fk_division_employee1` FOREIGN KEY (`head_employee_id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `fk_employee_designation1` FOREIGN KEY (`designation_id`) REFERENCES `designation` (`id`),
  ADD CONSTRAINT `fk_employee_division1` FOREIGN KEY (`division_id`) REFERENCES `division` (`id`),
  ADD CONSTRAINT `fk_employee_gender1` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`),
  ADD CONSTRAINT `fk_employee_marital_status1` FOREIGN KEY (`marital_status_id`) REFERENCES `marital_status` (`id`),
  ADD CONSTRAINT `fk_employee_title` FOREIGN KEY (`title_id`) REFERENCES `title` (`id`);

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `fk_inventory_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `fk_inventory_stock1` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`id`);

--
-- Constraints for table `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `fk_log_log_type1` FOREIGN KEY (`log_type_id`) REFERENCES `log_type` (`id`),
  ADD CONSTRAINT `fk_log_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `module_has_permissions`
--
ALTER TABLE `module_has_permissions`
  ADD CONSTRAINT `fk_module_has_permissions_module1` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`),
  ADD CONSTRAINT `fk_module_has_permissions_permissions1` FOREIGN KEY (`permissions_id`) REFERENCES `permissions` (`id`);

--
-- Constraints for table `privileges`
--
ALTER TABLE `privileges`
  ADD CONSTRAINT `fk_privileges_module1` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_privileges_role1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `privileges_has_permissions`
--
ALTER TABLE `privileges_has_permissions`
  ADD CONSTRAINT `fk_privileges_has_permissions_permissions1` FOREIGN KEY (`permissions_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_privileges_has_permissions_privileges1` FOREIGN KEY (`privileges_id`) REFERENCES `privileges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_product_status1` FOREIGN KEY (`product_status_id`) REFERENCES `product_status` (`id`),
  ADD CONSTRAINT `fk_product_product_sub_category1` FOREIGN KEY (`product_sub_category_id`) REFERENCES `product_sub_category` (`id`),
  ADD CONSTRAINT `fk_product_product_type1` FOREIGN KEY (`product_type_id`) REFERENCES `product_type` (`id`);

--
-- Constraints for table `product_issue`
--
ALTER TABLE `product_issue`
  ADD CONSTRAINT `fk_product_issue_employee1` FOREIGN KEY (`issued_by`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `fk_product_issue_product_request1` FOREIGN KEY (`product_request_id`) REFERENCES `product_request` (`id`);

--
-- Constraints for table `product_issue_items`
--
ALTER TABLE `product_issue_items`
  ADD CONSTRAINT `fk_product_issue_items_product_issue1` FOREIGN KEY (`product_issue_id`) REFERENCES `product_issue` (`id`),
  ADD CONSTRAINT `fk_product_issue_items_product_request_items1` FOREIGN KEY (`product_request_items_id`) REFERENCES `product_request_items` (`id`),
  ADD CONSTRAINT `fk_product_issue_items_stock_items1` FOREIGN KEY (`stock_items_id`) REFERENCES `stock_items` (`id`);

--
-- Constraints for table `product_issue_items_stocks`
--
ALTER TABLE `product_issue_items_stocks`
  ADD CONSTRAINT `fk_product_issue_items_stocks_product_issue_items1` FOREIGN KEY (`product_issue_items_id`) REFERENCES `product_issue_items` (`id`),
  ADD CONSTRAINT `fk_product_issue_items_stocks_stock1` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`id`);

--
-- Constraints for table `product_request`
--
ALTER TABLE `product_request`
  ADD CONSTRAINT `fk_product_request_division1` FOREIGN KEY (`requested_division_id`) REFERENCES `division` (`id`),
  ADD CONSTRAINT `fk_product_request_employee1` FOREIGN KEY (`requested_by`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `fk_product_request_employee2` FOREIGN KEY (`approved_by`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `fk_product_request_employee3` FOREIGN KEY (`confirmed_by`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `fk_product_request_employee4` FOREIGN KEY (`divisional_head_id`) REFERENCES `employee` (`id`);

--
-- Constraints for table `product_request_items`
--
ALTER TABLE `product_request_items`
  ADD CONSTRAINT `fk_product_request_items_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `fk_product_request_items_product_request1` FOREIGN KEY (`product_request_id`) REFERENCES `product_request` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_sub_category`
--
ALTER TABLE `product_sub_category`
  ADD CONSTRAINT `fk_product_sub_category_product_category1` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `fk_stock_employee1` FOREIGN KEY (`created_by`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `fk_stock_stock_request1` FOREIGN KEY (`stock_request_id`) REFERENCES `stock_request` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_stock_supplier1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`);

--
-- Constraints for table `stock_items`
--
ALTER TABLE `stock_items`
  ADD CONSTRAINT `fk_stock_items_stock1` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_stock_items_stock_request_items1` FOREIGN KEY (`stock_request_items_id`) REFERENCES `stock_request_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stock_request`
--
ALTER TABLE `stock_request`
  ADD CONSTRAINT `fk_stock_request_employee1` FOREIGN KEY (`requested_by`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_stock_request_employee2` FOREIGN KEY (`approved_by`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stock_request_items`
--
ALTER TABLE `stock_request_items`
  ADD CONSTRAINT `fk_stock_request_items_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_stock_request_items_stock_request1` FOREIGN KEY (`stock_request_id`) REFERENCES `stock_request` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `fk_supplier_nature_of_business1` FOREIGN KEY (`nature_of_business_id`) REFERENCES `nature_of_business` (`id`);

--
-- Constraints for table `supplier_address`
--
ALTER TABLE `supplier_address`
  ADD CONSTRAINT `fk_supplier_address_supplier1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`);

--
-- Constraints for table `supplier_has_product`
--
ALTER TABLE `supplier_has_product`
  ADD CONSTRAINT `fk_supplier_has_product_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `fk_supplier_has_product_supplier1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_employee1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `fk_users_role1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
