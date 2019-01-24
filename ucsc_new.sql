-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 04, 2019 at 05:38 AM
-- Server version: 5.5.56-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ucsc_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `cadre`
--

CREATE TABLE IF NOT EXISTS `cadre` (
  `id` int(11) NOT NULL,
  `department` int(11) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `positions` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cadre`
--

INSERT INTO `cadre` (`id`, `department`, `designation`, `positions`) VALUES
(2, 2, '1', 1),
(3, 1, '115', 1),
(4, 3, '102', 1),
(5, 1, '33', 1),
(6, 3, '33', 1),
(7, 4, '33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE IF NOT EXISTS `designation` (
  `r_id` int(11) NOT NULL,
  `desig_id` varchar(250) NOT NULL,
  `desig_type` varchar(250) NOT NULL,
  `des_name` varchar(222) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `salary_code` varchar(20) NOT NULL,
  `service` varchar(20) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`r_id`, `desig_id`, `desig_type`, `des_name`, `status`, `salary_code`, `service`, `comment`) VALUES
(1, '1', 'Academic', 'Director', 1, 'U-AC 5', 'Academic', ''),
(101, '101', 'Academic', 'Works aid', 0, 'U -PL 1', 'Dept', ''),
(102, '102', 'Academic', 'Instructor In Computer Technology', 1, 'U -AS 2', 'AS', ''),
(103, '103', 'Academic', 'Management Assistant', 0, 'U -MN 1', 'UMAS', ''),
(107, '104', 'Academic', 'Senior Assistant Registrar / Deputy Registrar', 1, 'U -Ex 2', 'UA&FS', ''),
(109, '108', 'Academic', 'Management Assistant', 0, 'U - EX 2', 'UMAS', ''),
(113, '110', 'Academic', 'Public Relation Officer', 1, 'U - EX 1', 'Dept', ''),
(114, '114', 'Academic', 'Media Officer', 1, 'U - AC 3', 'Dept', ''),
(116, '116', 'Academic', 'Technical Officer (Media)', 1, 'U - MT 1', 'UTS', ''),
(117, '117', 'Academic', 'Management Assistant', 0, 'U - MN 1', 'UMAS', ''),
(118, '118', 'Academic', 'Scientific Assistant', 1, 'U - AS 1,U -AS 2', 'AS', ''),
(120, '119', 'Academic', 'Professor', 1, 'U - AC 5 ', 'Academic', ''),
(122, '121', 'Academic', 'Associate Professor', 1, 'U - AC 4 ', 'Academic', ''),
(124, '123', 'Academic', 'Temporary Instructor', 1, 'Fixed', 'Contract', ''),
(127, '125', 'Academic', 'Senior Lecturer', 1, 'Senior Lecturer ', 'Senior Lecturer ', ''),
(128, '128', 'Academic', 'Lecturer', 1, 'Lecturer ', 'Lecturer ', ''),
(129, '129', 'Academic', 'Deputy Director', 1, 'DepD', 'DepD', ''),
(130, '130', 'Academic', 'Senior Professor', 1, 'SP', 'SP', ''),
(131, '131', 'Academic', 'Lecturer', 0, 'Lec', 'Lec', ''),
(132, '132', 'Academic', 'Assistant Lecturer', 1, 'AL', 'AL', ''),
(133, '133', 'Non-Academic', 'Electrician', 1, 'U-PL 3', 'U-PL 3', ''),
(134, '134', 'Non-Academic', 'System Engineer', 1, 'U-AS2', 'U-AS2', ''),
(135, '135', 'Academic', 'Lab Attendant', 1, 'U-PL1', 'U-PL1', ''),
(136, '136', 'Academic', 'Network Assistant', 1, 'U-MN 1', 'U-MN 1', ''),
(138, '137', 'Non-Academic', 'Care-Taker/Boy''s Hostel', 1, 'U-PL 1', 'U-PL 1', ''),
(141, '139', 'Non-Academic', 'Caretaker - Women''s Hostel', 1, 'U-PL 1', 'U-PL 1', ''),
(143, '142', 'Non-Academic', 'Content Developer', 1, 'U-PL1', 'U-PL1', ''),
(144, '144', 'Academic Support', 'Instructional Designer', 1, 'U-AS 1', 'U-AS 1', ''),
(145, '145', 'Non-Academic', 'System Analyst', 1, '', '', ''),
(146, '146', 'Non-Academic', 'Care-Taker', 1, '', '', ''),
(147, '147', 'Non-Academic', 'Senior Assiatnt Bursar', 1, '', '', ''),
(148, '148', 'Non-Academic', 'Computer Applications Assistant', 1, '', '', ''),
(149, '149', 'Non-Academic', 'Senior Staff Assistant', 1, '', '', ''),
(2, '2', 'Academic', 'Assistant Registrar', 1, 'U-EX 1', 'UA&FS', ''),
(3, '3', 'Academic', 'Management Assistant', 1, 'U-MN 1, U - EX 2', 'UMAS', ''),
(33, '33', 'Academic', 'Driver', 1, 'U-pL 3', 'Uds', ''),
(34, '34', 'Academic', 'Cycle Orderly Cum Three Wheeler Driver', 1, 'U-pL 2', 'Dept', ''),
(66, '35', 'Academic', 'Programmer Cum Systems Analyst', 1, 'U-AS 2', 'AS', ''),
(4, '4', 'Academic', 'Works Aid', 1, 'U-pL 1', 'UWAS', ''),
(5, '5', 'Academic', 'Senior Assistant Registrar / Deputy Registrar', 0, 'U-EX 2', 'UA&FS', ''),
(32, '6', 'Academic', 'Telephone Operator Cum Receptionist', 1, '', 'Dept', ''),
(69, '67', 'Academic', 'Senior Assistant Librarian', 1, 'U-AC 3', 'Academic', ''),
(77, '70', 'Academic', 'Works Engineer', 1, 'U-EX 1,U-EX 2', 'Dept', ''),
(78, '78', 'Academic', ' Engineer ( Computer Maintenance)', 1, 'U- AS 2', 'AS', ''),
(79, '79', 'Academic', 'Technical Officer', 1, 'U- MT 1', 'UTS', ''),
(91, '80', 'Academic', 'Assiatant Network manager', 1, 'U - AS 2', 'AS', ''),
(94, '92', 'Academic', 'Technical Officer (ICT)', 1, 'U -MT 1', 'UTS', ''),
(100, '95', 'Academic', 'Lab Attendant', 1, 'U -PL 2', 'Dept', '');

-- --------------------------------------------------------

--
-- Table structure for table `des_grade`
--

CREATE TABLE IF NOT EXISTS `des_grade` (
  `r_id` int(11) NOT NULL,
  `desig_id` varchar(222) NOT NULL,
  `class_grade_id` varchar(222) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `des_grade`
--

INSERT INTO `des_grade` (`r_id`, `desig_id`, `class_grade_id`) VALUES
(5, '2', 'II'),
(6, '2', 'I'),
(12, '4', 'III'),
(13, '4', 'II'),
(14, '4', 'I'),
(15, '4', 'SpI'),
(16, '1', 'I'),
(17, '5', 'II'),
(18, '5', 'I'),
(19, '6', 'III'),
(20, '6', 'II'),
(21, '6', 'I'),
(22, '33', 'III'),
(23, '33', 'II'),
(24, '33', 'I'),
(25, '33', 'Spl'),
(26, '34', 'III'),
(27, '34', 'II'),
(28, '34', 'I'),
(29, '34', 'Spl'),
(30, '35', 'II'),
(31, '35', 'I'),
(32, '67', 'II'),
(33, '67', 'I'),
(34, '70', 'II'),
(35, '70', 'I'),
(36, '78', 'II'),
(37, '78', 'I'),
(38, '79', 'II'),
(39, '79', 'I'),
(40, '79', 'III'),
(41, '80', 'II'),
(42, '80', 'I'),
(43, '92', 'II'),
(44, '92', 'I'),
(45, '92', 'III'),
(46, '95', 'II'),
(47, '95', 'I'),
(48, '95', 'III'),
(49, '101', 'II'),
(50, '101', 'I'),
(51, '101', 'III'),
(52, '102', 'II'),
(53, '102', 'I'),
(54, '103', 'II'),
(55, '103', 'I'),
(56, '103', 'III'),
(57, '104', 'II'),
(58, '104', 'I'),
(62, '108', 'II'),
(63, '108', 'I'),
(64, '110', 'II'),
(65, '110', 'I'),
(66, '115', 'II'),
(67, '115', 'I'),
(68, '116', 'II'),
(69, '116', 'I'),
(70, '116', 'III'),
(71, '117', 'II'),
(72, '117', 'I'),
(73, '117', 'III'),
(74, '118', 'II'),
(75, '118', 'I'),
(76, '125', 'I'),
(77, '125', 'II'),
(78, '3', 'III'),
(79, '3', 'II'),
(80, '3', 'I'),
(81, '128', '-'),
(82, '128', 'Probationary '),
(89, '134', 'I'),
(90, '134', 'II'),
(91, '135', 'I'),
(92, '135', 'II'),
(93, '135', 'III'),
(94, '136', 'I'),
(95, '136', 'II'),
(96, '136', 'III'),
(97, '136', 'IIIA'),
(104, '142', 'I'),
(105, '142', 'II'),
(106, '142', 'III'),
(107, '137', 'I'),
(108, '137', 'II'),
(109, '137', 'III'),
(110, '139', 'I'),
(111, '139', 'II'),
(112, '139', 'III'),
(113, '133', 'I'),
(114, '133', 'II'),
(115, '133', 'III'),
(116, '144', 'I'),
(117, '144', 'II'),
(118, '144', 'III'),
(119, '148', 'I');

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE IF NOT EXISTS `division` (
  `dept_id` int(250) NOT NULL,
  `dept_name` varchar(250) NOT NULL,
  `head` int(250) NOT NULL,
  `email` varchar(8) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `status` int(11) NOT NULL,
  `area` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`dept_id`, `dept_name`, `head`, `email`, `start`, `end`, `status`, `area`) VALUES
(1, 'Not yet Assign', 0, '', '0000-00-00', '0000-00-00', 1, ''),
(2, 'Office of the Director', 5, 'kph', '0000-00-00', '0000-00-00', 1, ''),
(3, 'Establishment Division', 68, 'sdc', '0000-00-00', '0000-00-00', 1, ''),
(4, 'General Adminstration Division', 66, 'kkk', '0000-00-00', '0000-00-00', 1, ''),
(5, 'Academic and Publication Division', 87, 'dra', '0000-00-00', '0000-00-00', 1, ''),
(6, 'Financial Division', 150, 'emg', '0000-00-00', '0000-00-00', 1, ''),
(7, 'Examination and Registration Division', 69, 'dkm', '0000-00-00', '0000-00-00', 1, ''),
(8, 'Library', 0, '', '0000-00-00', '0000-00-00', 1, ''),
(9, 'Postgraduate, Research and Project Division', 70, 'msw', '0000-00-00', '0000-00-00', 1, ''),
(10, 'Engineering and Maintenance Division', 0, '', '0000-00-00', '0000-00-00', 1, ''),
(11, 'Network Operating Centre', 42, 'vsh', '0000-00-00', '0000-00-00', 1, ''),
(12, 'Computer Service Centre', 23, 'klj', '0000-00-00', '0000-00-00', 1, ''),
(13, 'Professional Development Centre', 0, '', '0000-00-00', '0000-00-00', 1, ''),
(14, 'External Degree Centre', 50, 'lpj', '0000-00-00', '0000-00-00', 1, ''),
(15, 'Advanced Digital Media Technology Centre', 53, 'stn', '0000-00-00', '0000-00-00', 1, ''),
(16, 'Center for Digital Forensics', 0, '', '0000-00-00', '0000-00-00', 1, ''),
(17, 'Department of Computation and Intelligent Systems', 7, 'aja', '0000-00-00', '0000-00-00', 1, ''),
(18, 'Department of Communication and Media Technologies', 18, 'spw', '0000-00-00', '0000-00-00', 1, ''),
(19, 'Department of Information Systems Engineering', 51, 'eno', '0000-00-00', '0000-00-00', 1, ''),
(20, 'E - Learning Center', 17, 'ddk', '0000-00-00', '0000-00-00', 1, ''),
(22, 'test', 82, 'tcg', '2018-12-01', '0000-00-00', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `division_bk_04-12-2018`
--

CREATE TABLE IF NOT EXISTS `division_bk_04-12-2018` (
  `dept_id` int(250) NOT NULL,
  `dept_name` varchar(250) NOT NULL,
  `head` varchar(250) NOT NULL,
  `email` varchar(8) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `status` int(11) NOT NULL,
  `area` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `division_bk_04-12-2018`
--

INSERT INTO `division_bk_04-12-2018` (`dept_id`, `dept_name`, `head`, `email`, `start`, `end`, `status`, `area`) VALUES
(1, 'Not yet Assign', '', '', '0000-00-00', '0000-00-00', 1, ''),
(2, 'Office of the Director', '000147', 'kph', '0000-00-00', '0000-00-00', 1, ''),
(3, 'Establishment Division', '000468', 'sdc', '0000-00-00', '0000-00-00', 1, ''),
(4, 'General Adminstration Division', '000500', 'kkk', '0000-00-00', '0000-00-00', 1, ''),
(5, 'Academic and Publication Division', '000624', 'dra', '0000-00-00', '0000-00-00', 1, ''),
(6, 'Financial Division', '000456', 'emg', '0000-00-00', '0000-00-00', 1, ''),
(7, 'Examination and Registration Division', '000478', 'dkm', '0000-00-00', '0000-00-00', 1, ''),
(8, 'Library', '', '', '0000-00-00', '0000-00-00', 1, ''),
(9, 'Postgraduate, Research and Project Division', '000582', 'msw', '0000-00-00', '0000-00-00', 1, ''),
(10, 'Engineering and Maintenance Division', '', '', '0000-00-00', '0000-00-00', 1, ''),
(11, 'Network Operating Centre', '000393', 'vsh', '0000-00-00', '0000-00-00', 1, ''),
(12, 'Computer Service Centre', '000042', 'klj', '0000-00-00', '0000-00-00', 1, ''),
(13, 'Professional Development Centre', '57', '', '0000-00-00', '0000-00-00', 1, ''),
(14, 'External Degree Centre', '000007', 'lpj', '0000-00-00', '0000-00-00', 1, ''),
(15, 'Advanced Digital Media Technology Centre', '000006', 'stn', '0000-00-00', '0000-00-00', 1, ''),
(16, 'Center for Digital Forensics', '', '', '0000-00-00', '0000-00-00', 1, ''),
(17, 'Department of Computation and Intelligent Systems', '000140', 'aja', '0000-00-00', '0000-00-00', 1, ''),
(18, 'Department of Communication and Media Technologies', '000148', 'spw', '0000-00-00', '0000-00-00', 1, ''),
(19, 'Department of Information Systems Engineering', '000053', 'jsg', '0000-00-00', '0000-00-00', 1, ''),
(20, 'E - Learning Center', '000137', 'ddk', '0000-00-00', '0000-00-00', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `division_old`
--

CREATE TABLE IF NOT EXISTS `division_old` (
  `r_id` int(11) NOT NULL,
  `dept_id` varchar(250) NOT NULL,
  `dept_name` varchar(250) NOT NULL,
  `head` varchar(250) NOT NULL,
  `email` varchar(8) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `status` int(11) NOT NULL,
  `area` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `r_id` int(11) NOT NULL,
  `emp_id` varchar(220) NOT NULL,
  `emp_email` varchar(10) NOT NULL,
  `fp_id` varchar(5) NOT NULL,
  `emp_fullname` varchar(220) NOT NULL,
  `emp_firstname` varchar(250) NOT NULL,
  `emp_surname` varchar(250) NOT NULL,
  `emp_initials` varchar(250) NOT NULL,
  `emp_dob` date NOT NULL,
  `emp_nic` varchar(222) NOT NULL,
  `emp_gender` varchar(250) NOT NULL,
  `emp_title` varchar(250) NOT NULL,
  `emp_permanent_address` text NOT NULL,
  `emp_tmp_address` text NOT NULL,
  `emp_offic_num` varchar(20) NOT NULL,
  `emp_mobile_num` varchar(20) NOT NULL,
  `emp_designation` varchar(250) NOT NULL,
  `emp_designation_grade` varchar(222) DEFAULT NULL,
  `emp_des_start_date` date DEFAULT NULL,
  `emp_last_increament_date` date NOT NULL,
  `increament_scale` int(11) NOT NULL,
  `emp_state` varchar(250) NOT NULL,
  `emp_type` varchar(250) NOT NULL,
  `emp_divison_id` varchar(250) NOT NULL,
  `emp_first_emp_date` date NOT NULL,
  `emp_pic` varchar(220) NOT NULL,
  `emp_qulif_sort_form` varchar(250) NOT NULL,
  `emp_comment` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`r_id`, `emp_id`, `emp_email`, `fp_id`, `emp_fullname`, `emp_firstname`, `emp_surname`, `emp_initials`, `emp_dob`, `emp_nic`, `emp_gender`, `emp_title`, `emp_permanent_address`, `emp_tmp_address`, `emp_offic_num`, `emp_mobile_num`, `emp_designation`, `emp_designation_grade`, `emp_des_start_date`, `emp_last_increament_date`, `increament_scale`, `emp_state`, `emp_type`, `emp_divison_id`, `emp_first_emp_date`, `emp_pic`, `emp_qulif_sort_form`, `emp_comment`) VALUES
(4, '000134', 'gnw', '', 'Gihan Nilendra Wikramanayake', 'Gihan', 'Wikramanayake', 'GN', '1960-01-17', '600170490V', 'male', 'Prof', '', '', '0112581245', '', '1', '16', '2016-02-01', '0000-00-00', 0, 'inactive', 'permanent', '19', '1988-03-01', '000134_3864802556_image.jpg', '', 0),
(5, '000147', 'kph', '', 'Kamalanath Priyantha Hewagamage', 'Kamalanath ', 'Hewagamage', 'KP', '1966-05-24', '661450797v', 'male', 'Prof', 'No. 731/3, Matewala Road, Arauwala, Pannipitiya', 'No. 731/3, Matewala Road, Arauwala, Pannipitiya', '', '0714239529', '1', '16', '0000-00-00', '0000-00-00', 0, 'active', 'permanent', '2', '0000-00-00', '000147_2822422930_image.jpg', '', 0),
(6, '00596', 'shm', '', 'Ilangakoon Pathirathnalage Shiromi Manjula', 'Shiromi', 'Ilangakoon', 'I P', '1993-05-16', '936370870V', 'female', 'Ms', 'No 195/9 Eluwapitiya Veyangoda', 'No 195/9 Eluwapitiya Veyangoda', '8933', '0752343477', '0', '', '2017-01-02', '0000-00-00', 0, 'inactive', 'contract', '3', '2014-03-03', '00596_5326907579_image.jpg', '', 0),
(7, '000140', 'aja', '', 'Don Ajantha Sanjeewa Atukorale', 'Ajantha', 'Atukorale', 'DAS', '1968-06-23', '681750800V', 'male', 'Dr', '21/1, Singhe Road, Keranga Pokuna, Wattala', '21/1, Singhe Road, Keranga Pokuna, Wattala', '0112581245', '0713882929', '125', '76', '2009-08-24', '0000-00-00', 0, 'active', 'permanent', '17', '1997-07-10', '000140_6451316057_image.jpg', '', 0),
(8, '000278', 'asg', '', 'Anuradha Sepalika Gunathilake', 'Anuradha', 'Gunathilake', 'A S ', '1981-05-20', '816410649V', 'female', 'Ms', '', '248/3 Sri Sarananda Mawatha, Kandaliyadda Paluwa, Ganemulla', '0112158932', '0716905382', '3', '9', '2013-04-17', '0000-00-00', 0, 'active', 'permanent', '3', '2013-04-17', '', '', 0),
(9, '000132', 'ndk', '', 'Nihal Dhanasiri Kodikara', 'Nihal ', 'Kodikara', 'ND', '1955-10-15', '552892100V', 'male', 'Prof', 'No.19, Walauwatta Place, Nawale, Rajagiriya', 'No.19, Walauwatta Place, Nawale, Rajagiriya', '0112581245', '', '130', '', '2009-02-17', '0000-00-00', 0, 'active', 'permanent', '19', '1982-04-01', '', '', 0),
(10, '000160', 'arw', '', 'Aruna Ruwan Weerasinghe', 'Aruna', 'Weerasinghe', 'AR', '1960-06-09', '601610400V', 'male', 'Dr', 'No.16, St. Josephs Road, Nugegoda', 'No.16, St. Josephs Road, Nugegoda', '0112581245', '', '125', '76', '2000-09-21', '0000-00-00', 0, 'active', 'permanent', '17', '1988-05-03', '000160_7177820701_image.jpg', '', 0),
(11, '000133', 'dnr', '', 'Dumidu Nalin Ranasinghe', 'Dumidu', 'Ranasinghe', 'DN', '1960-07-14', '601962241V', 'male', 'Dr', 'No.104, Jayagath Road, Nawinna, Maharagama', 'No.104, Jayagath Road, Nawinna, Maharagama', '0112581245', '', '125', '76', '2000-12-13', '0000-00-00', 0, 'active', 'permanent', '17', '1986-09-08', '000133_1038114994_image.jpg', '', 0),
(12, '000055', 'gkad', '', 'Galloluwege Kapila Asanga Dias', 'Kapila', 'Dias', 'GKA', '1959-09-01', '592450364V', 'male', 'Dr', 'No.16/2, Temple Road, Kalubowila, Dehiwala', 'No.16/2, Temple Road, Kalubowila, Dehiwala', '0112581245', '', '125', '76', '2002-11-01', '0000-00-00', 0, 'active', 'permanent', '19', '1996-11-01', '000055_8399008064_image.jpg', '', 0),
(13, '000135', 'gps', '', 'Gihan Pushpajith Seneviratne', 'Gihan', 'Seneviratne', 'GP', '1963-02-12', '630433550V', 'male', 'Mr', 'No.21/11A, Pepiliyana Mawatha, Kohuwala, Nugegoda', 'No.21/11A, Pepiliyana Mawatha, Kohuwala, Nugegoda', '0112581245', '', '125', '76', '2002-09-24', '0000-00-00', 0, 'active', 'permanent', '17', '1988-03-01', '', '', 0),
(14, '000367', 'amp', '', 'Franciscu Hettige Anne Mindika Premachandra', 'Anne', 'Premachandra', 'FHAM', '1983-11-17', '838221750V', 'female', 'Dr', 'No.7A, Udaya Mawatha, Templers Road, Mount Lavinia', 'No.7A, Udaya Mawatha, Templers Road, Mount Lavinia', '0112581245', '', '128', '81', '2009-05-04', '0000-00-00', 0, 'inactive', 'permanent', '17', '2009-05-04', '000367_5886526250_image.jpg', '', 0),
(15, '000100', 'taw', '', 'Thushani Alwis Weerasinghe', 'Thushani ', 'Weerasinghe', 'TA', '1972-12-21', '728560770V', 'female', 'Dr', 'No.25/6C, Gramberg Watta Road, Maharagama', 'No.25/6C, Gramberg Watta Road, Maharagama', '0112581245', '', '125', '77', '2009-09-23', '0000-00-00', 0, 'active', 'permanent', '19', '2002-10-10', '', '', 0),
(16, '000138', 'nas', '', 'Muthunama Gonnage Noel Antoney Sanath Fernando ', 'Noel ', 'Fernando ', 'MGNAS', '1960-12-10', '603450671V', 'male', 'Dr', 'No.27, Pilicia Mawatha, Hapugoda, Kandana', 'No.27, Pilicia Mawatha, Hapugoda, Kandana', '0112581245', '', '125', '76', '2009-05-06', '0000-00-00', 0, 'active', 'permanent', '19', '1998-01-05', '', '', 0),
(17, '000137', 'ddk', '', 'Damitha Dissakitti Karunaratna', 'Damitha', 'Karunaratna', 'DD', '1960-11-23', '603280598V', 'male', 'Dr', 'Wasantha Withanage Place, Maharagama Road, Mammpe, Piliyandale', 'Wasantha Withanage Place, Maharagama Road, Mammpe, Piliyandale', '0112581245', '', '125', '76', '2006-09-22', '0000-00-00', 0, 'active', 'permanent', '18', '1992-06-01', '000137_5759148905_image.jpg', '', 0),
(18, '000148', 'spw', '', 'Galpayage Don Susantha Prasad Wimalaratne', 'Susantha', 'Wimalaratne', 'GDSP', '1967-11-12', '673170803V', 'male', 'Dr', 'Sanketh, Colombo Road, Pokunuwita', 'Sanketh, Colombo Road, Pokunuwita', '0112581245', '', '125', '77', '2009-08-21', '0000-00-00', 0, 'active', 'permanent', '18', '1996-05-09', '', '', 0),
(19, '000053', 'jsg', '', 'Mestiyage Dona Jeevani Samantha Goonetillake', 'Jeevani', 'Goonetillake', 'MDJS', '1968-08-27', '687401018V', 'female', 'Dr', 'No. 681, Arawwala, Pannipitiya', 'No. 681, Arawwala, Pannipitiya', '0112581245', '', '125', '76', '2010-11-30', '0000-00-00', 0, 'active', 'permanent', '19', '1996-05-15', '', '', 0),
(20, '000144', 'hlp', '', 'Hemakumar Lalith Premaratne', 'Hemakumar ', 'Premaratne', 'HL', '1952-07-22', '522043460V', 'male', 'Dr', '212. High Level Road, Maharagama', '212. High Level Road, Maharagama', '0112581245', '', '125', '76', '2011-05-20', '0000-00-00', 0, 'inactive', 'permanent', '17', '1992-10-01', '', '', 0),
(21, '000142', 'kasun', '', 'Tirimadura Nandika Kasun De Zoysa', 'Nandika', 'De Zoysa', 'TNK', '1971-12-15', '713502456V', 'male', 'Dr', 'Vidyala Mawatha, Ambalangoda', 'Vidyala Mawatha, Ambalangoda', '0112581245', '', '125', '76', '2010-12-21', '0000-00-00', 0, 'active', 'permanent', '18', '1999-01-04', '', '', 0),
(22, '000067', 'cik', '', 'Chamath Indika Keppitiyagama', 'Chamath', 'Keppitiyagama', 'CI', '1969-09-14', '692581857V', 'male', 'Dr', 'No.44/90A, Pahala Karagahamuna, Kadawatha', 'No.44/90A, Pahala Karagahamuna, Kadawatha', '0112581245', '', '125', '76', '2011-11-30', '0000-00-00', 0, 'active', 'permanent', '17', '1998-08-17', '000067_1199211592_image.jpg', '', 0),
(23, '000042', 'klj', '', 'Kithangodage Lakshman Jayartne', 'Lakshman', 'Jayartne', 'KL', '1965-04-21', '651120705V', 'male', 'Dr', '', '', '0112581245', '', '125', '76', '2012-11-20', '0000-00-00', 0, 'active', 'permanent', '18', '1993-06-21', '', '', 0),
(24, '000513', 'rts', '', 'Thambithurai Sritharan', 'Thambithurai', 'Sritharan', 'T', '1962-04-29', '621201158V', 'male', 'Dr', '', '', '0112581245', '', '0', '', '2001-12-08', '0000-00-00', 0, 'active', 'permanent', '19', '1990-05-23', '', '', 0),
(25, '000271', 'aye', '', 'Yamaya Ekanayaka', 'Yamaya', 'Ekanayaka', 'Y', '1972-11-01', '728062070V', 'female', 'Dr', '', '', '', '', '125', '76', '2013-05-23', '0000-00-00', 0, 'inactive', 'permanent', '19', '2007-04-01', '000271_5941088049_image.jpg', '', 0),
(26, '000048', 'sda', '', 'Shiromi Muditha Kumari Dissanayake Arunatileka', 'Shiromi', 'Arunatileka', 'SMKD', '1966-09-01', '667410029V', 'female', 'Dr', 'No.9/2 Mangala Mawatha, Sri Subhothipura, Battaramulla', 'No.9/2 Mangala Mawatha, Sri Subhothipura, Battaramulla', '0112581245', '', '125', '77', '2007-02-27', '0000-00-00', 0, 'active', 'permanent', '19', '1996-05-15', '', '', 0),
(27, '000143', 'hac', '', 'Caldera Hellassege Amithalal', 'Amithalal', 'Caldera', 'HA', '1961-06-04', '611560206V', 'male', 'Dr', 'F/G/1, Samapura Housing Scheme, Colombo 10', 'F/G/1, Samapura Housing Scheme, Colombo 10', '0112581245', '', '125', '76', '2014-02-05', '0000-00-00', 0, 'active', 'permanent', '19', '1991-12-02', '', '', 0),
(28, '000139', 'mks', '', 'Kurukulasuriya Patabendige Malik Kelum Silva', 'Malik', 'Silva', 'KPMK', '1964-09-04', '642480723V', 'male', 'Mr', 'No.101, St Josephs Road, Kanuwana, Ja-ela', 'No.101, St Josephs Road, Kanuwana, Ja-ela', '0112581245', '', '128', '81', '1994-04-07', '0000-00-00', 0, 'active', 'permanent', '18', '1994-04-07', '', '', 0),
(29, '000494', 'wvw', '', 'Welgamage Viraj Welgama', 'Viraj', 'Welgama', 'WV', '1979-02-02', '790330277V', 'male', 'Mr', 'No.19D, Ja-ela Road, Kiridiwita, Gampaha', 'No.19D, Ja-ela Road, Kiridiwita, Gampaha', '0112581245', '', '125', '76', '2014-04-23', '0000-00-00', 0, 'active', 'permanent', '19', '2014-04-23', '', '', 0),
(30, '000493', 'crw', '', 'Muthukuda Wijesinghe Arachchige Chithranjali Rupika Wijesinghe', 'Chithranjali', 'Wijesinghe', 'MWACR', '1969-04-11', '696022836V', 'female', 'Ms', 'Sisira, Saripuththa College of Education Road, Napagoda, Nittambuwa', 'Sisira, Saripuththa College of Education Road, Napagoda, Nittambuwa', '0112581245', '', '125', '77', '2014-04-23', '0000-00-00', 0, 'active', 'permanent', '19', '2014-04-23', '000493_6098458491_image.jpg', '', 0),
(33, '000197', 'hau', '', 'Tuan Muhamath Hakim Ali Usoof', 'Tuan ', 'Usoof', 'TMHA', '1977-12-22', '773572372V', 'male', 'Dr', 'No.30/13, Bangalawatta, Lewella, Kandy', 'No.30/13, Bangalawatta, Lewella, Kandy', '0112581245', '', '125', '77', '2004-10-01', '0000-00-00', 0, 'active', 'permanent', '18', '2004-10-01', '', '', 0),
(34, '000124', 'ssp', '', 'Sheirn Samantha Padma Mathara Arachchi', 'Sheirn', 'Mathara Arachchi', 'SSP', '1973-04-17', '731080364V', 'male', 'Mr', '53, Pubudu Mawatha, Mattegoda, Polgasowita', '53, Pubudu Mawatha, Mattegoda, Polgasowita', '0112581245', '', '128', '82', '2011-05-04', '0000-00-00', 0, 'active', 'permanent', '18', '2002-08-26', '', '', 0),
(35, '000339', 'mie', '', 'Manjusri Ishwara Ellepola Wickramasinghe', 'Manjusri', 'Wickramasinghe', 'MIE', '1983-12-11', '833462989V', 'male', 'Dr', 'Galmaduva, Estake Road, Kundasale', 'Galmaduva, Estake Road, Kundasale', '0112581245', '', '128', '82', '2011-03-11', '0000-00-00', 0, 'active', 'permanent', '17', '2011-03-11', '', '', 0),
(36, '000174', 'hbe', '', 'Herath Ekanayake Mudiyanselage Hiran Bandara', 'Hiran ', 'Ekanayake', 'HEMHB', '1978-09-26', '782700553V', 'male', 'Mr', 'No. 273, "Nilanthi", Megoda kolonnawa, Wellampitiya', 'No. 273, "Nilanthi", Megoda kolonnawa, Wellampitiya', '0112581245', '', '125', '77', '2015-12-11', '0000-00-00', 0, 'active', 'permanent', '17', '2006-02-01', '', '', 0),
(37, '000497', 'tch', '', 'Halloluwa Kankanamlage Thilina Chamikara Halloluwa', 'Thilina', 'Halloluwa', 'HKTC', '1987-07-23', '872051473V', 'male', 'Mr', 'No.97, Polgahahena Road, Batagama South, Kandana', 'No.97, Polgahahena Road, Batagama South, Kandana', '0112581245', '0777229245', '128', '82', '2014-11-10', '0000-00-00', 0, 'active', 'permanent', '19', '2014-11-10', '', '', 0),
(38, '000496', 'pns', '', 'Rathnayake Mudiyanselage Punsisi Nayanaprabha Somaratne', 'Punsisi', 'Somaratne', 'RMPN', '1985-04-04', '855951339V', 'female', 'Ms', 'No.374/2, Maya Mawatha, Makumbura, Pannipitiya', 'No.374/2, Maya Mawatha, Makumbura, Pannipitiya', '0112581245', '', '128', '82', '2014-04-23', '0000-00-00', 0, 'active', 'permanent', '19', '2014-04-23', '', '', 0),
(39, '000495', 'ujp', '', 'Kankani Pathirage Udeni Jayasinghe', 'Udeni', 'Jayasinghe', 'UJP', '1984-04-15', '846060332V', 'female', 'Ms', '', '', '0112581245', '', '0', '', '2014-04-23', '0000-00-00', 0, 'active', 'permanent', '18', '2014-04-23', '', '', 0),
(40, '000127', 'rsm', '', 'Ravindra Senaka Madanayake', 'Ravindra', 'Madanayake', 'RS', '1971-02-22', '710532478V', 'male', 'Mr', 'No.410/121, Bauddhaloka Mawatha, Colombo 07', 'No.410/121, Bauddhaloka Mawatha, Colombo 07', '', '0112581245', '128', '82', '2011-08-04', '0000-00-00', 0, 'active', 'permanent', '18', '2002-09-02', '', '', 0),
(41, '000156', 'rnd', '', 'Malavige Don Rasika Niroshan Dayarathna', 'Rasika', 'Dayarathna', 'MDRN', '1974-12-24', '743592913V', 'male', 'Dr', '', '', '0112581245', '', '125', '77', '2013-09-12', '0000-00-00', 0, 'active', 'permanent', '18', '2003-09-18', '', '', 0),
(42, '000393', 'vsh', '', 'Brandiyawatta Mapa Appuhamilage Vishwajith', 'Vishwajith', 'Mapa ', 'BMAV ', '1981-11-13', '813180421V', 'male', 'Mr', 'No.122/1, Bellummahara, Mudungoda', 'No.122/1, Bellummahara, Mudungoda', '', '', '0', '', '2017-11-10', '0000-00-00', 0, 'active', 'permanent', '11', '2010-10-07', '', '', 0),
(43, '01', 'dnp', '', 'Deenuka Niroshini Perera', 'Deenuka', 'Perera', 'DN', '1989-11-30', '898350029V', 'female', 'Ms', 'No.37, Fernando Road, Mount Lavinia', 'No.37, Fernando Road, Mount Lavinia', '0112158962', '', '128', '82', '2016-12-22', '0000-00-00', 0, 'active', 'permanent', '19', '2016-12-22', '01_7596942463_image.jpg', '', 0),
(45, '03', 'hdp', '', 'Ranasinghe Arachchige Harsha Dilshan Perera', 'Harsha', 'Perera', 'RAHD', '1991-01-01', '910015060V', 'male', 'Mr', 'No.181/95, Welihenawatta, Siyambalagoda, polgasowita', 'No.181/95, Welihenawatta, Siyambalagoda, polgasowita', '', '0112158978', '128', '82', '2017-11-10', '0000-00-00', 0, 'active', 'permanent', '19', '2016-12-22', '', '', 0),
(46, '04', 'uar', '', 'Rathnayake Mudiyanselage Upul Anuradha Rathnayake', 'Upul ', 'Rathnayake', 'RMUA', '1986-02-07', '860380820V', 'male', 'Mr', 'Vajira Sevana, Dorabavila, Thuththiripitigama', 'Vajira Sevana, Dorabavila, Thuththiripitigama', '0112158978', '', '128', '82', '2016-12-22', '0000-00-00', 0, 'active', 'permanent', '19', '2016-12-22', '', '', 0),
(47, '02', 'acj', '', 'Don Dimungu Arachchige Chathura Jeewaka Jayalath', 'Chathura', 'Jayalath', 'DDACJ', '1988-04-01', '880921070V', 'male', 'Mr', 'No.400/19/2, Jayanthi Place, Kirillawala, Kadawatha', 'No.400/19/2, Jayanthi Place, Kirillawala, Kadawatha', '', '0112158978', '128', '81', '2016-12-22', '0000-00-00', 0, 'inactive', 'permanent', '18', '2016-12-22', '02_3868003581_image.jpg', '', 0),
(48, '05', 'rnr', '', 'Roshan Namal Rajapakse', 'Roshan', 'Rajapakse', 'RN', '1988-11-09', '883143779V', 'male', 'Mr', '91/17B, Watarappala Road, Mount Lavinia', '91/17B, Watarappala Road, Mount Lavinia', '0112158978', '', '128', '82', '2016-12-22', '0000-00-00', 0, 'active', 'permanent', '18', '2016-12-22', '', '', 0),
(49, '06', 'ysr', '', 'Ranasinghe Arachchige Yohani Shamindi Ranasinghe', 'Yohani ', 'Ranasinghe', 'RAYS', '1988-06-02', '886541899V', 'female', 'Ms', '136, Lake Road. Ibbagamuwa', '136, Lake Road. Ibbagamuwa', '0112158962', '0718371272', '128', '82', '2017-01-16', '0000-00-00', 0, 'active', 'permanent', '19', '2017-01-16', '', '', 0),
(50, '000007', 'lpj', '', 'Lokuge Patrick Jayasinghe', ' Patrick ', 'Jayasinghe', 'LP', '1959-08-04', '592170221V', 'male', 'Mr', '240/3, Ihala Yagoda, Imbulgoda', '240/3, Ihala Yagoda, Imbulgoda', '', '', '102', '53', '1987-08-20', '0000-00-00', 0, 'active', 'permanent', '14', '1999-08-20', '', '', 0),
(51, '07', 'eno', '', 'Kotagoda Hettiarachchilage Enosha Lasanthi Warunika Hettiarachchi', 'Enosha ', 'Hettiarachchi', 'KHELW', '1981-01-26', '815262235V', 'female', 'Dr', 'Buddika, 21/1, Pirivena Road, Mount Lavinia', 'Buddika, 21/1, Pirivena Road, Mount Lavinia', '', '', '125', '77', '2017-08-01', '0000-00-00', 0, 'active', 'permanent', '19', '2017-08-01', '07_1934375489_image.jpg', '', 0),
(52, '08', 'dsr', '', 'Kahawalage Damitha Sandaruwan', 'Damitha ', 'Sandaruwan', 'KD', '1980-01-22', '800221439V', 'male', 'Dr', 'No.370A, Jalthara, Ranala', 'No.370A, Jalthara, Ranala', '', '', '128', '82', '2017-08-01', '0000-00-00', 0, 'active', 'permanent', '18', '2017-08-01', '', '', 0),
(53, '000006', 'stn', '', 'Shakrange Turrance Nandasara', 'Nandasara', 'Nandasara', 'ST', '1952-12-03', '520721932V', 'male', 'Mr', 'Wattegedara, Wannigama, Nikawertiya', 'Wattegedara, Wannigama, Nikawertiya', '0112581245', '', '0', '', '1996-05-15', '0000-00-00', 0, 'active', 'assignment', '15', '1983-01-17', '', '', 0),
(54, '000125', 'hms', '', 'Halgamage Malinda Siriwardana', 'Malinda', 'Siriwardana', 'HM', '1971-05-04', '711253408V', 'male', 'Mr', 'Prasanna, Boyagane', 'Prasanna, Boyagane', '0112581245', '', '128', '82', '2011-08-04', '0000-00-00', 0, 'active', '', '18', '2002-08-26', '', '', 0),
(55, '000080', 'gpn', '', 'Gonsal Botejuge Pradeep Niyomal Boteju', 'Pradeep ', 'Boteju', 'GPN', '1968-01-16', '680163006V', 'male', 'Mr', 'No.21, 1st Cross Street, Pagoda, Nugegoda', 'No.21, 1st Cross Street, Pagoda, Nugegoda', '', '', '102', '52', '2001-02-08', '0000-00-00', 0, 'active', 'permanent', '18', '2001-02-08', '000080_4642575098_image.jpg', '', 0),
(56, '09', 'asa', '', 'Asanka Priyadarshana Sayakkara', 'Asanka', 'Sayakkara', 'AP', '1987-09-23', '872672877V', 'male', 'Mr', '"Sampath", Devinuwara Road, Thalpavila, Kekanadura', 'Sampath, Devinuwara Road, Thalpavila, Kekanadura', '', '0112158978', '128', '82', '2016-12-22', '0000-00-00', 0, 'active', 'permanent', '17', '2016-12-22', '09_8502120155_image.jpg', '', 0),
(57, '000004', '', '', 'Keerthi Sirimewan Goonatillake', 'Keerthi ', 'Goonatillake', 'KS', '1958-09-26', '582700907V', 'male', 'Mr', '"Maha Gedara", Mellawagara, Madampe', '"Maha Gedara", Mellawagara, Madampe', '', '', '0', '', '1999-07-01', '0000-00-00', 0, 'inactive', 'permanent', '10', '1987-07-01', '', '', 0),
(58, '10', 'jpk', '', 'Kumara Vidanalage Don Janaka Prabhash Kumarasinghe', 'Janaka ', 'Kumarasinghe', 'KVDJP', '1985-07-01', '851831932V', 'male', 'Mr', 'No.98/D Ebilipitiya Road, Haburugale, Benthote', 'No..98/D Ebilipitiya Road, Haburugale, Benthote', '', '0112158978', '128', '82', '2017-04-05', '0000-00-00', 0, 'active', 'permanent', '1', '2017-04-05', '', '', 0),
(59, '11', 'gsh', '', 'Geeth Sanjeewa Hettiarachchi', 'Geeth ', 'Hettiarachchi', 'GS', '1981-06-22', '811741108V', 'male', 'Mr', 'No. 217, 50 Acres, Madakumbura, Karandenitya', 'No. 217, 50 Acres, Madakumbura, Karandenitya', '', '', '80', '41', '2017-06-30', '0000-00-00', 0, 'active', 'permanent', '20', '2017-06-30', '', '', 0),
(60, '12', '', '', 'Jayasuriya Arachchilage Chenuka Jayanath Jayasuriya ', 'Chenuka', 'Jayasuriya ', 'JACJ', '1983-11-18', '833233939V', 'male', 'Mr', 'No.98, Pinnagolla, Meddepola, Giriulla', 'No.98, Pinnagolla, Meddepola, Giriulla', '', '', '118', '74', '2017-08-03', '0000-00-00', 0, 'active', 'permanent', '16', '2017-08-03', '', '', 0),
(62, '13', 'jdk', '', 'Jinadi kavindra Dahanayaka', 'Jinadi', 'Dahanayaka', 'JK', '1988-08-25', '887382859V', 'female', 'Ms', 'No.18, Sri Sugathapala Mawatha, Maitipe, Galle', 'No.18, Sri Sugathapala Mawatha, Maitipe, Galle', '', '', '118', '74', '2017-08-18', '0000-00-00', 0, 'inactive', 'permanent', '2', '2017-08-18', '', '', 0),
(63, '14', 'nkk', '', 'KMGB Nishakumari', '', 'Nishakumari', 'KMGB', '0000-00-00', '', 'female', 'Mr', '', '', '', '', '118', '74', '2017-08-01', '0000-00-00', 0, 'active', 'permanent', '20', '2017-08-01', '', '', 0),
(64, 'upf000500', 'kkk', '', 'Kotte Kankanamge Kithsiri Dharamathilaka', 'Kithsiri', 'Dharmathilaka', 'KKK', '1968-06-13', '681650806v', 'male', 'Mr', '341/1/55,Mahayayawatta,Pelenwatta,Gorakapitiya,Piliyandala', '341/1/55,Mahayayawatta,Pelenwatta,Gorakapitiya,Piliyandala', '', '', '104', '57', '0000-00-00', '0000-00-00', 0, 'inactive', '', '4', '0000-00-00', '', '', 0),
(66, '000500', 'kkk', '', 'Kotte Kankanamge Kithsiri Dharamathilaka', 'Kithsiri', 'Dharmathilaka', 'KKK', '1968-06-13', '681650806v', 'male', 'Mr', '341/1/55,Mahayayawatta,Pelenwatta,Gorakapitiya,Piliyandala', '341/1/55,Mahayayawatta,Pelenwatta,Gorakapitiya,Piliyandala', '', '', '104', '57', '0000-00-00', '0000-00-00', 0, 'active', '', '4', '0000-00-00', '', '', 0),
(67, '000158', 'rmw', '', 'Rasnayaka Mudiyanselage Weerasiri', 'Rasnayaka Mudiyanselage', 'Weerasiri', 'RMW', '0000-00-00', '593020304v', 'male', 'Mr', '428F, Lekamge Mawatha, Kossinna, Ganemulla', '428F, Lekamge Mawatha, Kossinna, Ganemulla', '', '', '104', '57', '0000-00-00', '0000-00-00', 0, 'active', 'permanent', '6', '0000-00-00', '', '', 0),
(68, '000468', 'sdc', '', 'Sinhalage Deepani Chandralatha', 'Deepani', 'Chandralatha', 'SDC', '1973-12-15', '738502116v', 'female', 'Ms', 'Nuwaragam Colony, Padikaramaduwa', 'Nuwaragam Colony, Padikaramaduwa', '', '', '0', '', '2013-05-02', '0000-00-00', 0, 'active', 'permanent', '3', '2013-05-02', '', '', 0),
(69, '000478', 'dkm', '', 'Disna Kumari Malkanthi Rathnayaka', 'Disna', 'Rathnayaka', 'DKMR', '1961-06-24', '616761129v', 'female', 'Ms', '', '', '', '', '0', '', '2011-01-03', '0000-00-00', 0, 'active', 'permanent', '7', '2011-01-03', '000478_4690475553_image.jpg', '', 0),
(70, '000582', 'msw', '', 'Jayaweera Arachchige Maduka Samanmali Wijerathna', 'Maduka', 'Wijerathna', 'JAMSW', '1984-09-01', '847453125V', 'female', 'Ms', 'Beligala Para, Nahalla, Nebada', 'Beligala Para, Nahalla, Nebada', 'Ext 8994', '0774614025', '104', '57', '2017-08-15', '0000-00-00', 0, 'active', 'permanent', '9', '2017-08-15', '', '', 0),
(71, '00033', 'rla', '', 'Rajapakse Lekamge Asoka Rajapakse', 'Asoka', 'Rajapakse', 'RLAR', '1960-06-18', '', 'female', 'Ms', 'Karuna, Thambugala, Danowita', 'Karuna, Thambugala, Danowita', '', '', '67', '32', '0000-00-00', '0000-00-00', 0, 'active', 'permanent', '8', '0000-00-00', '', '', 0),
(72, '15', 'kgg', '', 'Panditha Vidana Kasun Gayanath Gunawardana', 'Kasun', 'Gunawardana', 'PVKD', '1989-11-01', '833063014V', 'male', 'Dr', 'No.43/15A, Diwel Watta, Walgana Meda, Matara', 'No.43/15A, Diwel Watta, Walgana Meda, Matara', '', '', '125', '77', '2016-01-01', '0000-00-00', 0, 'active', 'contract', '17', '2016-01-01', '', '', 0),
(73, '16', '', '', 'Nishantha Rohan Samarasinghe', 'Nishantha', 'Samarasinghe', 'NR', '1967-03-01', '670610195V', 'male', 'Dr', 'No.204, Kurunagala Road, Assadduma, Kuliyapitiya', 'No.204, Kurunagala Road, Assadduma, Kuliyapitiya', '', '', '0', '16', '2017-02-01', '0000-00-00', 0, 'active', 'assignment', '1', '2017-02-01', '', '', 0),
(74, '17', 'sew', '', 'Sewwandi Dinusha Gunawardhana', 'Sewwandi', 'Gunawardhana', 'SD', '1978-05-02', '786230225V', 'female', 'Ms', 'No.73, Arawwala Road, Pannipitiya', 'No.73, Arawwala Road, Pannipitiya', '', '', '123', '', '2017-01-02', '0000-00-00', 0, 'active', 'temporary', '20', '2009-01-01', '', '', 0),
(77, '18', 'sri', '', 'Malawenna Gamage Anjalee Srimalee', 'Anjalee', 'Srimalee', 'MGA', '1990-10-31', '908050223V', 'female', 'Ms', 'No.399/6, Isuru Uyana, Kurunduwatta, Gintota', 'No.399/6, Isuru Uyana, Kurunduwatta, Gintota', '', '', '123', '', '2014-07-01', '0000-00-00', 0, 'active', 'temporary', '15', '2014-07-01', '', '', 0),
(78, '19', 'hba', '', 'Konara Mudiyanselage Harshi Bhagya Abeyratne', 'Harshi ', 'Abeyratne', 'KMHB', '1991-01-22', '945222722V', 'female', 'Ms', '92/C, Salmal Mawatha, Nampamunuwa, Piliyandala', '92/C, Salmal Mawatha, Nampamunuwa, Piliyandala', '', '', '123', '', '2015-03-02', '0000-00-00', 0, 'active', 'temporary', '15', '2015-03-02', '', '', 0),
(79, '20', 'kar', '', 'Kolamunnage Ashintha Rukmal Perera', 'Ashintha', 'Perera', 'KAR', '1989-08-16', '892290709V', 'male', 'Mr', '133/B, Ehelape Road, Katuwawala, Boralesgamuwa', '133/B, Ehelape Road, Katuwawala, Boralesgamuwa', '', '', '123', '', '2014-07-01', '0000-00-00', 0, 'active', 'temporary', '15', '2014-07-01', '', '', 0),
(80, '21', 'bdl', '', 'Bodiyabaduge Dewsri Lalithi Perera', 'Dewsri ', 'Perera', 'BDL', '1989-01-31', '895313238V', 'female', 'Ms', 'No.33, Mangala Mawatha, Kalutara North, Kalutara', 'No.33, Mangala Mawatha, Kalutara North, Kalutara', '', '', '132', '', '2014-07-01', '0000-00-00', 0, 'active', 'temporary', '19', '2013-02-01', '', '', 0),
(81, '22', 'mbp', '', 'Malhamige Buddhika Priyadarshani Dissanayake', 'Buddhika', 'Dissanayake', 'MBP', '1990-01-25', '905252801V', 'female', 'Ms', 'No.256-E, Wathumulla Road, Asgiriya, Gampaha', 'No.256-E, Wathumulla Road, Asgiriya, Gampaha', '', '', '144', '117', '2017-02-01', '0000-00-00', 0, 'active', 'contract', '20', '2014-07-01', '', '', 0),
(82, '23', 'tcg', '', 'Galahena Mudiyanselage Tharindra Charun Galahena', 'Tharindra', 'Galahena', 'GMTC', '1990-05-08', '901291616V', 'male', 'Mr', 'No.2/24, Akkarapaha, Ranawana Road, Katugastota', 'No.2/24, Akkarapaha, Ranawana Road, Katugastota', '', '', '123', '', '2015-03-02', '0000-00-00', 0, 'active', 'temporary', '15', '2015-03-02', '', '', 0),
(83, '24', 'asm', '', 'Thuiya Gamhewa Anupa Shyamlal Munaweera De Silva', 'Anupa', 'De Silva', 'TGASM', '1991-12-15', '', 'male', 'Mr', '"Lal Sewana" Thambahitiya, Meetiyagoda', '"Lal Sewana" Thambahitiya, Meetiyagoda', '', '', '132', '', '2017-02-01', '0000-00-00', 0, 'inactive', 'temporary', '19', '2016-02-01', '', '', 0),
(84, '25', 'nsa', '', 'Kovila Waththage Nilakshi Shashikala Anuradhani', 'Nilakshi', 'Kovila Waththage', 'KWNS', '1992-02-18', '', 'female', 'Ms', 'Hiniduma Gedara, Udugama-West, Galle', '', '', '', '123', '', '2016-03-01', '0000-00-00', 0, 'active', 'temporary', '19', '2016-03-01', '', '', 0),
(85, '000627', 'vmp', '', 'Vidana Gamage Manoja Priyangika', 'Manoja', 'Priyangika', 'VGMP', '1981-10-02', '817761658v', 'female', 'Ms', 'Mahagama Gedara, Kekanadura, Matara', 'Mahagama Gedara, Kekanadura, Matara', '', '0719676792', '147', '', '2012-04-02', '0000-00-00', 0, 'active', 'permanent', '6', '2012-04-02', '', '', 0),
(86, '26', 'sgs', '', 'Sooriya Gamage Susanthi', 'Susanthi', '', 'SG', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '123', '', '2016-03-01', '0000-00-00', 0, 'active', 'temporary', '19', '2016-03-01', '', '', 0),
(87, '000624', 'dra', '', 'Hemanthi Prasngika Henegama', 'Hemanthi', 'Henegama', 'HPH', '1977-08-30', '777432460v', 'female', 'Ms', '233/A/3, kekirideniya Road, Hewagama, kaduwela', '233/A/3, kekirideniya Road, Hewagama, kaduwela', '', '', '0', '', '2006-08-02', '0000-00-00', 0, 'active', 'permanent', '5', '2006-08-02', '', '', 0),
(88, '27', 'cdw', '', 'Chathurangi Dhanushika Weerasinghe', 'Chathurangi ', 'Weerasinghe', 'CD', '1990-07-13', '906952122V', 'female', 'Ms', 'No.17/A, Akuressa Road, Imaduwa, Galle', 'No.17/A, Akuressa Road, Imaduwa, Galle', '', '', '123', '', '2017-11-16', '0000-00-00', 0, 'inactive', 'temporary', '19', '2017-02-06', '', '', 0),
(89, '28', 'tnb', '', 'Tharindu Narthana Bandara Wijethilake', 'Tharindu', 'Wijethilake', 'TNB', '1992-07-16', '921980906V', 'male', 'Mr', 'Samagi Uyana, Welikumbura Road, Mawathagama', 'Samagi Uyana, Welikumbura Road, Mawathagama', '', '', '123', '', '2017-02-02', '0000-00-00', 0, 'active', 'temporary', '19', '2017-02-02', '', '', 0),
(90, '000046', 'hdj', '', 'Hapuachchige Dona Jayantha Karunarathna', 'Jayantha', 'Karunarathna', 'HDJK', '1963-07-27', '637092863v', 'female', 'Ms', 'Uduwa North, Kuda Udawa, Horana', 'Uduwa North, Kuda Udawa, Horana', '', '', '3', '71', '1994-01-03', '0000-00-00', 0, 'active', 'permanent', '5', '1994-01-03', '', '', 0),
(91, '29', 'sse', '', 'Shanika Surangi Edirisinghe', 'Shanika ', 'Edirisinghe', 'SS', '1992-06-29', '926810472V', 'female', 'Ms', '07, Sunanda Mawatha, Owitigala, Mathugama', '07, Sunanda Mawatha, Owitigala, Mathugama', '', '', '123', '', '2017-03-01', '0000-00-00', 0, 'active', 'temporary', '19', '2017-03-01', '', '', 0),
(92, '000049', 'nsj', '', 'Galagama Arachchige Dona Nishantha Samayapali Jayawardene', 'Nishantha', 'Jayawardene', 'GADNSJ', '1966-11-13', '668182283v', 'female', 'Ms', 'Sepatha, Raigama, Bandaragama', 'Sepatha, Raigama, Bandaragama', '', '', '3', '54', '1995-08-01', '0000-00-00', 0, 'active', 'permanent', '6', '1995-08-01', '', '', 0),
(93, '000065', 'dng', '', 'Dencil Nalaka Gunawardena', 'Dencil', 'Gunawardena', 'DN', '1976-10-18', '762920085v', 'male', 'Mr', '486/A, Makumbura, Pannipitiya', '486/A, Makumbura, Pannipitiya', '', '', '0', '16', '1999-08-23', '0000-00-00', 0, 'active', 'permanent', '10', '1999-08-23', '', '', 0),
(94, '30', 'imd', '', 'Mahagani Arachchige Isuru Madusanka Dharmadasa', 'Isuru ', 'Dharmadasa', 'MAIM', '1990-05-18', '901391009V', 'male', 'Mr', 'No.79/A/15, Thotupala Road, Ranala', 'No.79/A/15, Thotupala Road, Ranala', '', '', '128', '82', '2014-02-01', '0000-00-00', 0, 'active', 'permanent', '19', '2016-02-01', '', '', 0),
(95, '000151', 'kcw', '', 'Weerakkodige Keerthi Chandika Weerakkody', 'Keerthi', 'Weerakkody', 'W K C ', '1972-09-29', '722731425v', 'male', 'Mr', '345/A, Walgama, Malwana', '345/A, Walgama, Malwana', '', '', '0', '16', '1999-10-14', '0000-00-00', 0, 'active', 'permanent', '11', '1999-10-14', '', '', 0),
(96, '000092', 'kpr', '', 'Kadupitige Chithra Rathnalatha', 'Chithra', 'Rathnalatha', 'K P C', '1965-02-09', '655401903v', 'female', 'Ms', '6/54, Mineoluwa, Mirigama', '6/54, Mineoluwa, Mirigama', '', '', '0', '16', '1996-03-15', '0000-00-00', 0, 'active', 'permanent', '6', '1996-03-15', '', '', 0),
(98, '31', 'rja', '', 'Rangana Jayashanka Amaraweera', 'Rangana', 'Amaraweera', 'RJ', '1991-12-03', '913380592V', 'male', 'Mr', 'Jayashanka, Hettiyawala, Kirinda Puhulwella', 'Jayashanka, Hettiyawala, Kirinda Puhulwella', '', '', '128', '82', '2017-02-01', '0000-00-00', 0, 'active', 'permanent', '18', '2016-02-01', '', '', 0),
(99, '32', 'aln', '', 'Atulugamage Lakshika Nanayakkara', 'Lakshika', 'Nanayakkara', 'AL', '1992-01-07', '', 'male', 'Ms', 'No.424/1, Sunethra Devi Road, Pepiliyana, Nugegoda', 'No.424/1, Sunethra Devi Road, Pepiliyana, Nugegoda', '', '', '128', '82', '2017-02-02', '0000-00-00', 0, 'active', 'permanent', '19', '2017-02-02', '', '', 0),
(100, '33', 'sij', '', 'Nawarathna Mudiyanselage Shashiprabha Iddamalie Jinathissa', 'Shashiprabha', 'Jinathissa', 'NMSI', '1993-03-01', '935610907V', 'female', 'Ms', 'D23, Kehelwathugoda, Dewalegama', 'D23, Kehelwathugoda, Dewalegama', '', '', '123', '', '2017-03-20', '0000-00-00', 0, 'active', 'temporary', '19', '2017-03-20', '', '', 0),
(101, '34', 'nwh', '', 'Nimali Wasana Hettiarachchi', 'Nimali ', 'Hettiarachchi', 'NW', '1992-03-25', '925853313V', 'female', 'Ms', '79D2A, Dimuthugama, 2nd Step. Kiriwelkele, Pitabeddara', '79D2A, Dimuthugama, 2nd Step. Kiriwelkele, Pitabeddara', '', '', '123', '', '2017-03-20', '0000-00-00', 0, 'active', 'temporary', '19', '2017-03-20', '', '', 0),
(102, '35', 'hws', '', 'Hewa Walgamage Waruni Samarawickrama', 'Waruni', 'Samarawickrama', 'HWW ', '1993-03-29', '935890233V', 'female', 'Ms', 'Sirivikum, Midulagaha, Koratuwa, Denipitiya, Weligama', 'Sirivikum, Midulagaha, Koratuwa, Denipitiya, Weligama', '', '', '123', '', '2017-03-20', '0000-00-00', 0, 'active', 'temporary', '19', '2017-03-20', '', '', 0),
(103, '36', 'ttk', '', 'Thisaranie Thurangika Kaluarchchi', 'Thisaranie', 'Kaluarchchi', 'TT', '1991-10-11', '917850771V', 'female', 'Ms', 'Piduruwella, Uhumeeya', 'Piduruwella, Uhumeeyahb', '', '', '132', '', '2017-03-20', '0000-00-00', 0, 'active', 'temporary', '19', '2017-03-20', '', '', 0),
(104, '000425', 'gms', '', 'Gihan Manjula Sirisena', 'Gihan', 'Sirisena', 'G M ', '1977-11-17', '773221197v', 'male', 'Mr', '29/1, Vidyala Mawatha, Pahathgama, Hanwella', '29/1, Vidyala Mawatha, Pahathgama, Hanwella', '', '', '0', '16', '2005-09-15', '0000-00-00', 0, 'active', 'permanent', '6', '2005-09-15', '', '', 0),
(105, '000418', 'wds', '', 'Weda Dewage Dilani Sagarika', 'Dilani', 'Sagarika', 'W D D ', '1972-02-23', '725540884v', 'female', 'Ms', '327, Siriwardena Mawatha, Walpola, Ragama', '327, Siriwardena Mawatha, Walpola, Ragama', '', '', '0', '16', '2007-01-01', '0000-00-00', 0, 'active', 'permanent', '10', '2007-01-01', '', '', 0),
(106, '37', 'kmg', '', 'Kaluwewe Mudiyanselage Geethika Senarathna', 'Geethika', 'Senarathna', 'KMG', '1992-10-28', '928021947V', 'female', 'Ms', 'No.25, Shanthi Vihara Mawatha, Bamunawala, Kurunegala', '', '', '', '123', '', '2017-03-20', '0000-00-00', 0, 'active', 'temporary', '19', '2017-03-20', '', '', 0),
(107, '000265', 'har', '', 'Irosh Harendra Amuwitagama', 'rosh', 'Awuwitagama', 'I H ', '1978-02-20', '780513845v', 'male', 'Mr', '506/03, Kottawa, Pannipitiya', '08/E/A, Paulas Mawatha, Kandewatta, Galle', '', '', '0', '16', '2006-04-03', '0000-00-00', 0, 'active', 'permanent', '8', '2006-04-03', '', '', 0),
(108, '000253', 'dha', '', 'Attanayake Mudiyanselage Dinesh Harindra Attanayake', 'Dinesh', 'Attanayake', 'A M D H', '1983-08-07', '832200980v', 'male', 'Mr', '07, Vihara Mawatha, Suduhumpala, Kandy', '07, Vihara Mawatha, Suduhumpala, Kandy', '', '', '0', '16', '2011-11-01', '0000-00-00', 0, 'active', 'permanent', '6', '2011-11-01', '', '', 0),
(109, '000276', 'inn', '', 'Imiyage Nayanjith Nuwanpriya Karunarathna', 'Nayanjith', 'Karunarathna', 'I N N ', '1984-05-08', '841291093v', 'male', 'Mr', '129, Welagana, Road,Barawawila, Divulapitiya', '129, Welagana, Road,Barawawila, Divulapitiya', '', '', '0', '16', '2011-12-01', '0000-00-00', 0, 'active', 'permanent', '6', '2011-12-01', '', '', 0),
(110, '000435', 'srd', '', 'Demuni Shyamali Randika De Silva', 'Demuni ', 'Silva', 'D S R ', '1982-04-20', '826110635v', 'female', 'Ms', '162/B, Siril Mawatha, Mahawaskaduwa, Waskaduwa', '162/B, Siril Mawatha, Mahawaskaduwa, Waskaduwa', '', '', '0', '16', '2012-04-16', '0000-00-00', 0, 'active', 'permanent', '6', '2012-04-16', '', '', 0),
(111, '000221', 'ppw', '', 'Weragoda Gamage pupudunie Pavithra Wijesinghe', 'pupudunie ', 'Wijesinghe', 'W G P P ', '1982-01-15', '825151664v', 'female', 'Ms', '61/C, Kurunduwatta Hunumulla', '61/C, Kurunduwatta Hunumulla', '', '', '3', '9', '2013-04-17', '0000-00-00', 0, 'active', 'permanent', '7', '2013-04-17', '', '', 0),
(112, '38', '', '', 'Werapitiya Gamaralage Hansani Geethma Werapitiya', 'Hansani ', 'Werapitiya', 'WGHG', '1992-10-09', '927830442V', 'female', 'Ms', '297 E1, Batwatta, Arukgoda, Alubomulla', '297 E1, Batwatta, Arukgoda, Alubomulla', '', '', '123', '', '2017-08-01', '0000-00-00', 0, 'active', 'temporary', '19', '2017-08-01', '', '', 0),
(113, '39', 'dar', '', 'Denawaka Appuhamilage Shashika Ruwanmini', 'Shashika', '', 'DAS', '1991-06-02', '', 'female', 'Ms', '', '', '', '', '132', '', '2017-07-06', '0000-00-00', 0, 'active', 'temporary', '19', '2017-07-06', '', '', 0),
(115, '000542', 'prd', '', 'Polegodage Rajika Dilrukshi', 'Rajika ', 'Dilrukshi', 'P G R ', '1980-12-15', '808502631v', 'female', 'Ms', '5D, Wedagewatta Road, Kotuwegoda, Rajagiriya', '5D, Wedagewatta Road, Kotuwegoda, Rajagiriya', '', '', '0', '16', '2014-10-24', '0000-00-00', 0, 'active', 'permanent', '5', '2014-10-24', '', '', 0),
(116, '000543', 'lck', '', 'Lumbini Chathrapani Karunasagera', 'Lumbini ', 'Karunasagera', 'L C', '1984-09-14', '847583495v', 'female', 'Ms', '486/A, Makumbura, Pannipitiya', '486/A, Makumbura, Pannipitiya', '', '', '0', '16', '2014-10-24', '0000-00-00', 0, 'active', 'permanent', '3', '2014-10-24', '', '', 0),
(117, '000549', 'rml', '', 'Ranathunga Mudiyanselage Lalin Nishantha Ranathunga', 'Lalin ', 'Ranathunga', 'R M L', '1985-11-26', '853311294v', 'male', 'Mr', '', '', '', '', '0', '16', '2014-10-24', '0000-00-00', 0, 'active', 'permanent', '5', '2014-10-24', '', '', 0),
(118, '000540', 'pri', '', 'Galbokka Hewage Priyantha Indeewari De Silva', 'Priyantha ', 'De Silva', 'G H P I', '1982-03-03', '825630040v', 'female', 'Ms', '50/25 A, Maningamuwa Road, Welimilla, Bandaragama', '50/25 A, Maningamuwa Road, Welimilla, Bandaragama', '', '', '0', '16', '2014-10-24', '0000-00-00', 0, 'active', 'permanent', '4', '2014-10-24', '', '', 0),
(119, '000541', 'kdv', '', 'karunathilakge Sanjeewa Udaya Kumara', 'Sanjeewa', 'Kumara', 'K S U', '1972-12-26', '723612306v', 'male', 'Mr', '144/1/12, Pasal Mawatha, Kirigampamunuwa', '144/1/12, Pasal Mawatha, Kirigampamunuwa', '', '', '3', '9', '2014-10-24', '0000-00-00', 0, 'active', 'permanent', '14', '2014-10-24', '', '', 0),
(120, '000538', 'ino', '', 'Jayaneththi Koralalage Dona Inoka Kumuduni Thilakarathne', 'Inoka ', 'Thilakarathne', 'J K D I K ', '1977-05-15', '776360279v', 'female', 'Ms', 'Sampath, Ambalangoda watta, welikala, Pokunuwita', 'Sampath, Ambalangoda watta, welikala, Pokunuwita', '', '', '3', '9', '2014-10-24', '0000-00-00', 0, 'active', 'permanent', '14', '2014-10-24', '', '', 0),
(121, '000377', 'dap', '', 'Dahanayake Mudiyanselage Udagedara Asanaka Prabath', 'Asanaka ', 'Prabath', 'D M U A', '1984-07-30', '842120373v', 'male', 'Mr', '66/5, Pallegunnepana, Polgolla', '66/5, Pallegunnepana, Polgolla', '', '', '3', '9', '2009-11-04', '0000-00-00', 0, 'active', 'permanent', '8', '2009-11-04', '', '', 0),
(122, '000206', 'kmu', '', 'Karandeniya Mahadurage Upul Prasanna', 'Upul', 'Prasanna', 'KMU', '1979-12-23', '793583230V', 'male', 'Mr', '53/3A, Priyamawatha, Makuluduwa, Piliyandala', '53/3A, Priyamawatha, Makuluduwa, Piliyandala', '', '', '135', '91', '2009-11-01', '0000-00-00', 0, 'active', 'permanent', '11', '2009-11-01', '', '', 0),
(123, '000544', 'wns', '', 'Widanelage Nihal Sampath Fonseka', 'Nihal', 'Fonseka', 'W N S', '1983-02-23', '830540180v', 'male', 'Mr', '2225 B, Medaya para,Delduwa, Wadduwa', '2225 B, Medaya para,Delduwa, Wadduwa', '', '', '0', '16', '2014-10-24', '0000-00-00', 0, 'active', 'permanent', '14', '2014-10-24', '', '', 0),
(124, 'Y1', '', '', 'Kaduruwana Thuduwa Mudalige Dinesh Madushanka', 'Dinesh', 'Kaduruwana', 'KTMD', '1988-10-18', '882920992V', 'male', 'Mr', 'No. 50/3, Koswatta, Neluwa, Galle', 'No. 50/3, Koswatta, Neluwa, Galle', '', '', '4', '12', '0000-00-00', '0000-00-00', 0, 'active', 'contract', '6', '2013-02-01', '', '', 0),
(125, '000539', '', '', 'Pelakuttige Ganaga Priyangani Fernando', 'Ganaga ', 'Fernando', 'P K G P', '1977-09-04', '776864323v', 'female', 'Ms', '144/1/12, Pasal Mawatha, Kirigampamunuwa', '144/1/12, Pasal Mawatha, Kirigampamunuwa', '', '', '4', '12', '2014-10-24', '0000-00-00', 0, 'active', 'permanent', '5', '2014-10-24', '', '', 0),
(126, '00548', '', '', 'Payagala kankanamge Shaminda Wasantha', 'Shaminda ', 'Wasantha', 'P K S ', '1974-02-07', '760382055v', 'male', 'Mr', 'Dikhena Para, Magura, Baduraliya', 'Dikhena Para, Magura, Baduraliya', '', '', '4', '12', '2014-10-24', '0000-00-00', 0, 'active', '', '5', '2014-10-24', '', '', 0),
(127, '000547', 'mga', '', 'Muthunama Gonnage Aruna gayan', 'Aruna ', 'gayan', 'M G A', '1988-02-05', '880361678v', 'male', 'Mr', '211/82, Nagalagam Vidiya, Colombo 14', '211/82, Nagalagam Vidiya, Colombo 14', '', '', '0', '16', '2014-10-24', '0000-00-00', 0, 'active', 'permanent', '10', '2014-10-24', '', '', 0),
(128, '000581', 'sjn', '', 'Sandya Jeewa Samarasekara', 'Sandya', 'Samarasekara', 'S J', '1963-04-22', '636130117v', 'female', 'Ms', '10, Sirimal Uyana, New Gadamuwana Rd, Piliyandala', '10, Sirimal Uyana, New Gadamuwana Rd, Piliyandala', '', '', '0', '16', '2014-10-24', '0000-00-00', 0, 'active', 'permanent', '14', '2014-10-24', '', '', 0),
(129, '000625', 'era', '', 'Pulukkutti Arachchige Harshani Erandika Dewapriya', 'Harshani', 'Dewapriya', 'P A H E ', '1985-07-19', '857010302v', 'female', 'Ms', '358/1, Ganagarama Road, Werahara, Boralesgamuwa', '358/1, Ganagarama Road, Werahara, Boralesgamuwa', '', '', '3', '9', '2010-05-03', '0000-00-00', 0, 'active', 'permanent', '3', '2010-05-03', '', '', 0),
(130, 'Y2', '', '', 'Jayasinghe Arachchige Dona Milani Darshika Alwis', 'Milani', 'Alwis', 'JADM', '1992-09-24', '927680173V', 'female', 'Ms', 'No.43/1, Rathabaladeniya, Godagama, Meegoda', 'No.43/1, Rathabaladeniya, Godagama, Meegoda', '', '', '3', '9', '2017-01-02', '0000-00-00', 0, 'active', 'contract', '6', '2014-01-16', '', '', 0),
(131, 'Y3', '', '', 'Herath Mudiyanselage Sumudu Prasanna Herath', 'Sumudu', 'Herath', 'HMSP', '1976-06-16', '761680684V', 'male', 'Mr', 'No. 106/1, Thimbirigasyaya Road, Colombo 05', 'No. 106/1, Thimbirigasyaya Road, Colombo 05', '', '', '0', '16', '2017-01-02', '0000-00-00', 0, 'active', 'contract', '6', '2012-12-15', '', '', 0),
(133, 'Y4', '', '', 'Wickrama Arachchige Kavindya Madhuhari', 'Kavindya', 'Madhuhari', 'WAK', '1995-02-11', '955421205V', 'female', 'Ms', 'No. 279/1, Meegasmulla, Dedigamuwa', 'No. 279/1, Meegasmulla, Dedigamuwa', '', '', '3', '16', '2017-11-21', '0000-00-00', 0, 'active', 'assignment', '6', '2017-11-21', '', '', 0),
(146, '000546', 'rmd', '', 'Rathnayake Mudiayanselage Dilip', 'Rathnayake ', 'Dilip', 'R M', '1986-12-29', '863642248v', 'male', 'Mr', '77/2,Kiralagaha Thotupola para, Horethuduwa, keslwatta,panadura', '77/2,Kiralagaha Thotupola para, Horethuduwa, keslwatta,panadura', '', '', '0', '16', '2014-10-24', '0000-00-00', 0, 'active', 'permanent', '7', '2014-10-24', '', '', 0),
(147, '000551', '', '', 'Nambukara Thanthirirge Nisala Sandaruwan Jayawardana', 'Nisala', 'Jayawardana', 'N T N S ', '1980-10-13', '802874600v', 'male', 'Mr', 'No 86,"Tharindu",Muchalinda Pirivena Rd, Hiththatiya - East,Matara', 'No 86,"Tharindu",Muchalinda Pirivena Rd, Hiththatiya - East,Matara', '', '', '4', '49', '2014-10-24', '0000-00-00', 0, 'active', 'permanent', '6', '2014-10-24', '', '', 0),
(148, '000552', 'nns', '', 'Samarakoon Mudiyanselage Wewa Gedara Nadeeka Nilmini Podimenike', 'Nadeeka ', 'Podimenike', 'S M W G N N ', '1986-04-06', '865972083v', 'female', 'Ms', 'Madawala thenna, illagolla, Haguranketha', 'Madawala thenna, illagolla, Haguranketha', '', '', '4', '49', '2014-10-24', '0000-00-00', 0, 'active', '', '6', '2014-10-24', '', '', 0),
(149, '000545', '', '', 'Hapu Arachchige Samith Chathuranga', 'Samith', 'Chathuranga', 'H A S', '1984-04-30', '841213300v', 'male', 'Mr', '136/7//3, Udupila, Delgoda', '136/7//3, Udupila, Delgoda', '', '', '4', '49', '2014-10-24', '0000-00-00', 0, 'active', 'permanent', '4', '2014-10-24', '', '', 0),
(150, '000456', 'emg', '', 'Edirisinghe Mudiyanselage Gunarathna', 'Edirisinghe ', 'Gunarathna', 'E M', '1967-04-08', '671190408v', 'male', 'Mr', 'No 677, Kiridawa, Kuliyapitiya', '93/2A, Temple Road, Maharagama', '', '', '104', '57', '2013-02-01', '0000-00-00', 0, 'active', 'permanent', '6', '2005-02-01', '000456_6676286026_image.jpg', '', 0),
(151, '000234', '', '', 'Gammahalage Gedara Janika Sagarika Rathnayake', 'Janika ', 'Rathnayake', 'G G J S ', '1985-04-19', '856100928v', 'male', 'Ms', 'No 633/24, kudumirisalanda, Nadungamuwa, Gampaha', 'No 633/24, kudumirisalanda, Nadungamuwa, Gampaha', '', '', '4', '49', '2009-11-01', '0000-00-00', 0, 'active', 'permanent', '4', '2009-11-01', '', '', 0),
(152, '000295', '', '', 'Weradoowa Widana Kankanmge Chandima Priyankara', 'Chandima ', 'Priyankara', 'W W K C', '1978-02-10', '780411112v', 'male', 'Mr', '17 Kanuwa, Pannagamuwa,Wirawila, Thissa', 'Priyankara', '', '', '33', '22', '2009-11-01', '0000-00-00', 0, 'active', 'permanent', '4', '2009-11-01', '', '', 0),
(154, '40', 'lse', '', 'Lekamlage Singithi Erandika', 'Singithi ', 'Lekamlage', 'LS', '1992-03-31', '925910660V', 'male', 'Ms', 'No. 126/A, Batawala Padukka', 'No. 126/A, Batawala Padukka', '', '', '123', '', '2017-11-01', '0000-00-00', 0, 'active', 'temporary', '19', '2017-11-01', '', '', 0),
(155, '41', '', '', 'Munasin Vidana Pathirana Thilini Lakshika', 'Thilini ', 'Munasin', 'MVP', '1992-12-24', '928590763V', 'female', 'Ms', '"Ishani", Mulana, Hungama', 'No. 89,, Isipathana Road, Colombo 05', '', '', '132', '', '2017-11-15', '0000-00-00', 0, 'active', 'temporary', '19', '2017-11-15', '', '', 0),
(156, '85', 'webmaster', '', 'Webmaster', '', '', '', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '128', '81', '0000-00-00', '0000-00-00', 0, 'active', '', '5', '0000-00-00', '85_3928647264_image.jpg', '', 0),
(163, 'tmp_1', 'lnc', '', 'LNC De Silva', '', 'De Silva', 'LNC', '0000-00-00', '', 'female', 'Mr', '', '', '', '', '128', '81', '0000-00-00', '0000-00-00', 0, 'active', 'permanent', '18', '0000-00-00', '', '', 0),
(164, '42', 'sjd', '', 'Supun Dissanayake', 'Supun', 'Dissanayake', 'SJ', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '128', '82', '0000-00-00', '0000-00-00', 0, 'active', 'permanent', '19', '0000-00-00', '', '', 0),
(165, '43', 'acc', '', 'MCA Amarasinghe', '', 'Amarasinghe', 'MCA', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '132', '', '0000-00-00', '0000-00-00', 0, 'active', 'temporary', '19', '0000-00-00', '', '', 0),
(167, '44', 'gkk', '', 'GKK Perera', '', 'Perera', 'GKK', '0000-00-00', '', 'female', 'Mr', '', '', '', '', '128', '82', '0000-00-00', '0000-00-00', 0, 'active', 'temporary', '19', '0000-00-00', '', '', 0),
(168, '45', 'hnd', '', 'HND Thilini', '', 'Thilini', 'HND', '0000-00-00', '', 'female', 'Dr', '', '', '', '', '125', '77', '0000-00-00', '0000-00-00', 0, 'active', 'permanent', '17', '0000-00-00', '', '', 0),
(169, '46', 'rpn', '', 'BHR Pushpananda', '', 'Pushpananda', 'BHR', '0000-00-00', '', 'male', 'Dr', '', '', '', '', '125', '77', '0000-00-00', '0000-00-00', 0, 'active', 'permanent', '17', '0000-00-00', '', '', 0),
(170, '47', 'twd', '', 'T W D Lakshan', '', 'Lakshan', 'TWD', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '123', '', '0000-00-00', '0000-00-00', 0, 'active', 'temporary', '19', '0000-00-00', '', '', 0),
(171, '48', 'ocv', '', 'TMOCV Tennakoon', '', 'Tennakoon', 'TMOCV', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '123', '', '0000-00-00', '0000-00-00', 0, 'active', 'temporary', '19', '0000-00-00', '', '', 0),
(180, '49', 'wgk', '', 'Waruni Kandamby', 'Waruni', 'Kandamby', 'WG ', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '123', '', '0000-00-00', '0000-00-00', 0, 'active', 'temporary', '19', '0000-00-00', '', '', 0),
(182, '50', 'dup', '', 'Dulsha Premarathna', 'Dulsha', 'Premarathna', 'IWADU', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '123', '', '0000-00-00', '0000-00-00', 0, 'active', 'temporary', '19', '0000-00-00', '', '', 0),
(183, '51', 'cdp', '', 'Chobodi Padmaperuma', 'Chobodi', 'Padmaperuma', 'CD', '0000-00-00', '', 'female', 'Mr', '', '', '', '', '123', '', '0000-00-00', '0000-00-00', 0, 'active', 'temporary', '19', '0000-00-00', '', '', 0),
(184, '52', 'ddh', '', 'Dulaji Hidellaarachchi', 'Dulaji ', 'Hidellaarachchi', 'DD', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '123', '', '0000-00-00', '0000-00-00', 0, 'active', 'temporary', '19', '0000-00-00', '', '', 0),
(185, '53', '', '', 'H T D Dinushka', '', 'Dinushka', 'HTD', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '123', '', '0000-00-00', '0000-00-00', 0, 'active', 'temporary', '19', '0000-00-00', '', '', 0),
(186, '54', 'cli', '', 'C L I S Fonseka', '', 'Fonseka', 'CLIS', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '128', '82', '0000-00-00', '0000-00-00', 0, 'active', 'temporary', '19', '0000-00-00', '', '', 0),
(188, '55', 'wbu', '', 'W W B U  Silva', '', ' Silva', 'WWBU', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '123', '', '0000-00-00', '0000-00-00', 0, 'active', 'temporary', '19', '0000-00-00', '', '', 0),
(189, '56', '', '', 'S M M Dayananda', '', 'Dayananda', 'SMM', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '123', '', '0000-00-00', '0000-00-00', 0, 'active', 'temporary', '19', '0000-00-00', '', '', 0),
(190, '57', '', '', 'J K A G  Piyanuwan', 'J K A G ', 'Piyanuwan', 'JKAG ', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '102', '52', '2018-02-01', '0000-00-00', 0, 'active', 'contract', '13', '2014-05-28', '', '', 0),
(191, '58', '', '', 'K D P M Kannangara', 'K D P M', 'Kannangara', 'KDPM', '0000-00-00', '', 'male', 'Ms', '', '', '', '', '4', '12', '2018-01-01', '0000-00-00', 0, 'active', 'contract', '16', '2014-09-04', '', '', 0),
(192, '59', '', '', 'W G D L Karunathilaka', 'W G D L', 'Karunathilaka', 'WGDL', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '133', '88', '2016-11-01', '0000-00-00', 0, 'active', 'contract', '10', '2016-11-01', '', '', 0),
(194, '319', 'pad', '', 'R M H D Padmasiri', 'R M H D', 'Padmasiri', 'RHMD', '0000-00-00', '902751890V', 'male', 'Mr', '14, Diddeniya Watte (1st Step), Dambokka, Boyagane, Kurunegala.', '14, Diddeniya Watte (1st Step), Dambokka, Boyagane, Kurunegala.', '011 2158925', '0778150442', '134', '89', '2015-06-01', '0000-00-00', 0, 'active', 'contract', '11', '2015-06-01', '', '', 0),
(195, '61', 'frm', '', 'Fauzaan Rahman Mohomed Mahroof', 'Fauzaan', 'Mahroof', 'FRM', '0000-00-00', '850551073V', 'male', 'Mr', 'No 11, Keels Housing Complex, Enderamulla, Wattala', 'No 11, Keels Housing Complex, Enderamulla, Wattala', '', '', '80', '41', '2017-01-09', '0000-00-00', 0, 'active', 'permanent', '11', '2017-01-09', '', '', 0),
(196, '62', '', '', 'L E Jayawardane', 'L E', 'Jayawardane', 'LE', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '92', '45', '2017-01-09', '0000-00-00', 0, 'active', 'contract', '11', '2017-01-09', '', '', 0),
(197, '63', '', '', 'T D Abeygunarathna', 'T D', 'Abeygunarathna', 'TD', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '135', '93', '2017-03-01', '0000-00-00', 0, 'active', 'contract', '11', '2017-03-01', '', '', 0),
(199, '64', '', '', 'D L N K Liyanage', 'D L N K', 'Liyanage', 'DLNK', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '136', '97', '2018-02-01', '0000-00-00', 0, 'active', 'assignment', '11', '2018-02-01', '', '', 0),
(201, '65', '', '', 'K H Chandrasekara', 'K H', 'Chandrasekara', 'KH', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '136', '97', '0000-00-00', '0000-00-00', 0, 'active', 'assignment', '11', '0000-00-00', '', '', 0),
(202, '66', '', '', 'H L P M Madhushanka', 'H L P M', 'Madhushanka', 'HLPM', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '92', '45', '2013-07-01', '0000-00-00', 0, 'active', 'contract', '11', '2013-07-01', '', '', 0),
(203, '67', 'rpb', '', 'R.P. Balasuriya', 'R P', 'Balasuriya', 'RP', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '102', '52', '2009-07-03', '0000-00-00', 0, 'active', 'contract', '7', '2009-07-03', '', '', 0),
(205, '68', '', '', 'S D M Hendavitharana', 'S D M', 'Hendavitharana', 'SDM', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '3', '78', '2018-02-01', '0000-00-00', 0, 'active', 'contract', '1', '2018-02-01', '', '', 0);
INSERT INTO `employee` (`r_id`, `emp_id`, `emp_email`, `fp_id`, `emp_fullname`, `emp_firstname`, `emp_surname`, `emp_initials`, `emp_dob`, `emp_nic`, `emp_gender`, `emp_title`, `emp_permanent_address`, `emp_tmp_address`, `emp_offic_num`, `emp_mobile_num`, `emp_designation`, `emp_designation_grade`, `emp_des_start_date`, `emp_last_increament_date`, `increament_scale`, `emp_state`, `emp_type`, `emp_divison_id`, `emp_first_emp_date`, `emp_pic`, `emp_qulif_sort_form`, `emp_comment`) VALUES
(206, '69', '', '', 'G K H Madhara', 'G K H', 'Madhara', 'GKH', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '3', '78', '2017-10-03', '0000-00-00', 0, 'active', 'contract', '3', '2017-10-03', '', '', 0),
(207, '70', '', '', 'D A A V P Denavaka', 'D A A V P', 'Denavaka', 'DAAVP', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '33', '22', '2017-08-30', '0000-00-00', 0, 'active', 'contract', '4', '2017-08-30', '', '', 0),
(208, '71', '', '', 'K M C J Bandara', 'K M C J', 'Bandara', 'KMCJ', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '4', '12', '2017-09-01', '0000-00-00', 0, 'active', '', '5', '2017-09-01', '', '', 0),
(210, '72', '', '', 'W A S Oshada Silva', 'Oshada', 'Silva', 'WASO', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '4', '12', '2017-09-01', '0000-00-00', 0, 'active', 'contract', '4', '2017-09-01', '', '', 0),
(211, '74', '', '', 'W V J Chulanganie', 'WVJ', 'Chulanganie', 'WVJ', '0000-00-00', '', 'male', 'Ms', '', '', '', '', '3', '78', '2017-10-03', '0000-00-00', 0, 'active', 'contract', '4', '2017-10-03', '', '', 0),
(212, '75', '', '', 'K V D D S Perera', 'K V D D S', 'Perera', 'KVDDS', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '137', '98', '2014-08-01', '0000-00-00', 0, 'active', 'daily pay', '5', '2014-08-01', '', '', 0),
(214, '76', '', '', 'M.W. Nandani              ', 'M W', 'Nandani              ', 'MW', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '139', '103', '2007-08-01', '0000-00-00', 0, 'active', 'daily pay', '5', '2007-08-01', '', '', 0),
(215, '77', '', '', 'K H P V M Sewwandi', 'K H P V M', 'Sewwandi', 'KHPVM', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '4', '12', '0000-00-00', '0000-00-00', 0, 'active', 'assignment', '5', '2018-02-14', '', '', 0),
(216, '78', '', '', 'H L A Shehan', 'HLA', 'Shehan', 'HLA', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '4', '12', '2017-02-22', '0000-00-00', 0, 'active', 'contract', '2', '2017-02-22', '', '', 0),
(217, '79', 'asl', '', 'E A S Lakma', 'E A S', 'Lakma', 'EAS', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '4', '12', '2018-02-01', '0000-00-00', 0, 'active', 'assignment', '9', '2018-02-01', '', '', 0),
(218, '80', '', '', 'D F T M Gunasena', 'D F T M', 'Gunasena', 'DFTM', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '4', '12', '2018-02-01', '0000-00-00', 0, 'active', 'assignment', '9', '2018-02-01', '', '', 0),
(219, '81', '', '', 'K K A Nishanthi', 'K K A', 'Nishanthi', 'KKA', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '142', '106', '2006-08-07', '0000-00-00', 0, 'active', 'contract', '20', '2006-08-07', '', '', 0),
(221, '82', '', '', 'R M N Dammika', 'R M N', 'Dammika', 'RMN', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '142', '106', '2017-04-01', '0000-00-00', 0, 'active', 'contract', '1', '2017-04-01', '', '', 0),
(222, '83', '', '', 'K A W Pathirana', 'K A W', 'Pathirana', 'KAW', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '4', '12', '2016-10-20', '0000-00-00', 0, 'active', 'assignment', '14', '2016-10-20', '', '', 0),
(223, '84', '', '', 'P V M Jayampathi', 'P V M', 'Jayampathi', 'PVM', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '4', '12', '2017-07-01', '0000-00-00', 0, 'active', 'daily pay', '14', '2017-07-01', '', '', 0),
(224, '85', '', '', 'A A T D Dias', 'A A T D', 'Dias', 'AATD', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '4', '12', '2018-04-02', '0000-00-00', 0, 'active', 'daily pay', '8', '2018-04-02', '', '', 0),
(225, '86', 'sms', '', 'L S M Senadheera', 'Sanjaya', 'Senadheera', 'LSM', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '145', '', '2018-02-14', '0000-00-00', 0, 'active', 'assignment', '7', '2018-02-14', '', '', 0),
(226, '87', '', '', 'K G L S Kariyawasam', 'K G L S', 'Kariyawasam', 'KGLS', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '0', '', '2018-07-01', '0000-00-00', 0, 'active', 'assignment', '12', '2018-07-01', '', '', 0),
(227, '88', '', '', 'P H Thilakarathne', 'PH', 'Thilakarathne', 'PH', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '0', '', '2018-06-18', '0000-00-00', 0, 'active', 'assignment', '20', '2018-06-18', '', '', 0),
(228, '89', '', '', 'I H Piyumika', 'I H', 'Piyumika', 'IH', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '0', '', '2018-07-01', '0000-00-00', 0, 'active', 'assignment', '14', '2018-07-01', '', '', 0),
(236, '90', '', '', 'L H I Dilshani', 'L H I', 'Dilshani', 'LHI', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '144', '118', '0000-00-00', '0000-00-00', 0, 'active', 'assignment', '20', '0000-00-00', '', '', 0),
(237, '91', '', '', 'S G G Rasanthi', 'S G G', 'Rasanthi', 'SGG', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '3', '78', '2018-09-03', '0000-00-00', 0, 'active', 'assignment', '7', '2018-09-03', '', '', 0),
(238, '92', '', '', 'M W D N S Witharana', 'M W D N S', 'Witharana', 'MWDNS', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '3', '78', '2018-09-03', '0000-00-00', 0, 'active', 'assignment', '7', '2018-09-03', '', '', 0),
(239, '93', '', '', 'G K D Nirmal', 'G K D', 'Nirmal', 'GKD', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '3', '78', '2018-09-26', '0000-00-00', 0, 'active', 'assignment', '14', '2018-09-26', '', '', 0),
(240, '94', '', '', 'Y A Sarath Kumara', 'Sarath', 'Kumara', 'YAS', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '146', '', '2008-01-01', '0000-00-00', 0, 'active', 'daily pay', '4', '2008-01-01', '', '', 0),
(241, '95', '', '', 'P K L S Piyawardana', 'P K L S', 'Piyawardana', 'PKLS', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '146', '', '2018-06-26', '0000-00-00', 0, 'active', 'daily pay', '4', '2018-06-26', '', '', 0),
(242, '96', '', '', 'D G Padmini', 'D G', 'Padmini', 'DG', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '4', '12', '2008-05-13', '0000-00-00', 0, 'active', 'daily pay', '11', '2008-05-13', '', '', 0),
(243, '97', '', '', 'M T Katugampola', 'M T', 'Katugampola', 'MT', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '3', '78', '2018-10-11', '0000-00-00', 0, 'active', '', '2', '2018-10-11', '', '', 0),
(244, '98', '', '', 'W A L P Wijesinghe', 'W A L P', 'Wijesinghe', 'WALP', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '0', '', '2018-05-01', '0000-00-00', 0, 'active', 'trainee', '20', '2018-05-01', '', '', 0),
(245, '99', '', '', 'I Y Gayani', 'I Y', 'Gayani', 'IY', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '0', '', '2018-05-01', '0000-00-00', 0, 'active', 'trainee', '20', '2018-05-01', '', '', 0),
(247, '100', '', '', 'J A U B Jayakody', 'J A U B', 'Jayakody', 'JAUB', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '0', '', '2018-05-01', '0000-00-00', 0, 'active', 'trainee', '6', '2018-05-01', '', '', 0),
(248, '101', '', '', 'H D N Niwarthana', 'H D N', 'Niwarthana', 'HDN', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '0', '', '0000-00-00', '0000-00-00', 0, 'active', 'trainee', '7', '0000-00-00', '', '', 0),
(249, '102', '', '', 'U G T R Amarasinghe', 'U G T R', 'Amarasinghe', 'UGTR', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '0', '', '2018-06-01', '0000-00-00', 0, 'active', 'trainee', '7', '2018-06-01', '', '', 0),
(250, '103', '', '', 'S M A D P Sasanka', 'S M A D P', 'Sasanka', 'SMADP', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '0', '', '2018-07-11', '0000-00-00', 0, 'active', 'trainee', '3', '2018-07-11', '', '', 0),
(251, '104', '', '', 'M L Kaushalya', 'M L', 'Kaushalya', 'ML', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '0', '', '2018-07-30', '0000-00-00', 0, 'active', 'trainee', '6', '2018-07-30', '', '', 0),
(254, '', 'nkw', '', 'Weerasooriya Mudiyanselage Nisanshala Kumari Weerasooriya', 'Nisanshala', 'Werasooriya', 'WMNK', '1988-05-31', '886524137V', 'female', 'Ms', 'Thalgasapitiya, Dadigama, Thunthota', 'Thalgasapitiya, Dadigama, Thunthota', '', '0712468334', '2', '5', '0000-00-00', '0000-00-00', 0, 'active', 'permanent', '14', '0000-00-00', '', '', 0),
(255, '', 'rpr', '', 'Rameswaran Prasanna', 'Rameswaran ', 'Prasanna', 'R', '1979-01-17', '790171276V', 'male', 'Mr', '', 'E 2/4, Anderson Flats, Narahenpita, Colombo 5', '2581245', '0714398039', '148', '119', '0000-00-00', '0000-00-00', 0, 'active', 'permanent', '7', '0000-00-00', '', '', 0),
(256, '', 'jmr', '', 'Rathnayake Mudiyanselage Jayanthi Menaka Rathnayake', 'Jayanthi ', 'Rathnayake', 'RMJM', '1970-10-24', '707981474V', 'female', 'Ms', 'Delwatta, Pllebowala', 'Delwatta, Pllebowala', '2581245', '0718039931', '148', '119', '0000-00-00', '0000-00-00', 0, 'active', 'permanent', '7', '0000-00-00', '', '', 0),
(257, '', 'mdr', '', 'Philippenge Madhara Kalpani Jayarathna', 'Kalpani', 'Jayarathna', 'PMK', '1993-02-20', '935510074V', 'female', 'Ms', 'No. 476/26, Helen Estate, Weliveriya, Gampaha.', 'No. 476/26, Helen Estate, Weliveriya, Gampaha.', '', '0768233381', '2', '5', '0000-00-00', '0000-00-00', 0, 'active', 'permanent', '2', '0000-00-00', '', '', 0),
(258, '', 'pht', '', 'Piyumi Hansani Thilakratne', 'Piyumi ', 'Thilakratne', 'PH', '1992-11-22', '928274020V', 'female', 'Ms', 'NO: 12/2, Pallegama, Ampitiya, Kandy', 'NO: 12/2, Pallegama, Ampitiya, Kandy', '0112591080', '0767200269', '3', '78', '0000-00-00', '0000-00-00', 0, 'active', 'assignment', '20', '0000-00-00', '', '', 0),
(259, '00061', 'wrp', '', 'Renuka Matiwalakumbura', 'Renuka', 'Matiwalakumbura', 'WR', '1970-06-01', '706533265V', 'female', 'Ms', '233/1, Ruhunu Mw, Bangalawatta Kottawa', '233/1, Ruhunu Mw, Bangalawatta Kottawa', '9412581248', '0718039938', '148', '119', '0000-00-00', '0000-00-00', 0, 'active', 'permanent', '2', '0000-00-00', '', '', 0),
(260, '00666', 'paa', '', 'Prathayini Kuruparensothynathan', 'Kuruparensothynathan', 'Kuruparensothynathan', 'K', '0000-00-00', '908201973V', 'female', 'Ms', 'Araly west, Vaddukoddai,Jaffna', 'Araly west, Vaddukoddai,Jaffna', '0112589123', '0771941639', '2', '5', '0000-00-00', '0000-00-00', 0, 'active', 'permanent', '5', '0000-00-00', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee_bk_03-12-2018`
--

CREATE TABLE IF NOT EXISTS `employee_bk_03-12-2018` (
  `r_id` int(11) NOT NULL,
  `emp_id` varchar(220) NOT NULL,
  `emp_email` varchar(10) NOT NULL,
  `fp_id` varchar(5) NOT NULL,
  `emp_fullname` varchar(220) NOT NULL,
  `emp_firstname` varchar(250) NOT NULL,
  `emp_surname` varchar(250) NOT NULL,
  `emp_initials` varchar(250) NOT NULL,
  `emp_dob` date NOT NULL,
  `emp_nic` varchar(222) NOT NULL,
  `emp_gender` varchar(250) NOT NULL,
  `emp_title` varchar(250) NOT NULL,
  `emp_permanent_address` text NOT NULL,
  `emp_tmp_address` text NOT NULL,
  `emp_offic_num` varchar(20) NOT NULL,
  `emp_mobile_num` varchar(20) NOT NULL,
  `emp_designation` varchar(250) NOT NULL,
  `emp_designation_grade` varchar(222) DEFAULT NULL,
  `emp_des_start_date` date DEFAULT NULL,
  `emp_last_increament_date` date NOT NULL,
  `increament_scale` int(11) NOT NULL,
  `emp_state` varchar(250) NOT NULL,
  `emp_type` varchar(250) NOT NULL,
  `emp_divison_id` varchar(250) NOT NULL,
  `emp_first_emp_date` date NOT NULL,
  `emp_pic` varchar(220) NOT NULL,
  `emp_qulif_sort_form` varchar(250) NOT NULL,
  `emp_comment` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_bk_03-12-2018`
--

INSERT INTO `employee_bk_03-12-2018` (`r_id`, `emp_id`, `emp_email`, `fp_id`, `emp_fullname`, `emp_firstname`, `emp_surname`, `emp_initials`, `emp_dob`, `emp_nic`, `emp_gender`, `emp_title`, `emp_permanent_address`, `emp_tmp_address`, `emp_offic_num`, `emp_mobile_num`, `emp_designation`, `emp_designation_grade`, `emp_des_start_date`, `emp_last_increament_date`, `increament_scale`, `emp_state`, `emp_type`, `emp_divison_id`, `emp_first_emp_date`, `emp_pic`, `emp_qulif_sort_form`, `emp_comment`) VALUES
(57, '000004', '', '', 'Keerthi Sirimewan Goonatillake', 'Keerthi ', 'Goonatillake', 'KS', '1958-09-26', '582700907V', 'male', 'Mr', '"Maha Gedara", Mellawagara, Madampe', '"Maha Gedara", Mellawagara, Madampe', '', '', '0', '', '1999-07-01', '0000-00-00', 0, 'inactive', 'permanent', '10', '1987-07-01', '', '', 0),
(53, '000006', 'stn', '', 'Shakrange Turrance Nandasara', 'Nandasara', 'Nandasara', 'ST', '1952-12-03', '520721932V', 'male', 'Mr', 'Wattegedara, Wannigama, Nikawertiya', 'Wattegedara, Wannigama, Nikawertiya', '0112581245', '', '0', '', '1996-05-15', '0000-00-00', 0, 'active', 'assignment', '15', '1983-01-17', '', '', 0),
(50, '000007', 'lpj', '', 'Lokuge Patrick Jayasinghe', ' Patrick ', 'Jayasinghe', 'LP', '1959-08-04', '592170221V', 'male', 'Mr', '240/3, Ihala Yagoda, Imbulgoda', '240/3, Ihala Yagoda, Imbulgoda', '', '', '102', '53', '1987-08-20', '0000-00-00', 0, 'active', 'permanent', '14', '1999-08-20', '', '', 0),
(23, '000042', 'klj', '', 'Kithangodage Lakshman Jayartne', 'Lakshman', 'Jayartne', 'KL', '1965-04-21', '651120705V', 'male', 'Dr', '', '', '0112581245', '', '125', '76', '2012-11-20', '0000-00-00', 0, 'active', 'permanent', '18', '1993-06-21', '', '', 0),
(90, '000046', 'hdj', '', 'Hapuachchige Dona Jayantha Karunarathna', 'Jayantha', 'Karunarathna', 'HDJK', '1963-07-27', '637092863v', 'female', 'Ms', 'Uduwa North, Kuda Udawa, Horana', 'Uduwa North, Kuda Udawa, Horana', '', '', '3', '71', '1994-01-03', '0000-00-00', 0, 'active', 'permanent', '5', '1994-01-03', '', '', 0),
(26, '000048', 'sda', '', 'Shiromi Muditha Kumari Dissanayake Arunatileka', 'Shiromi', 'Arunatileka', 'SMKD', '1966-09-01', '667410029V', 'female', 'Dr', 'No.9/2 Mangala Mawatha, Sri Subhothipura, Battaramulla', 'No.9/2 Mangala Mawatha, Sri Subhothipura, Battaramulla', '0112581245', '', '125', '77', '2007-02-27', '0000-00-00', 0, 'active', 'permanent', '19', '1996-05-15', '', '', 0),
(92, '000049', 'nsj', '', 'Galagama Arachchige Dona Nishantha Samayapali Jayawardene', 'Nishantha', 'Jayawardene', 'GADNSJ', '1966-11-13', '668182283v', 'female', 'Ms', 'Sepatha, Raigama, Bandaragama', 'Sepatha, Raigama, Bandaragama', '', '', '3', '54', '1995-08-01', '0000-00-00', 0, 'active', 'permanent', '6', '1995-08-01', '', '', 0),
(19, '000053', 'jsg', '', 'Mestiyage Dona Jeevani Samantha Goonetillake', 'Jeevani', 'Goonetillake', 'MDJS', '1968-08-27', '687401018V', 'female', 'Dr', 'No. 681, Arawwala, Pannipitiya', 'No. 681, Arawwala, Pannipitiya', '0112581245', '', '125', '76', '2010-11-30', '0000-00-00', 0, 'active', 'permanent', '19', '1996-05-15', '', '', 0),
(12, '000055', 'gkad', '', 'Galloluwege Kapila Asanga Dias', 'Kapila', 'Dias', 'GKA', '1959-09-01', '592450364V', 'male', 'Dr', 'No.16/2, Temple Road, Kalubowila, Dehiwala', 'No.16/2, Temple Road, Kalubowila, Dehiwala', '0112581245', '', '125', '76', '2002-11-01', '0000-00-00', 0, 'active', 'permanent', '19', '1996-11-01', '', '', 0),
(93, '000065', 'dng', '', 'Dencil Nalaka Gunawardena', 'Dencil', 'Gunawardena', 'DN', '1976-10-18', '762920085v', 'male', 'Mr', '486/A, Makumbura, Pannipitiya', '486/A, Makumbura, Pannipitiya', '', '', '0', '16', '1999-08-23', '0000-00-00', 0, 'active', 'permanent', '10', '1999-08-23', '', '', 0),
(22, '000067', 'cik', '', 'Chamath Indika Keppitiyagama', 'Chamath', 'Keppitiyagama', 'CI', '1969-09-14', '692581857V', 'male', 'Dr', 'No.44/90A, Pahala Karagahamuna, Kadawatha', 'No.44/90A, Pahala Karagahamuna, Kadawatha', '0112581245', '', '125', '76', '2011-11-30', '0000-00-00', 0, 'active', 'permanent', '17', '1998-08-17', '', '', 0),
(55, '000080', 'gpn', '', 'Gonsal Botejuge Pradeep Niyomal Boteju', 'Pradeep ', 'Boteju', 'GPN', '1968-01-16', '680163006V', 'male', 'Mr', 'No.21, 1st Cross Street, Pagoda, Nugegoda', 'No.21, 1st Cross Street, Pagoda, Nugegoda', '', '', '102', '52', '2001-02-08', '0000-00-00', 0, 'active', 'permanent', '18', '2001-02-08', '', '', 0),
(96, '000092', 'kpr', '', 'Kadupitige Chithra Rathnalatha', 'Chithra', 'Rathnalatha', 'K P C', '1965-02-09', '655401903v', 'female', 'Ms', '6/54, Mineoluwa, Mirigama', '6/54, Mineoluwa, Mirigama', '', '', '0', '16', '1996-03-15', '0000-00-00', 0, 'active', 'permanent', '6', '1996-03-15', '', '', 0),
(15, '000100', 'taw', '', 'Thushani Alwis Weerasinghe', 'Thushani ', 'Weerasinghe', 'TA', '1972-12-21', '728560770V', 'female', 'Dr', 'No.25/6C, Gramberg Watta Road, Maharagama', 'No.25/6C, Gramberg Watta Road, Maharagama', '0112581245', '', '125', '77', '2009-09-23', '0000-00-00', 0, 'active', 'permanent', '19', '2002-10-10', '', '', 0),
(34, '000124', 'ssp', '', 'Sheirn Samantha Padma Mathara Arachchi', 'Sheirn', 'Mathara Arachchi', 'SSP', '1973-04-17', '731080364V', 'male', 'Mr', '53, Pubudu Mawatha, Mattegoda, Polgasowita', '53, Pubudu Mawatha, Mattegoda, Polgasowita', '0112581245', '', '128', '82', '2011-05-04', '0000-00-00', 0, 'active', 'permanent', '18', '2002-08-26', '', '', 0),
(54, '000125', 'hms', '', 'Halgamage Malinda Siriwardana', 'Malinda', 'Siriwardana', 'HM', '1971-05-04', '711253408V', 'male', 'Mr', 'Prasanna, Boyagane', 'Prasanna, Boyagane', '0112581245', '', '128', '82', '2011-08-04', '0000-00-00', 0, 'active', '', '18', '2002-08-26', '', '', 0),
(40, '000127', 'rsm', '', 'Ravindra Senaka Madanayake', 'Ravindra', 'Madanayake', 'RS', '1971-02-22', '710532478V', 'male', 'Mr', 'No.410/121, Bauddhaloka Mawatha, Colombo 07', 'No.410/121, Bauddhaloka Mawatha, Colombo 07', '', '0112581245', '128', '82', '2011-08-04', '0000-00-00', 0, 'active', 'permanent', '18', '2002-09-02', '', '', 0),
(9, '000132', 'ndk', '', 'Nihal Dhanasiri Kodikara', 'Nihal ', 'Kodikara', 'ND', '1955-10-15', '552892100V', 'male', 'Prof', 'No.19, Walauwatta Place, Nawale, Rajagiriya', 'No.19, Walauwatta Place, Nawale, Rajagiriya', '0112581245', '', '119', '', '2009-02-17', '0000-00-00', 0, 'active', 'permanent', '19', '1982-04-01', '', '', 0),
(11, '000133', 'dnr', '', 'Dumidu Nalin Ranasinghe', 'Dumidu', 'Ranasinghe', 'DN', '1960-07-14', '601962241V', 'male', 'Dr', 'No.104, Jayagath Road, Nawinna, Maharagama', 'No.104, Jayagath Road, Nawinna, Maharagama', '0112581245', '', '125', '76', '2000-12-13', '0000-00-00', 0, 'active', 'permanent', '17', '1986-09-08', '', '', 0),
(4, '000134', 'gnw', '', 'Gihan Nilendra Wikramanayake', 'Gihan', 'Wikramanayake', 'GN', '1960-01-17', '600170490V', 'male', 'Prof', '', '', '0112581245', '', '1', '16', '2016-02-01', '0000-00-00', 0, 'inactive', 'permanent', '19', '1988-03-01', '', '', 0),
(13, '000135', 'gps', '', 'Gihan Pushpajith Seneviratne', 'Gihan', 'Seneviratne', 'GP', '1963-02-12', '630433550V', 'male', 'Mr', 'No.21/11A, Pepiliyana Mawatha, Kohuwala, Nugegoda', 'No.21/11A, Pepiliyana Mawatha, Kohuwala, Nugegoda', '0112581245', '', '125', '76', '2002-09-24', '0000-00-00', 0, 'active', 'permanent', '17', '1988-03-01', '', '', 0),
(17, '000137', 'ddk', '', 'Damitha Dissakitti Karunaratna', 'Damitha', 'Karunaratna', 'DD', '1960-11-23', '603280598V', 'male', 'Dr', 'Wasantha Withanage Place, Maharagama Road, Mammpe, Piliyandale', 'Wasantha Withanage Place, Maharagama Road, Mammpe, Piliyandale', '0112581245', '', '125', '76', '2006-09-22', '0000-00-00', 0, 'active', 'permanent', '18', '1992-06-01', '', '', 0),
(16, '000138', 'nas', '', 'Muthunama Gonnage Noel Antoney Sanath Fernando ', 'Noel ', 'Fernando ', 'MGNAS', '1960-12-10', '603450671V', 'male', 'Dr', 'No.27, Pilicia Mawatha, Hapugoda, Kandana', 'No.27, Pilicia Mawatha, Hapugoda, Kandana', '0112581245', '', '125', '76', '2009-05-06', '0000-00-00', 0, 'active', 'permanent', '19', '1998-01-05', '', '', 0),
(28, '000139', 'mks', '', 'Kurukulasuriya Patabendige Malik Kelum Silva', 'Malik', 'Silva', 'KPMK', '1964-09-04', '642480723V', 'male', 'Mr', 'No.101, St Josephs Road, Kanuwana, Ja-ela', 'No.101, St Josephs Road, Kanuwana, Ja-ela', '0112581245', '', '128', '81', '1994-04-07', '0000-00-00', 0, 'active', 'permanent', '18', '1994-04-07', '', '', 0),
(7, '000140', 'aja', '', 'Don Ajantha Sanjeewa Atukorale', 'Ajantha', 'Atukorale', 'DAS', '1968-06-23', '681750800V', 'male', 'Dr', '21/1, Singhe Road, Keranga Pokuna, Wattala', '21/1, Singhe Road, Keranga Pokuna, Wattala', '0112581245', '0713882929', '125', '76', '2009-08-24', '0000-00-00', 0, 'active', 'permanent', '17', '1997-07-10', '000140_3525701873_image.jpg', '', 0),
(21, '000142', 'kasun', '', 'Tirimadura Nandika Kasun De Zoysa', 'Nandika', 'De Zoysa', 'TNK', '1971-12-15', '713502456V', 'male', 'Dr', 'Vidyala Mawatha, Ambalangoda', 'Vidyala Mawatha, Ambalangoda', '0112581245', '', '125', '76', '2010-12-21', '0000-00-00', 0, 'active', 'permanent', '18', '1999-01-04', '', '', 0),
(27, '000143', 'hac', '', 'Caldera Hellassege Amithalal', 'Amithalal', 'Caldera', 'HA', '1961-06-04', '611560206V', 'male', 'Dr', 'F/G/1, Samapura Housing Scheme, Colombo 10', 'F/G/1, Samapura Housing Scheme, Colombo 10', '0112581245', '', '125', '76', '2014-02-05', '0000-00-00', 0, 'active', 'permanent', '19', '1991-12-02', '', '', 0),
(20, '000144', 'hlp', '', 'Hemakumar Lalith Premaratne', 'Hemakumar ', 'Premaratne', 'HL', '1952-07-22', '522043460V', 'male', 'Dr', '212. High Level Road, Maharagama', '212. High Level Road, Maharagama', '0112581245', '', '125', '76', '2011-05-20', '0000-00-00', 0, 'inactive', 'permanent', '17', '1992-10-01', '', '', 0),
(5, '000147', 'kph', '', 'Kamalanath Priyantha Hewagamage', 'Kamalanath ', 'Hewagamage', 'KP', '1966-05-24', '661450797v', 'male', 'Prof', 'No. 731/3, Matewala Road, Arauwala, Pannipitiya', 'No. 731/3, Matewala Road, Arauwala, Pannipitiya', '', '0714239529', '1', '16', '0000-00-00', '0000-00-00', 0, 'active', 'permanent', '2', '0000-00-00', '000147_2822422930_image.jpg', '', 0),
(18, '000148', 'spw', '', 'Galpayage Don Susantha Prasad Wimalaratne', 'Susantha', 'Wimalaratne', 'GDSP', '1967-11-12', '673170803V', 'male', 'Dr', 'Sanketh, Colombo Road, Pokunuwita', 'Sanketh, Colombo Road, Pokunuwita', '0112581245', '', '0', '', '2009-08-21', '0000-00-00', 0, 'active', 'permanent', '18', '1996-05-09', '', '', 0),
(95, '000151', 'kcw', '', 'Weerakkodige Keerthi Chandika Weerakkody', 'Keerthi', 'Weerakkody', 'W K C ', '1972-09-29', '722731425v', 'male', 'Mr', '345/A, Walgama, Malwana', '345/A, Walgama, Malwana', '', '', '0', '16', '1999-10-14', '0000-00-00', 0, 'active', 'permanent', '11', '1999-10-14', '', '', 0),
(41, '000156', 'rnd', '', 'Malavige Don Rasika Niroshan Dayarathna', 'Rasika', 'Dayarathna', 'MDRN', '1974-12-24', '743592913V', 'male', 'Dr', '', '', '0112581245', '', '125', '77', '2013-09-12', '0000-00-00', 0, 'active', 'permanent', '18', '2003-09-18', '', '', 0),
(67, '000158', 'rmw', '', 'Rasnayaka Mudiyanselage Weerasiri', 'Rasnayaka Mudiyanselage', 'Weerasiri', 'RMW', '0000-00-00', '593020304v', 'male', 'Mr', '428F, Lekamge Mawatha, Kossinna, Ganemulla', '428F, Lekamge Mawatha, Kossinna, Ganemulla', '', '', '104', '57', '0000-00-00', '0000-00-00', 0, 'active', 'permanent', '6', '0000-00-00', '', '', 0),
(10, '000160', 'arw', '', 'Aruna Ruwan Weerasinghe', 'Aruna', 'Weerasinghe', 'AR', '1960-06-09', '601610400V', 'male', 'Dr', 'No.16, St. Josephs Road, Nugegoda', 'No.16, St. Josephs Road, Nugegoda', '0112581245', '', '125', '76', '2000-09-21', '0000-00-00', 0, 'active', 'permanent', '17', '1988-05-03', '', '', 0),
(36, '000174', 'hbe', '', 'Herath Ekanayake Mudiyanselage Hiran Bandara', 'Hiran ', 'Ekanayake', 'HEMHB', '1978-09-26', '782700553V', 'male', 'Mr', 'No. 273, "Nilanthi", Megoda kolonnawa, Wellampitiya', 'No. 273, "Nilanthi", Megoda kolonnawa, Wellampitiya', '0112581245', '', '125', '77', '2015-12-11', '0000-00-00', 0, 'active', 'permanent', '17', '2006-02-01', '', '', 0),
(33, '000197', 'hau', '', 'Tuan Muhamath Hakim Ali Usoof', 'Tuan ', 'Usoof', 'TMHA', '1977-12-22', '773572372V', 'male', 'Dr', 'No.30/13, Bangalawatta, Lewella, Kandy', 'No.30/13, Bangalawatta, Lewella, Kandy', '0112581245', '', '125', '77', '2004-10-01', '0000-00-00', 0, 'active', 'permanent', '18', '2004-10-01', '', '', 0),
(122, '000206', 'kmu', '', 'Karandeniya Mahadurage Upul Prasanna', 'Upul', 'Prasanna', 'K M U', '1979-12-23', '793583230v', 'male', 'Mr', '53/3A, Priyamawatha, Makuluduwa, Piliyandala', '53/3A, Priyamawatha, Makuluduwa, Piliyandala', '', '', '0', '16', '2009-11-01', '0000-00-00', 0, 'active', 'permanent', '11', '2009-11-01', '', '', 0),
(111, '000221', 'ppw', '', 'Weragoda Gamage pupudunie Pavithra Wijesinghe', 'pupudunie ', 'Wijesinghe', 'W G P P ', '1982-01-15', '825151664v', 'female', 'Ms', '61/C, Kurunduwatta Hunumulla', '61/C, Kurunduwatta Hunumulla', '', '', '3', '9', '2013-04-17', '0000-00-00', 0, 'active', 'permanent', '7', '2013-04-17', '', '', 0),
(151, '000234', '', '', 'Gammahalage Gedara Janika Sagarika Rathnayake', 'Janika ', 'Rathnayake', 'G G J S ', '1985-04-19', '856100928v', 'male', 'Ms', 'No 633/24, kudumirisalanda, Nadungamuwa, Gampaha', 'No 633/24, kudumirisalanda, Nadungamuwa, Gampaha', '', '', '4', '49', '2009-11-01', '0000-00-00', 0, 'active', 'permanent', '4', '2009-11-01', '', '', 0),
(108, '000253', 'dha', '', 'Attanayake Mudiyanselage Dinesh Harindra Attanayake', 'Dinesh', 'Attanayake', 'A M D H', '1983-08-07', '832200980v', 'male', 'Mr', '07, Vihara Mawatha, Suduhumpala, Kandy', '07, Vihara Mawatha, Suduhumpala, Kandy', '', '', '0', '16', '2011-11-01', '0000-00-00', 0, 'active', 'permanent', '6', '2011-11-01', '', '', 0),
(107, '000265', 'har', '', 'Irosh Harendra Amuwitagama', 'rosh', 'Awuwitagama', 'I H ', '1978-02-20', '780513845v', 'male', 'Mr', '506/03, Kottawa, Pannipitiya', '08/E/A, Paulas Mawatha, Kandewatta, Galle', '', '', '0', '16', '2006-04-03', '0000-00-00', 0, 'active', 'permanent', '8', '2006-04-03', '', '', 0),
(25, '000271', 'aye', '', 'Yamaya Ekanayaka', 'Yamaya', 'Ekanayaka', 'Y', '1972-11-01', '728062070V', 'female', 'Dr', '', '', '', '', '125', '76', '2013-05-23', '0000-00-00', 0, 'active', 'permanent', '19', '2007-04-01', '', '', 0),
(109, '000276', 'inn', '', 'Imiyage Nayanjith Nuwanpriya Karunarathna', 'Nayanjith', 'Karunarathna', 'I N N ', '1984-05-08', '841291093v', 'male', 'Mr', '129, Welagana, Road,Barawawila, Divulapitiya', '129, Welagana, Road,Barawawila, Divulapitiya', '', '', '0', '16', '2011-12-01', '0000-00-00', 0, 'active', 'permanent', '6', '2011-12-01', '', '', 0),
(8, '000278', 'asg', '', 'Anuradha Sepalika Gunathilake', 'Anuradha', 'Gunathilake', 'A S ', '1981-05-20', '816410649V', 'female', 'Ms', '', '248/3 Sri Sarananda Mawatha, Kandaliyadda Paluwa, Ganemulla', '0112158932', '0716905382', '3', '9', '2013-04-17', '0000-00-00', 0, 'active', 'permanent', '3', '2013-04-17', '', '', 0),
(152, '000295', '', '', 'Weradoowa Widana Kankanmge Chandima Priyankara', 'Chandima ', 'Priyankara', 'W W K C', '1978-02-10', '780411112v', 'male', 'Mr', '17 Kanuwa, Pannagamuwa,Wirawila, Thissa', 'Priyankara', '', '', '33', '22', '2009-11-01', '0000-00-00', 0, 'active', 'permanent', '4', '2009-11-01', '', '', 0),
(71, '00033', 'rla', '', 'Rajapakse Lekamge Asoka Rajapakse', 'Asoka', 'Rajapakse', 'RLAR', '1960-06-18', '', 'female', 'Ms', 'Karuna, Thambugala, Danowita', 'Karuna, Thambugala, Danowita', '', '', '67', '32', '0000-00-00', '0000-00-00', 0, 'active', 'permanent', '8', '0000-00-00', '', '', 0),
(35, '000339', 'mie', '', 'Manjusri Ishwara Ellepola Wickramasinghe', 'Manjusri', 'Wickramasinghe', 'MIE', '1983-12-11', '833462989V', 'male', 'Dr', 'Galmaduva, Estake Road, Kundasale', 'Galmaduva, Estake Road, Kundasale', '0112581245', '', '128', '82', '2011-03-11', '0000-00-00', 0, 'active', 'permanent', '17', '2011-03-11', '', '', 0),
(14, '000367', 'amp', '', 'Franciscu Hettige Anne Mindika Premachandra', 'Anne', 'Premachandra', 'FHAM', '1983-11-17', '838221750V', 'female', 'Dr', 'No.7A, Udaya Mawatha, Templers Road, Mount Lavinia', 'No.7A, Udaya Mawatha, Templers Road, Mount Lavinia', '0112581245', '', '128', '', '2009-05-04', '0000-00-00', 0, 'active', 'permanent', '17', '2009-05-04', '', '', 0),
(121, '000377', 'dap', '', 'Dahanayake Mudiyanselage Udagedara Asanaka Prabath', 'Asanaka ', 'Prabath', 'D M U A', '1984-07-30', '842120373v', 'male', 'Mr', '66/5, Pallegunnepana, Polgolla', '66/5, Pallegunnepana, Polgolla', '', '', '3', '9', '2009-11-04', '0000-00-00', 0, 'active', 'permanent', '8', '2009-11-04', '', '', 0),
(42, '000393', 'vsh', '', 'Brandiyawatta Mapa Appuhamilage Vishwajith', 'Vishwajith', 'Mapa ', 'BMAV ', '1981-11-13', '813180421V', 'male', 'Mr', 'No.122/1, Bellummahara, Mudungoda', 'No.122/1, Bellummahara, Mudungoda', '', '', '0', '', '2017-11-10', '0000-00-00', 0, 'active', 'permanent', '11', '2010-10-07', '', '', 0),
(105, '000418', 'wds', '', 'Weda Dewage Dilani Sagarika', 'Dilani', 'Sagarika', 'W D D ', '1972-02-23', '725540884v', 'female', 'Ms', '327, Siriwardena Mawatha, Walpola, Ragama', '327, Siriwardena Mawatha, Walpola, Ragama', '', '', '0', '16', '2007-01-01', '0000-00-00', 0, 'active', 'permanent', '10', '2007-01-01', '', '', 0),
(104, '000425', 'gms', '', 'Gihan Manjula Sirisena', 'Gihan', 'Sirisena', 'G M ', '1977-11-17', '773221197v', 'male', 'Mr', '29/1, Vidyala Mawatha, Pahathgama, Hanwella', '29/1, Vidyala Mawatha, Pahathgama, Hanwella', '', '', '0', '16', '2005-09-15', '0000-00-00', 0, 'active', 'permanent', '6', '2005-09-15', '', '', 0),
(110, '000435', 'srd', '', 'Demuni Shyamali Randika De Silva', 'Demuni ', 'Silva', 'D S R ', '1982-04-20', '826110635v', 'female', 'Ms', '162/B, Siril Mawatha, Mahawaskaduwa, Waskaduwa', '162/B, Siril Mawatha, Mahawaskaduwa, Waskaduwa', '', '', '0', '16', '2012-04-16', '0000-00-00', 0, 'active', 'permanent', '6', '2012-04-16', '', '', 0),
(150, '000456', 'emg', '', 'Edirisinghe Mudiyanselage Gunarathna', 'Edirisinghe ', 'Gunarathna', 'E M', '1967-04-08', '671190408v', 'male', 'Mr', 'No 677, Kiridawa, Kuliyapitiya', '93/2A, Temple Road, Maharagama', '', '', '104', '57', '2013-02-01', '0000-00-00', 0, 'active', 'permanent', '6', '2005-02-01', '', '', 0),
(68, '000468', 'sdc', '', 'Sinhalage Deepani Chandralatha', 'Deepani', 'Chandralatha', 'SDC', '1973-12-15', '738502116v', 'female', 'Ms', 'Nuwaragam Colony, Padikaramaduwa', 'Nuwaragam Colony, Padikaramaduwa', '', '', '0', '', '2013-05-02', '0000-00-00', 0, 'active', 'permanent', '3', '2013-05-02', '', '', 0),
(69, '000478', 'dkm', '', 'Disna Kumari Malkanthi Rathnayaka', 'Disna', 'Rathnayaka', 'DKMR', '1961-06-24', '616761129v', 'female', 'Ms', '', '', '', '', '0', '', '2011-01-03', '0000-00-00', 0, 'active', 'permanent', '7', '2011-01-03', '', '', 0),
(30, '000493', 'crw', '', 'Muthukuda Wijesinghe Arachchige Chithranjali Rupika Wijesinghe', 'Chithranjali', 'Wijesinghe', 'MWACR', '1969-04-11', '696022836V', 'female', 'Ms', 'Sisira, Saripuththa College of Education Road, Napagoda, Nittambuwa', 'Sisira, Saripuththa College of Education Road, Napagoda, Nittambuwa', '0112581245', '', '125', '77', '2014-04-23', '0000-00-00', 0, 'active', 'permanent', '19', '2014-04-23', '', '', 0),
(29, '000494', 'wvw', '', 'Welgamage Viraj Welgama', 'Viraj', 'Welgama', 'WV', '1979-02-02', '790330277V', 'male', 'Mr', 'No.19D, Ja-ela Road, Kiridiwita, Gampaha', 'No.19D, Ja-ela Road, Kiridiwita, Gampaha', '0112581245', '', '125', '76', '2014-04-23', '0000-00-00', 0, 'active', 'permanent', '19', '2014-04-23', '', '', 0),
(39, '000495', 'kpu', '', 'Kankani Pathirage Udeni Jayasinghe', 'Udeni', 'Jayasinghe', 'KPU', '1984-04-15', '846060332V', 'female', 'Ms', '', '', '0112581245', '', '128', '82', '2014-04-23', '0000-00-00', 0, 'active', 'permanent', '18', '2014-04-23', '', '', 0),
(38, '000496', 'pns', '', 'Rathnayake Mudiyanselage Punsisi Nayanaprabha Somaratne', 'Punsisi', 'Somaratne', 'RMPN', '1985-04-04', '855951339V', 'female', 'Ms', 'No.374/2, Maya Mawatha, Makumbura, Pannipitiya', 'No.374/2, Maya Mawatha, Makumbura, Pannipitiya', '0112581245', '', '128', '82', '2014-04-23', '0000-00-00', 0, 'active', 'permanent', '19', '2014-04-23', '', '', 0),
(37, '000497', 'tch', '', 'Halloluwa Kankanamlage Thilina Chamikara Halloluwa', 'Thilina', 'Halloluwa', 'HKTC', '1987-07-23', '872051473V', 'male', 'Mr', 'No.97, Polgahahena Road, Batagama South, Kandana', 'No.97, Polgahahena Road, Batagama South, Kandana', '0112581245', '', '128', '82', '2014-11-10', '0000-00-00', 0, 'active', 'permanent', '19', '2014-11-10', '', '', 0),
(66, '000500', 'kkk', '', 'Kotte Kankanamge Kithsiri Dharamathilaka', 'Kithsiri', 'Dharmathilaka', 'KKK', '1968-06-13', '681650806v', 'male', 'Mr', '341/1/55,Mahayayawatta,Pelenwatta,Gorakapitiya,Piliyandala', '341/1/55,Mahayayawatta,Pelenwatta,Gorakapitiya,Piliyandala', '', '', '104', '57', '0000-00-00', '0000-00-00', 0, 'active', '', '4', '0000-00-00', '', '', 0),
(24, '000513', 'rts', '', 'Thambithurai Sritharan', 'Sritharan', 'Thambithurai', 'T', '1962-04-29', '621201158V', 'male', 'Dr', '', '', '0112581245', '', '125', '76', '2001-12-08', '0000-00-00', 0, 'active', 'permanent', '19', '1990-05-23', '', '', 0),
(120, '000538', 'ino', '', 'Jayaneththi Koralalage Dona Inoka Kumuduni Thilakarathne', 'Inoka ', 'Thilakarathne', 'J K D I K ', '1977-05-15', '776360279v', 'female', 'Ms', 'Sampath, Ambalangoda watta, welikala, Pokunuwita', 'Sampath, Ambalangoda watta, welikala, Pokunuwita', '', '', '3', '9', '2014-10-24', '0000-00-00', 0, 'active', 'permanent', '14', '2014-10-24', '', '', 0),
(125, '000539', '', '', 'Pelakuttige Ganaga Priyangani Fernando', 'Ganaga ', 'Fernando', 'P K G P', '1977-09-04', '776864323v', 'female', 'Ms', '144/1/12, Pasal Mawatha, Kirigampamunuwa', '144/1/12, Pasal Mawatha, Kirigampamunuwa', '', '', '4', '12', '2014-10-24', '0000-00-00', 0, 'active', 'permanent', '5', '2014-10-24', '', '', 0),
(118, '000540', 'pri', '', 'Galbokka Hewage Priyantha Indeewari De Silva', 'Priyantha ', 'De Silva', 'G H P I', '1982-03-03', '825630040v', 'female', 'Ms', '50/25 A, Maningamuwa Road, Welimilla, Bandaragama', '50/25 A, Maningamuwa Road, Welimilla, Bandaragama', '', '', '0', '16', '2014-10-24', '0000-00-00', 0, 'active', 'permanent', '4', '2014-10-24', '', '', 0),
(119, '000541', 'kdv', '', 'karunathilakge Sanjeewa Udaya Kumara', 'Sanjeewa', 'Kumara', 'K S U', '1972-12-26', '723612306v', 'male', 'Mr', '144/1/12, Pasal Mawatha, Kirigampamunuwa', '144/1/12, Pasal Mawatha, Kirigampamunuwa', '', '', '3', '9', '2014-10-24', '0000-00-00', 0, 'active', 'permanent', '14', '2014-10-24', '', '', 0),
(115, '000542', 'prd', '', 'Polegodage Rajika Dilrukshi', 'Rajika ', 'Dilrukshi', 'P G R ', '1980-12-15', '808502631v', 'female', 'Ms', '5D, Wedagewatta Road, Kotuwegoda, Rajagiriya', '5D, Wedagewatta Road, Kotuwegoda, Rajagiriya', '', '', '0', '16', '2014-10-24', '0000-00-00', 0, 'active', 'permanent', '5', '2014-10-24', '', '', 0),
(116, '000543', 'lck', '', 'Lumbini Chathrapani Karunasagera', 'Lumbini ', 'Karunasagera', 'L C', '1984-09-14', '847583495v', 'female', 'Ms', '486/A, Makumbura, Pannipitiya', '486/A, Makumbura, Pannipitiya', '', '', '0', '16', '2014-10-24', '0000-00-00', 0, 'active', 'permanent', '3', '2014-10-24', '', '', 0),
(123, '000544', 'wns', '', 'Widanelage Nihal Sampath Fonseka', 'Nihal', 'Fonseka', 'W N S', '1983-02-23', '830540180v', 'male', 'Mr', '2225 B, Medaya para,Delduwa, Wadduwa', '2225 B, Medaya para,Delduwa, Wadduwa', '', '', '0', '16', '2014-10-24', '0000-00-00', 0, 'active', 'permanent', '14', '2014-10-24', '', '', 0),
(149, '000545', '', '', 'Hapu Arachchige Samith Chathuranga', 'Samith', 'Chathuranga', 'H A S', '1984-04-30', '841213300v', 'male', 'Mr', '136/7//3, Udupila, Delgoda', '136/7//3, Udupila, Delgoda', '', '', '4', '49', '2014-10-24', '0000-00-00', 0, 'active', 'permanent', '4', '2014-10-24', '', '', 0),
(146, '000546', 'rmd', '', 'Rathnayake Mudiayanselage Dilip', 'Rathnayake ', 'Dilip', 'R M', '1986-12-29', '863642248v', 'male', 'Mr', '77/2,Kiralagaha Thotupola para, Horethuduwa, keslwatta,panadura', '77/2,Kiralagaha Thotupola para, Horethuduwa, keslwatta,panadura', '', '', '0', '16', '2014-10-24', '0000-00-00', 0, 'active', 'permanent', '7', '2014-10-24', '', '', 0),
(127, '000547', 'mga', '', 'Muthunama Gonnage Aruna gayan', 'Aruna ', 'gayan', 'M G A', '1988-02-05', '880361678v', 'male', 'Mr', '211/82, Nagalagam Vidiya, Colombo 14', '211/82, Nagalagam Vidiya, Colombo 14', '', '', '0', '16', '2014-10-24', '0000-00-00', 0, 'active', 'permanent', '10', '2014-10-24', '', '', 0),
(117, '000549', 'rml', '', 'Ranathunga Mudiyanselage Lalin Nishantha Ranathunga', 'Lalin ', 'Ranathunga', 'R M L', '1985-11-26', '853311294v', 'male', 'Mr', '', '', '', '', '0', '16', '2014-10-24', '0000-00-00', 0, 'active', 'permanent', '5', '2014-10-24', '', '', 0),
(147, '000551', '', '', 'Nambukara Thanthirirge Nisala Sandaruwan Jayawardana', 'Nisala', 'Jayawardana', 'N T N S ', '1980-10-13', '802874600v', 'male', 'Mr', 'No 86,"Tharindu",Muchalinda Pirivena Rd, Hiththatiya - East,Matara', 'No 86,"Tharindu",Muchalinda Pirivena Rd, Hiththatiya - East,Matara', '', '', '4', '49', '2014-10-24', '0000-00-00', 0, 'active', 'permanent', '6', '2014-10-24', '', '', 0),
(148, '000552', 'nns', '', 'Samarakoon Mudiyanselage Wewa Gedara Nadeeka Nilmini Podimenike', 'Nadeeka ', 'Podimenike', 'S M W G N N ', '1986-04-06', '865972083v', 'female', 'Ms', 'Madawala thenna, illagolla, Haguranketha', 'Madawala thenna, illagolla, Haguranketha', '', '', '4', '49', '2014-10-24', '0000-00-00', 0, 'active', '', '6', '2014-10-24', '', '', 0),
(128, '000581', 'sjn', '', 'Sandya Jeewa Samarasekara', 'Sandya', 'Samarasekara', 'S J', '1963-04-22', '636130117v', 'female', 'Ms', '10, Sirimal Uyana, New Gadamuwana Rd, Piliyandala', '10, Sirimal Uyana, New Gadamuwana Rd, Piliyandala', '', '', '0', '16', '2014-10-24', '0000-00-00', 0, 'active', 'permanent', '14', '2014-10-24', '', '', 0),
(70, '000582', 'msw', '', 'Jayaweera Arachchige Maduka Samanmali Wijerathna', 'Maduka', 'Wijerathna', 'JAMSW', '1984-09-01', '847453125v', 'female', 'Ms', 'Beligala Para, Nahalla, Nebada', 'Beligala Para, Nahalla, Nebada', '', '', '0', '', '2017-08-15', '0000-00-00', 0, 'active', 'permanent', '9', '2017-08-15', '', '', 0),
(87, '000624', 'dra', '', 'Hemanthi Prasngika Henegama', 'Hemanthi', 'Henegama', 'HPH', '1977-08-30', '777432460v', 'female', 'Ms', '233/A/3, kekirideniya Road, Hewagama, kaduwela', '233/A/3, kekirideniya Road, Hewagama, kaduwela', '', '', '0', '', '2006-08-02', '0000-00-00', 0, 'active', 'permanent', '5', '2006-08-02', '', '', 0),
(129, '000625', 'era', '', 'Pulukkutti Arachchige Harshani Erandika Dewapriya', 'Harshani', 'Dewapriya', 'P A H E ', '1985-07-19', '857010302v', 'female', 'Ms', '358/1, Ganagarama Road, Werahara, Boralesgamuwa', '358/1, Ganagarama Road, Werahara, Boralesgamuwa', '', '', '3', '9', '2010-05-03', '0000-00-00', 0, 'active', 'permanent', '3', '2010-05-03', '', '', 0),
(85, '000627', 'vmp', '', 'Vidana Gamage Manoja Priyangika', 'Manoja', 'Priyangika', 'VGMP', '1981-10-02', '817761658v', 'female', 'Ms', 'Mahagama Gedara, Kekanadura, Matara', 'Mahagama Gedara, Kekanadura, Matara', '', '', '0', '16', '2012-04-02', '0000-00-00', 0, 'active', 'permanent', '6', '2012-04-02', '', '', 0),
(126, '00548', '', '', 'Payagala kankanamge Shaminda Wasantha', 'Shaminda ', 'Wasantha', 'P K S ', '1974-02-07', '760382055v', 'male', 'Mr', 'Dikhena Para, Magura, Baduraliya', 'Dikhena Para, Magura, Baduraliya', '', '', '4', '12', '2014-10-24', '0000-00-00', 0, 'active', '', '5', '2014-10-24', '', '', 0),
(6, '00596', 'shm', '', 'Ilangakoon Pathirathnalage Shiromi Manjula', 'Shiromi', 'Ilangakoon', 'I P', '1993-05-16', '936370870V', 'female', 'Ms', 'No 195/9 Eluwapitiya Veyangoda', 'No 195/9 Eluwapitiya Veyangoda', '8933', '0752343477', '4', '12', '2017-01-02', '0000-00-00', 0, 'active', 'contract', '3', '2014-03-03', '00596_5326907579_image.jpg', '', 0),
(43, '01', 'dnp', '', 'Deenuka Niroshini Perera', 'Deenuka', 'Perera', 'DN', '1989-11-30', '898350029V', 'female', 'Ms', 'No.37, Fernando Road, Mount Lavinia', 'No.37, Fernando Road, Mount Lavinia', '0112158962', '', '128', '82', '2016-12-22', '0000-00-00', 0, 'active', 'permanent', '19', '2016-12-22', '', '', 0),
(47, '02', 'acj', '', 'Don Dimungu Arachchige Chathura Jeewaka Jayalath', 'Chathura', 'Jayalath', 'DDACJ', '1988-04-01', '880921070V', 'male', 'Mr', 'No.400/19/2, Jayanthi Place, Kirillawala, Kadawatha', 'No.400/19/2, Jayanthi Place, Kirillawala, Kadawatha', '', '0112158978', '128', '', '2016-12-22', '0000-00-00', 0, 'active', 'permanent', '18', '2016-12-22', '', '', 0),
(45, '03', 'hdp', '', 'Ranasinghe Arachchige Harsha Dilshan Perera', 'Harsha', 'Perera', 'RAHD', '1991-01-01', '910015060V', 'male', 'Mr', 'No.181/95, Welihenawatta, Siyambalagoda, polgasowita', 'No.181/95, Welihenawatta, Siyambalagoda, polgasowita', '', '0112158978', '128', '82', '2017-11-10', '0000-00-00', 0, 'active', 'permanent', '19', '2016-12-22', '', '', 0),
(46, '04', 'uar', '', 'Rathnayake Mudiyanselage Upul Anuradha Rathnayake', 'Upul ', 'Rathnayake', 'RMUA', '1986-02-07', '860380820V', 'male', 'Mr', 'Vajira Sevana, Dorabavila, Thuththiripitigama', 'Vajira Sevana, Dorabavila, Thuththiripitigama', '0112158978', '', '128', '82', '2016-12-22', '0000-00-00', 0, 'active', 'permanent', '19', '2016-12-22', '', '', 0),
(48, '05', 'rnr', '', 'Roshan Namal Rajapakse', 'Roshan', 'Rajapakse', 'RN', '1988-11-09', '883143779V', 'male', 'Mr', '91/17B, Watarappala Road, Mount Lavinia', '91/17B, Watarappala Road, Mount Lavinia', '0112158978', '', '128', '82', '2016-12-22', '0000-00-00', 0, 'active', 'permanent', '18', '2016-12-22', '', '', 0),
(49, '06', 'ysr', '', 'Ranasinghe Arachchige Yohani Shamindi Ranasinghe', 'Yohani ', 'Ranasinghe', 'RAYS', '1988-06-02', '886541899V', 'female', 'Ms', '136, Lake Road. Ibbagamuwa', '136, Lake Road. Ibbagamuwa', '0112158962', '', '128', '82', '2017-01-16', '0000-00-00', 0, 'active', 'permanent', '1', '2017-01-16', '', '', 0),
(51, '07', 'eno', '', 'Kotagoda Hettiarachchilage Enosha Lasanthi Warunika Hettiarachchi', 'Enosha ', 'Hettiarachchi', 'KHELW', '1981-01-26', '815262235V', 'female', 'Dr', 'Buddika, 21/1, Pirivena Road, Mount Lavinia', 'Buddika, 21/1, Pirivena Road, Mount Lavinia', '', '', '125', '77', '2017-08-01', '0000-00-00', 0, 'active', 'permanent', '19', '2017-08-01', '', '', 0),
(52, '08', 'dsr', '', 'Kahawalage Damitha Sandaruwan', 'Damitha ', 'Sandaruwan', 'KD', '1980-01-22', '800221439V', 'male', 'Dr', 'No.370A, Jalthara, Ranala', 'No.370A, Jalthara, Ranala', '', '', '128', '82', '2017-08-01', '0000-00-00', 0, 'active', 'permanent', '18', '2017-08-01', '', '', 0),
(56, '09', 'asa', '', 'Asanka Priyadarshana Sayakkara', 'Asanka', 'Sayakkara', 'AP', '1987-09-23', '872672877V', 'male', 'Mr', '"Sampath", Devinuwara Road, Thalpavila, Kekanadura', 'Sampath, Devinuwara Road, Thalpavila, Kekanadura', '', '0112158978', '128', '82', '2016-12-22', '0000-00-00', 0, 'active', 'permanent', '17', '2016-12-22', '', '', 0),
(58, '10', 'jpk', '', 'Kumara Vidanalage Don Janaka Prabhash Kumarasinghe', 'Janaka ', 'Kumarasinghe', 'KVDJP', '1985-07-01', '851831932V', 'male', 'Mr', 'No.98/D Ebilipitiya Road, Haburugale, Benthote', 'No..98/D Ebilipitiya Road, Haburugale, Benthote', '', '0112158978', '128', '82', '2017-04-05', '0000-00-00', 0, 'active', 'permanent', '1', '2017-04-05', '', '', 0),
(247, '100', '', '', 'J A U B Jayakody', 'J A U B', 'Jayakody', 'JAUB', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '0', '', '2018-05-01', '0000-00-00', 0, 'active', 'trainee', '6', '2018-05-01', '', '', 0),
(248, '101', '', '', 'H D N Niwarthana', 'H D N', 'Niwarthana', 'HDN', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '0', '', '0000-00-00', '0000-00-00', 0, 'active', 'trainee', '7', '0000-00-00', '', '', 0),
(249, '102', '', '', 'U G T R Amarasinghe', 'U G T R', 'Amarasinghe', 'UGTR', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '0', '', '2018-06-01', '0000-00-00', 0, 'active', 'trainee', '7', '2018-06-01', '', '', 0),
(250, '103', '', '', 'S M A D P Sasanka', 'S M A D P', 'Sasanka', 'SMADP', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '0', '', '2018-07-11', '0000-00-00', 0, 'active', 'trainee', '3', '2018-07-11', '', '', 0),
(251, '104', '', '', 'M L Kaushalya', 'M L', 'Kaushalya', 'ML', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '0', '', '2018-07-30', '0000-00-00', 0, 'active', 'trainee', '6', '2018-07-30', '', '', 0),
(59, '11', 'gsh', '', 'Geeth Sanjeewa Hettiarachchi', 'Geeth ', 'Hettiarachchi', 'GS', '1981-06-22', '811741108V', 'male', 'Mr', 'No. 217, 50 Acres, Madakumbura, Karandenitya', 'No. 217, 50 Acres, Madakumbura, Karandenitya', '', '', '80', '41', '2017-06-30', '0000-00-00', 0, 'active', 'permanent', '20', '2017-06-30', '', '', 0),
(60, '12', '', '', 'Jayasuriya Arachchilage Chenuka Jayanath Jayasuriya ', 'Chenuka', 'Jayasuriya ', 'JACJ', '1983-11-18', '833233939V', 'male', 'Mr', 'No.98, Pinnagolla, Meddepola, Giriulla', 'No.98, Pinnagolla, Meddepola, Giriulla', '', '', '118', '74', '2017-08-03', '0000-00-00', 0, 'active', 'permanent', '16', '2017-08-03', '', '', 0),
(62, '13', 'jdk', '', 'Jinadi kavindra Dahanayaka', 'Jinadi', 'Dahanayaka', 'JK', '1988-08-25', '887382859V', 'female', 'Ms', 'No.18, Sri Sugathapala Mawatha, Maitipe, Galle', 'No.18, Sri Sugathapala Mawatha, Maitipe, Galle', '', '', '118', '74', '2017-08-18', '0000-00-00', 0, 'inactive', 'permanent', '2', '2017-08-18', '', '', 0),
(63, '14', 'nkk', '', 'KMGB Nishakumari', '', 'Nishakumari', 'KMGB', '0000-00-00', '', 'female', 'Mr', '', '', '', '', '118', '74', '2017-08-01', '0000-00-00', 0, 'active', 'permanent', '20', '2017-08-01', '', '', 0),
(72, '15', 'kgg', '', 'Panditha Vidana Kasun Gayanath Gunawardana', 'Kasun', 'Gunawardana', 'PVKD', '1989-11-01', '833063014V', 'male', 'Dr', 'No.43/15A, Diwel Watta, Walgana Meda, Matara', 'No.43/15A, Diwel Watta, Walgana Meda, Matara', '', '', '125', '77', '2016-01-01', '0000-00-00', 0, 'active', 'contract', '1', '2016-01-01', '', '', 0),
(73, '16', '', '', 'Nishantha Rohan Samarasinghe', 'Nishantha', 'Samarasinghe', 'NR', '1967-03-01', '670610195V', 'male', 'Dr', 'No.204, Kurunagala Road, Assadduma, Kuliyapitiya', 'No.204, Kurunagala Road, Assadduma, Kuliyapitiya', '', '', '0', '16', '2017-02-01', '0000-00-00', 0, 'active', 'assignment', '1', '2017-02-01', '', '', 0),
(74, '17', 'sew', '', 'Sewwandi Dinusha Gunawardhana', 'Sewwandi', 'Gunawardhana', 'SD', '1978-05-02', '786230225V', 'female', 'Ms', 'No.73, Arawwala Road, Pannipitiya', 'No.73, Arawwala Road, Pannipitiya', '', '', '123', '', '2017-01-02', '0000-00-00', 0, 'active', 'temporary', '20', '2009-01-01', '', '', 0),
(77, '18', 'sri', '', 'Malawenna Gamage Anjalee Srimalee', 'Anjalee', 'Srimalee', 'MGA', '1990-10-31', '908050223V', 'female', 'Ms', 'No.399/6, Isuru Uyana, Kurunduwatta, Gintota', 'No.399/6, Isuru Uyana, Kurunduwatta, Gintota', '', '', '123', '', '2014-07-01', '0000-00-00', 0, 'active', 'temporary', '15', '2014-07-01', '', '', 0),
(78, '19', 'hba', '', 'Konara Mudiyanselage Harshi Bhagya Abeyratne', 'Harshi ', 'Abeyratne', 'KMHB', '1991-01-22', '945222722V', 'female', 'Ms', '92/C, Salmal Mawatha, Nampamunuwa, Piliyandala', '92/C, Salmal Mawatha, Nampamunuwa, Piliyandala', '', '', '123', '', '2015-03-02', '0000-00-00', 0, 'active', 'temporary', '15', '2015-03-02', '', '', 0),
(79, '20', 'kar', '', 'Kolamunnage Ashintha Rukmal Perera', 'Ashintha', 'Perera', 'KAR', '1989-08-16', '892290709V', 'male', 'Mr', '133/B, Ehelape Road, Katuwawala, Boralesgamuwa', '133/B, Ehelape Road, Katuwawala, Boralesgamuwa', '', '', '123', '', '2014-07-01', '0000-00-00', 0, 'active', 'temporary', '15', '2014-07-01', '', '', 0),
(80, '21', 'bdl', '', 'Bodiyabaduge Dewsri Lalithi Perera', 'Dewsri ', 'Perera', 'BDL', '1989-01-31', '895313238V', 'female', 'Ms', 'No.33, Mangala Mawatha, Kalutara North, Kalutara', 'No.33, Mangala Mawatha, Kalutara North, Kalutara', '', '', '132', '', '2014-07-01', '0000-00-00', 0, 'active', 'temporary', '19', '2013-02-01', '', '', 0),
(81, '22', 'mbp', '', 'Malhamige Buddhika Priyadarshani Dissanayake', 'Buddhika', 'Dissanayake', 'MBP', '1990-01-25', '905252801V', 'female', 'Ms', 'No.256-E, Wathumulla Road, Asgiriya, Gampaha', 'No.256-E, Wathumulla Road, Asgiriya, Gampaha', '', '', '144', '117', '2017-02-01', '0000-00-00', 0, 'active', 'contract', '20', '2014-07-01', '', '', 0),
(82, '23', 'tcg', '', 'Galahena Mudiyanselage Tharindra Charun Galahena', 'Tharindra', 'Galahena', 'GMTC', '1990-05-08', '901291616V', 'male', 'Mr', 'No.2/24, Akkarapaha, Ranawana Road, Katugastota', 'No.2/24, Akkarapaha, Ranawana Road, Katugastota', '', '', '123', '', '2015-03-02', '0000-00-00', 0, 'active', 'temporary', '15', '2015-03-02', '', '', 0),
(83, '24', 'asm', '', 'Thuiya Gamhewa Anupa Shyamlal Munaweera De Silva', 'Anupa', 'De Silva', 'TGASM', '1991-12-15', '', 'male', 'Mr', '"Lal Sewana" Thambahitiya, Meetiyagoda', '"Lal Sewana" Thambahitiya, Meetiyagoda', '', '', '132', '', '2017-02-01', '0000-00-00', 0, 'inactive', 'temporary', '19', '2016-02-01', '', '', 0),
(84, '25', 'nsa', '', 'Kovila Waththage Nilakshi Shashikala Anuradhani', 'Nilakshi', 'Kovila Waththage', 'KWNS', '1992-02-18', '', 'female', 'Ms', 'Hiniduma Gedara, Udugama-West, Galle', '', '', '', '123', '', '2016-03-01', '0000-00-00', 0, 'active', 'temporary', '19', '2016-03-01', '', '', 0),
(86, '26', 'sgs', '', 'Sooriya Gamage Susanthi', 'Susanthi', '', 'SG', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '123', '', '2016-03-01', '0000-00-00', 0, 'active', 'temporary', '19', '2016-03-01', '', '', 0),
(88, '27', 'cdw', '', 'Chathurangi Dhanushika Weerasinghe', 'Chathurangi ', 'Weerasinghe', 'CD', '1990-07-13', '906952122V', 'female', 'Ms', 'No.17/A, Akuressa Road, Imaduwa, Galle', 'No.17/A, Akuressa Road, Imaduwa, Galle', '', '', '123', '', '2017-11-16', '0000-00-00', 0, 'inactive', 'temporary', '19', '2017-02-06', '', '', 0),
(89, '28', 'tnb', '', 'Tharindu Narthana Bandara Wijethilake', 'Tharindu', 'Wijethilake', 'TNB', '1992-07-16', '921980906V', 'male', 'Mr', 'Samagi Uyana, Welikumbura Road, Mawathagama', 'Samagi Uyana, Welikumbura Road, Mawathagama', '', '', '123', '', '2017-02-02', '0000-00-00', 0, 'active', 'temporary', '19', '2017-02-02', '', '', 0),
(91, '29', 'sse', '', 'Shanika Surangi Edirisinghe', 'Shanika ', 'Edirisinghe', 'SS', '1992-06-29', '926810472V', 'female', 'Ms', '07, Sunanda Mawatha, Owitigala, Mathugama', '07, Sunanda Mawatha, Owitigala, Mathugama', '', '', '123', '', '2017-03-01', '0000-00-00', 0, 'active', 'temporary', '19', '2017-03-01', '', '', 0),
(94, '30', 'imd', '', 'Mahagani Arachchige Isuru Madusanka Dharmadasa', 'Isuru ', 'Dharmadasa', 'MAIM', '1990-05-18', '901391009V', 'male', 'Mr', 'No.79/A/15, Thotupala Road, Ranala', 'No.79/A/15, Thotupala Road, Ranala', '', '', '132', '', '2014-02-01', '0000-00-00', 0, 'active', 'temporary', '19', '2016-02-01', '', '', 0),
(98, '31', 'rja', '', 'Rangana Jayashanka Amaraweera', 'Rangana', 'Amaraweera', 'RJ', '1991-12-03', '913380592V', 'male', 'Mr', 'Jayashanka, Hettiyawala, Kirinda Puhulwella', 'Jayashanka, Hettiyawala, Kirinda Puhulwella', '', '', '132', '', '2017-02-01', '0000-00-00', 0, 'active', 'temporary', '19', '2016-02-01', '', '', 0),
(99, '32', 'aln', '', 'Atulugamage Lakshika Nanayakkara', 'Lakshika', 'Nanayakkara', 'AL', '1992-01-07', '', 'male', 'Ms', 'No.424/1, Sunethra Devi Road, Pepiliyana, Nugegoda', 'No.424/1, Sunethra Devi Road, Pepiliyana, Nugegoda', '', '', '132', '', '2017-02-02', '0000-00-00', 0, 'active', 'temporary', '19', '2017-02-02', '', '', 0),
(100, '33', 'sij', '', 'Nawarathna Mudiyanselage Shashiprabha Iddamalie Jinathissa', 'Shashiprabha', 'Jinathissa', 'NMSI', '1993-03-01', '935610907V', 'female', 'Ms', 'D23, Kehelwathugoda, Dewalegama', 'D23, Kehelwathugoda, Dewalegama', '', '', '123', '', '2017-03-20', '0000-00-00', 0, 'active', 'temporary', '19', '2017-03-20', '', '', 0),
(101, '34', 'nwh', '', 'Nimali Wasana Hettiarachchi', 'Nimali ', 'Hettiarachchi', 'NW', '1992-03-25', '925853313V', 'female', 'Ms', '79D2A, Dimuthugama, 2nd Step. Kiriwelkele, Pitabeddara', '79D2A, Dimuthugama, 2nd Step. Kiriwelkele, Pitabeddara', '', '', '123', '', '2017-03-20', '0000-00-00', 0, 'active', 'temporary', '19', '2017-03-20', '', '', 0),
(102, '35', 'hws', '', 'Hewa Walgamage Waruni Samarawickrama', 'Waruni', 'Samarawickrama', 'HWW ', '1993-03-29', '935890233V', 'female', 'Ms', 'Sirivikum, Midulagaha, Koratuwa, Denipitiya, Weligama', 'Sirivikum, Midulagaha, Koratuwa, Denipitiya, Weligama', '', '', '123', '', '2017-03-20', '0000-00-00', 0, 'active', 'temporary', '19', '2017-03-20', '', '', 0),
(103, '36', 'ttk', '', 'Thisaranie Thurangika Kaluarchchi', 'Thisaranie', 'Kaluarchchi', 'TT', '1991-10-11', '917850771V', 'female', 'Ms', 'Piduruwella, Uhumeeya', 'Piduruwella, Uhumeeyahb', '', '', '132', '', '2017-03-20', '0000-00-00', 0, 'active', 'temporary', '19', '2017-03-20', '', '', 0),
(106, '37', 'kmg', '', 'Kaluwewe Mudiyanselage Geethika Senarathna', 'Geethika', 'Senarathna', 'KMG', '1992-10-28', '928021947V', 'female', 'Ms', 'No.25, Shanthi Vihara Mawatha, Bamunawala, Kurunegala', '', '', '', '123', '', '2017-03-20', '0000-00-00', 0, 'active', 'temporary', '19', '2017-03-20', '', '', 0),
(112, '38', '', '', 'Werapitiya Gamaralage Hansani Geethma Werapitiya', 'Hansani ', 'Werapitiya', 'WGHG', '1992-10-09', '927830442V', 'female', 'Ms', '297 E1, Batwatta, Arukgoda, Alubomulla', '297 E1, Batwatta, Arukgoda, Alubomulla', '', '', '123', '', '2017-08-01', '0000-00-00', 0, 'active', 'temporary', '19', '2017-08-01', '', '', 0),
(113, '39', 'dar', '', 'Denawaka Appuhamilage Shashika Ruwanmini', 'Shashika', '', 'DAS', '1991-06-02', '', 'female', 'Ms', '', '', '', '', '132', '', '2017-07-06', '0000-00-00', 0, 'active', 'temporary', '19', '2017-07-06', '', '', 0),
(154, '40', 'lse', '', 'Lekamlage Singithi Erandika', 'Singithi ', 'Lekamlage', 'LS', '1992-03-31', '925910660V', 'male', 'Ms', 'No. 126/A, Batawala Padukka', 'No. 126/A, Batawala Padukka', '', '', '123', '', '2017-11-01', '0000-00-00', 0, 'active', 'temporary', '19', '2017-11-01', '', '', 0),
(155, '41', '', '', 'Munasin Vidana Pathirana Thilini Lakshika', 'Thilini ', 'Munasin', 'MVP', '1992-12-24', '928590763V', 'female', 'Ms', '"Ishani", Mulana, Hungama', 'No. 89,, Isipathana Road, Colombo 05', '', '', '132', '', '2017-11-15', '0000-00-00', 0, 'active', 'temporary', '19', '2017-11-15', '', '', 0),
(164, '42', 'sjd', '', 'Supun Dissanayake', 'Supun', 'Dissanayake', 'SJ', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '132', '', '0000-00-00', '0000-00-00', 0, 'active', 'temporary', '19', '0000-00-00', '', '', 0),
(165, '43', 'acc', '', 'MCA Amarasinghe', '', 'Amarasinghe', 'MCA', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '132', '', '0000-00-00', '0000-00-00', 0, 'active', 'temporary', '19', '0000-00-00', '', '', 0),
(167, '44', 'gkk', '', 'GKK Perera', '', 'Perera', 'GKK', '0000-00-00', '', 'female', 'Mr', '', '', '', '', '132', '', '0000-00-00', '0000-00-00', 0, 'active', 'temporary', '19', '0000-00-00', '', '', 0),
(168, '45', 'hnd', '', 'HND Thilini', '', 'Thilini', 'HND', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '132', '', '0000-00-00', '0000-00-00', 0, 'active', 'temporary', '19', '0000-00-00', '', '', 0),
(169, '46', '', '', 'BHR Pushpananda', '', 'Pushpananda', 'BHR', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '132', '', '0000-00-00', '0000-00-00', 0, 'active', 'temporary', '19', '0000-00-00', '', '', 0),
(170, '47', 'twd', '', 'T W D Lakshan', '', 'Lakshan', 'TWD', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '123', '', '0000-00-00', '0000-00-00', 0, 'active', 'temporary', '19', '0000-00-00', '', '', 0),
(171, '48', 'ocv', '', 'TMOCV Tennakoon', '', 'Tennakoon', 'TMOCV', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '123', '', '0000-00-00', '0000-00-00', 0, 'active', 'temporary', '19', '0000-00-00', '', '', 0),
(180, '49', 'wgk', '', 'Waruni Kandamby', 'Waruni', 'Kandamby', 'WG ', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '123', '', '0000-00-00', '0000-00-00', 0, 'active', 'temporary', '19', '0000-00-00', '', '', 0),
(182, '50', 'dup', '', 'Dulsha Premarathna', 'Dulsha', 'Premarathna', 'IWADU', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '123', '', '0000-00-00', '0000-00-00', 0, 'active', 'temporary', '19', '0000-00-00', '', '', 0),
(183, '51', 'cdp', '', 'Chobodi Padmaperuma', 'Chobodi', 'Padmaperuma', 'CD', '0000-00-00', '', 'female', 'Mr', '', '', '', '', '123', '', '0000-00-00', '0000-00-00', 0, 'active', 'temporary', '19', '0000-00-00', '', '', 0),
(184, '52', 'ddh', '', 'Dulaji Hidellaarachchi', 'Dulaji ', 'Hidellaarachchi', 'DD', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '123', '', '0000-00-00', '0000-00-00', 0, 'active', 'temporary', '19', '0000-00-00', '', '', 0),
(185, '53', '', '', 'H T D Dinushka', '', 'Dinushka', 'HTD', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '123', '', '0000-00-00', '0000-00-00', 0, 'active', 'temporary', '19', '0000-00-00', '', '', 0),
(186, '54', 'cli', '', 'C L I S Fonseka', '', 'Fonseka', 'CLIS', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '123', '', '0000-00-00', '0000-00-00', 0, 'active', 'temporary', '19', '0000-00-00', '', '', 0),
(188, '55', 'wbu', '', 'W W B U  Silva', '', ' Silva', 'WWBU', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '123', '', '0000-00-00', '0000-00-00', 0, 'active', 'temporary', '19', '0000-00-00', '', '', 0),
(189, '56', '', '', 'S M M Dayananda', '', 'Dayananda', 'SMM', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '123', '', '0000-00-00', '0000-00-00', 0, 'active', 'temporary', '19', '0000-00-00', '', '', 0),
(190, '57', '', '', 'J K A G  Piyanuwan', 'J K A G ', 'Piyanuwan', 'JKAG ', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '102', '52', '2018-02-01', '0000-00-00', 0, 'active', 'contract', '13', '2014-05-28', '', '', 0),
(191, '58', '', '', 'K D P M Kannangara', 'K D P M', 'Kannangara', 'KDPM', '0000-00-00', '', 'male', 'Ms', '', '', '', '', '4', '12', '2018-01-01', '0000-00-00', 0, 'active', 'contract', '16', '2014-09-04', '', '', 0),
(192, '59', '', '', 'W G D L Karunathilaka', 'W G D L', 'Karunathilaka', 'WGDL', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '133', '88', '2016-11-01', '0000-00-00', 0, 'active', 'contract', '10', '2016-11-01', '', '', 0),
(194, '60', 'pad', '', 'R M H D Padmasiri', 'R M H D', 'Padmasiri', 'RHMD', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '134', '89', '2015-06-01', '0000-00-00', 0, 'active', 'contract', '11', '2015-06-01', '', '', 0),
(195, '61', 'frm', '', 'F R M Mahroof', 'F R M', 'Mahroof', 'FRM', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '80', '41', '2017-01-09', '0000-00-00', 0, 'active', 'contract', '11', '2017-01-09', '', '', 0),
(196, '62', '', '', 'L E Jayawardane', 'L E', 'Jayawardane', 'LE', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '92', '45', '2017-01-09', '0000-00-00', 0, 'active', 'contract', '11', '2017-01-09', '', '', 0),
(197, '63', '', '', 'T D Abeygunarathna', 'T D', 'Abeygunarathna', 'TD', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '135', '93', '2017-03-01', '0000-00-00', 0, 'active', 'contract', '11', '2017-03-01', '', '', 0),
(199, '64', '', '', 'D L N K Liyanage', 'D L N K', 'Liyanage', 'DLNK', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '136', '97', '2018-02-01', '0000-00-00', 0, 'active', 'assignment', '11', '2018-02-01', '', '', 0),
(201, '65', '', '', 'K H Chandrasekara', 'K H', 'Chandrasekara', 'KH', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '136', '97', '0000-00-00', '0000-00-00', 0, 'active', 'assignment', '11', '0000-00-00', '', '', 0),
(202, '66', '', '', 'H L P M Madhushanka', 'H L P M', 'Madhushanka', 'HLPM', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '92', '45', '2013-07-01', '0000-00-00', 0, 'active', 'contract', '11', '2013-07-01', '', '', 0),
(203, '67', 'rpb', '', 'R.P. Balasuriya', 'R P', 'Balasuriya', 'RP', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '102', '52', '2009-07-03', '0000-00-00', 0, 'active', 'contract', '7', '2009-07-03', '', '', 0),
(205, '68', '', '', 'S D M Hendavitharana', 'S D M', 'Hendavitharana', 'SDM', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '3', '78', '2018-02-01', '0000-00-00', 0, 'active', 'contract', '1', '2018-02-01', '', '', 0),
(206, '69', '', '', 'G K H Madhara', 'G K H', 'Madhara', 'GKH', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '3', '78', '2017-10-03', '0000-00-00', 0, 'active', 'contract', '3', '2017-10-03', '', '', 0),
(207, '70', '', '', 'D A A V P Denavaka', 'D A A V P', 'Denavaka', 'DAAVP', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '33', '22', '2017-08-30', '0000-00-00', 0, 'active', 'contract', '4', '2017-08-30', '', '', 0),
(208, '71', '', '', 'K M C J Bandara', 'K M C J', 'Bandara', 'KMCJ', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '4', '12', '2017-09-01', '0000-00-00', 0, 'active', '', '5', '2017-09-01', '', '', 0),
(210, '72', '', '', 'W A S Oshada Silva', 'Oshada', 'Silva', 'WASO', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '4', '12', '2017-09-01', '0000-00-00', 0, 'active', 'contract', '4', '2017-09-01', '', '', 0),
(211, '74', '', '', 'W V J Chulanganie', 'WVJ', 'Chulanganie', 'WVJ', '0000-00-00', '', 'male', 'Ms', '', '', '', '', '3', '78', '2017-10-03', '0000-00-00', 0, 'active', 'contract', '4', '2017-10-03', '', '', 0),
(212, '75', '', '', 'K V D D S Perera', 'K V D D S', 'Perera', 'KVDDS', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '137', '98', '2014-08-01', '0000-00-00', 0, 'active', 'daily pay', '5', '2014-08-01', '', '', 0),
(214, '76', '', '', 'M.W. Nandani              ', 'M W', 'Nandani              ', 'MW', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '139', '103', '2007-08-01', '0000-00-00', 0, 'active', 'daily pay', '5', '2007-08-01', '', '', 0),
(215, '77', '', '', 'K H P V M Sewwandi', 'K H P V M', 'Sewwandi', 'KHPVM', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '4', '12', '0000-00-00', '0000-00-00', 0, 'active', 'assignment', '5', '2018-02-14', '', '', 0),
(216, '78', '', '', 'H L A Shehan', 'HLA', 'Shehan', 'HLA', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '4', '12', '2017-02-22', '0000-00-00', 0, 'active', 'contract', '2', '2017-02-22', '', '', 0);
INSERT INTO `employee_bk_03-12-2018` (`r_id`, `emp_id`, `emp_email`, `fp_id`, `emp_fullname`, `emp_firstname`, `emp_surname`, `emp_initials`, `emp_dob`, `emp_nic`, `emp_gender`, `emp_title`, `emp_permanent_address`, `emp_tmp_address`, `emp_offic_num`, `emp_mobile_num`, `emp_designation`, `emp_designation_grade`, `emp_des_start_date`, `emp_last_increament_date`, `increament_scale`, `emp_state`, `emp_type`, `emp_divison_id`, `emp_first_emp_date`, `emp_pic`, `emp_qulif_sort_form`, `emp_comment`) VALUES
(217, '79', 'asl', '', 'E A S Lakma', 'E A S', 'Lakma', 'EAS', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '4', '12', '2018-02-01', '0000-00-00', 0, 'active', 'assignment', '9', '2018-02-01', '', '', 0),
(218, '80', '', '', 'D F T M Gunasena', 'D F T M', 'Gunasena', 'DFTM', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '4', '12', '2018-02-01', '0000-00-00', 0, 'active', 'assignment', '9', '2018-02-01', '', '', 0),
(219, '81', '', '', 'K K A Nishanthi', 'K K A', 'Nishanthi', 'KKA', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '142', '106', '2006-08-07', '0000-00-00', 0, 'active', 'contract', '20', '2006-08-07', '', '', 0),
(221, '82', '', '', 'R M N Dammika', 'R M N', 'Dammika', 'RMN', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '142', '106', '2017-04-01', '0000-00-00', 0, 'active', 'contract', '1', '2017-04-01', '', '', 0),
(222, '83', '', '', 'K A W Pathirana', 'K A W', 'Pathirana', 'KAW', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '4', '12', '2016-10-20', '0000-00-00', 0, 'active', 'assignment', '14', '2016-10-20', '', '', 0),
(223, '84', '', '', 'P V M Jayampathi', 'P V M', 'Jayampathi', 'PVM', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '4', '12', '2017-07-01', '0000-00-00', 0, 'active', 'daily pay', '14', '2017-07-01', '', '', 0),
(224, '85', '', '', 'A A T D Dias', 'A A T D', 'Dias', 'AATD', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '4', '12', '2018-04-02', '0000-00-00', 0, 'active', 'daily pay', '8', '2018-04-02', '', '', 0),
(225, '86', 'sms', '', 'L S M Senadheera', 'Sanjaya', 'Senadheera', 'LSM', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '145', '', '2018-02-14', '0000-00-00', 0, 'active', 'assignment', '7', '2018-02-14', '', '', 0),
(226, '87', '', '', 'K G L S Kariyawasam', 'K G L S', 'Kariyawasam', 'KGLS', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '0', '', '2018-07-01', '0000-00-00', 0, 'active', 'assignment', '12', '2018-07-01', '', '', 0),
(227, '88', '', '', 'P H Thilakarathne', 'PH', 'Thilakarathne', 'PH', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '0', '', '2018-06-18', '0000-00-00', 0, 'active', 'assignment', '20', '2018-06-18', '', '', 0),
(228, '89', '', '', 'I H Piyumika', 'I H', 'Piyumika', 'IH', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '0', '', '2018-07-01', '0000-00-00', 0, 'active', 'assignment', '14', '2018-07-01', '', '', 0),
(236, '90', '', '', 'L H I Dilshani', 'L H I', 'Dilshani', 'LHI', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '144', '118', '0000-00-00', '0000-00-00', 0, 'active', 'assignment', '20', '0000-00-00', '', '', 0),
(237, '91', '', '', 'S G G Rasanthi', 'S G G', 'Rasanthi', 'SGG', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '3', '78', '2018-09-03', '0000-00-00', 0, 'active', 'assignment', '7', '2018-09-03', '', '', 0),
(238, '92', '', '', 'M W D N S Witharana', 'M W D N S', 'Witharana', 'MWDNS', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '3', '78', '2018-09-03', '0000-00-00', 0, 'active', 'assignment', '7', '2018-09-03', '', '', 0),
(239, '93', '', '', 'G K D Nirmal', 'G K D', 'Nirmal', 'GKD', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '3', '78', '2018-09-26', '0000-00-00', 0, 'active', 'assignment', '14', '2018-09-26', '', '', 0),
(240, '94', '', '', 'Y A Sarath Kumara', 'Sarath', 'Kumara', 'YAS', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '146', '', '2008-01-01', '0000-00-00', 0, 'active', 'daily pay', '4', '2008-01-01', '', '', 0),
(241, '95', '', '', 'P K L S Piyawardana', 'P K L S', 'Piyawardana', 'PKLS', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '146', '', '2018-06-26', '0000-00-00', 0, 'active', 'daily pay', '4', '2018-06-26', '', '', 0),
(242, '96', '', '', 'D G Padmini', 'D G', 'Padmini', 'DG', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '4', '12', '2008-05-13', '0000-00-00', 0, 'active', 'daily pay', '11', '2008-05-13', '', '', 0),
(243, '97', '', '', 'M T Katugampola', 'M T', 'Katugampola', 'MT', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '3', '78', '2018-10-11', '0000-00-00', 0, 'active', '', '2', '2018-10-11', '', '', 0),
(244, '98', '', '', 'W A L P Wijesinghe', 'W A L P', 'Wijesinghe', 'WALP', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '0', '', '2018-05-01', '0000-00-00', 0, 'active', 'trainee', '20', '2018-05-01', '', '', 0),
(245, '99', '', '', 'I Y Gayani', 'I Y', 'Gayani', 'IY', '0000-00-00', '', 'female', 'Ms', '', '', '', '', '0', '', '2018-05-01', '0000-00-00', 0, 'active', 'trainee', '20', '2018-05-01', '', '', 0),
(160, 'dcvdacasc', 'aaa', '', 'drtest', 'ascas', 'acas', 'scasc', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '125', '76', '0000-00-00', '0000-00-00', 0, 'active', '', '1', '0000-00-00', '', '', 0),
(156, 'test', 'webmaster', '', '', '', '', '', '0000-00-00', '', 'male', 'Mr', '', '', '', '', '123', '', '0000-00-00', '0000-00-00', 0, 'active', '', '19', '0000-00-00', '', '', 0),
(163, 'tmp_1', 'lnc', '', 'LNC De Silva', '', 'De Silva', 'LNC', '0000-00-00', '', 'female', 'Mr', '', '', '', '', '128', '81', '0000-00-00', '0000-00-00', 0, 'active', 'permanent', '18', '0000-00-00', '', '', 0),
(64, 'upf000500', 'kkk', '', 'Kotte Kankanamge Kithsiri Dharamathilaka', 'Kithsiri', 'Dharmathilaka', 'KKK', '1968-06-13', '681650806v', 'male', 'Mr', '341/1/55,Mahayayawatta,Pelenwatta,Gorakapitiya,Piliyandala', '341/1/55,Mahayayawatta,Pelenwatta,Gorakapitiya,Piliyandala', '', '', '104', '57', '0000-00-00', '0000-00-00', 0, 'inactive', '', '4', '0000-00-00', '', '', 0),
(124, 'Y1', '', '', 'Kaduruwana Thuduwa Mudalige Dinesh Madushanka', 'Dinesh', 'Kaduruwana', 'KTMD', '1988-10-18', '882920992V', 'male', 'Mr', 'No. 50/3, Koswatta, Neluwa, Galle', 'No. 50/3, Koswatta, Neluwa, Galle', '', '', '4', '12', '0000-00-00', '0000-00-00', 0, 'active', 'contract', '6', '2013-02-01', '', '', 0),
(130, 'Y2', '', '', 'Jayasinghe Arachchige Dona Milani Darshika Alwis', 'Milani', 'Alwis', 'JADM', '1992-09-24', '927680173V', 'female', 'Ms', 'No.43/1, Rathabaladeniya, Godagama, Meegoda', 'No.43/1, Rathabaladeniya, Godagama, Meegoda', '', '', '3', '9', '2017-01-02', '0000-00-00', 0, 'active', 'contract', '6', '2014-01-16', '', '', 0),
(131, 'Y3', '', '', 'Herath Mudiyanselage Sumudu Prasanna Herath', 'Sumudu', 'Herath', 'HMSP', '1976-06-16', '761680684V', 'male', 'Mr', 'No. 106/1, Thimbirigasyaya Road, Colombo 05', 'No. 106/1, Thimbirigasyaya Road, Colombo 05', '', '', '0', '16', '2017-01-02', '0000-00-00', 0, 'active', 'contract', '6', '2012-12-15', '', '', 0),
(133, 'Y4', '', '', 'Wickrama Arachchige Kavindya Madhuhari', 'Kavindya', 'Madhuhari', 'WAK', '1995-02-11', '955421205V', 'female', 'Ms', 'No. 279/1, Meegasmulla, Dedigamuwa', 'No. 279/1, Meegasmulla, Dedigamuwa', '', '', '3', '16', '2017-11-21', '0000-00-00', 0, 'active', 'assignment', '6', '2017-11-21', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee_edit`
--

CREATE TABLE IF NOT EXISTS `employee_edit` (
  `emp_id` int(11) NOT NULL,
  `emp_fullname` text NOT NULL,
  `emp_firstname` text NOT NULL,
  `emp_surname` text NOT NULL,
  `emp_initials` text NOT NULL,
  `emp_dob` int(11) NOT NULL,
  `emp_nic` text NOT NULL,
  `emp_title` varchar(10) NOT NULL,
  `emp_permanent_address` text NOT NULL,
  `emp_tmp_address` text NOT NULL,
  `emp_offic_num` int(11) NOT NULL,
  `emp_mobile_num` int(11) NOT NULL,
  `emp_pic` text NOT NULL,
  `edit_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `by` varchar(10) NOT NULL,
  `edited` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_edit`
--

INSERT INTO `employee_edit` (`emp_id`, `emp_fullname`, `emp_firstname`, `emp_surname`, `emp_initials`, `emp_dob`, `emp_nic`, `emp_title`, `emp_permanent_address`, `emp_tmp_address`, `emp_offic_num`, `emp_mobile_num`, `emp_pic`, `edit_date`, `by`, `edited`) VALUES
(140, 'Don Ajantha Sanjeewa Atukorale', 'Ajantha', 'Atukorale', 'DAS', 1968, '681750800V', 'Dr', '21/1, Singhe Road, Keranga Pokuna, Wattala', '21/1, Singhe Road, Keranga Pokuna, Wattala', 112581245, 713882929, '000140_3525701873_image.jpg', '2018-09-12 05:28:29', '', 0),
(140, 'Don Ajantha Sanjeewa Atukorale', 'Ajantha', 'Atukorale', 'DAS', 1968, '681750800V', 'Dr', '21/1, Singhe Road, Keranga Pokuna, Wattala', '21/1, Singhe Road, Keranga Pokuna, Wattala', 112581245, 713882929, '000140_3525701873_image.jpg', '2018-09-12 05:34:09', 'tcg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `r_id` int(11) NOT NULL,
  `emp_id` varchar(222) NOT NULL,
  `emp_last_date` date NOT NULL,
  `emp_first_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`r_id`, `emp_id`, `emp_last_date`, `emp_first_date`) VALUES
(1, 'upf000500', '0000-00-00', '0000-00-00'),
(2, '13', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `increment_history`
--

CREATE TABLE IF NOT EXISTS `increment_history` (
  `id` int(11) NOT NULL,
  `employee` int(11) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `salary_code` varchar(20) NOT NULL,
  `increment_date` date NOT NULL,
  `due_date` date NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `leave_calander`
--

CREATE TABLE IF NOT EXISTS `leave_calander` (
  `id` int(11) NOT NULL,
  `req_id` int(11) NOT NULL,
  `emp_id` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(5) NOT NULL,
  `from` time DEFAULT NULL,
  `to` time DEFAULT NULL,
  `acting` varchar(10) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_calander`
--

INSERT INTO `leave_calander` (`id`, `req_id`, `emp_id`, `date`, `type`, `from`, `to`, `acting`, `status`) VALUES
(1, 1, 'tcg', '2018-10-01', 'full', '00:00:00', '00:00:00', 'mbp', 1),
(2, 2, 'tcg', '2018-10-01', 'full', '00:00:00', '00:00:00', '-', 1),
(3, 2, 'tcg', '2018-10-02', 'full', '00:00:00', '00:00:00', '-', 1),
(4, 2, 'tcg', '2018-10-03', 'full', '00:00:00', '00:00:00', '-', 1),
(5, 3, 'tcg', '2018-10-02', 'full', '00:00:00', '00:00:00', 'mbp', 1),
(6, 3, 'tcg', '2018-10-03', 'full', '00:00:00', '00:00:00', 'mbp', 1),
(7, 4, 'tcg', '2018-11-01', 'full', '00:00:00', '00:00:00', 'mbp', 2),
(8, 4, 'tcg', '2018-11-02', 'full', '00:00:00', '00:00:00', 'mbp', 2),
(9, 4, 'tcg', '2018-11-03', 'half', '00:00:09', '00:00:12', 'mbp', 2),
(10, 5, 'tcg', '2018-12-01', 'full', '00:00:00', '00:00:00', 'mbp', 2),
(11, 5, 'tcg', '2018-12-03', 'full', '00:00:00', '00:00:00', 'mbp', 2),
(12, 5, 'tcg', '2018-12-04', 'full', '00:00:00', '00:00:00', 'mbp', 2),
(13, 5, 'tcg', '2018-12-05', 'full', '00:00:00', '00:00:00', 'mbp', 2),
(14, 5, 'tcg', '2018-12-06', 'full', '00:00:00', '00:00:00', 'mbp', 2),
(15, 5, 'tcg', '2018-12-07', 'full', '00:00:00', '00:00:00', 'mbp', 2);

-- --------------------------------------------------------

--
-- Table structure for table `leave_request`
--

CREATE TABLE IF NOT EXISTS `leave_request` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `start_date` date NOT NULL,
  `num_days` float NOT NULL,
  `end_date` date NOT NULL,
  `type` int(11) NOT NULL,
  `reason` text NOT NULL,
  `acting` varchar(10) NOT NULL,
  `acting_approval` int(11) NOT NULL DEFAULT '0',
  `acting_approvel_date` date NOT NULL,
  `supervisor` varchar(10) NOT NULL,
  `supervisor_approval` int(11) NOT NULL DEFAULT '0',
  `supervisor_approval_date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_request`
--

INSERT INTO `leave_request` (`id`, `emp_id`, `date`, `start_date`, `num_days`, `end_date`, `type`, `reason`, `acting`, `acting_approval`, `acting_approvel_date`, `supervisor`, `supervisor_approval`, `supervisor_approval_date`, `status`) VALUES
(1, 'tcg', '2018-10-04 03:20:44', '2018-10-01', 1, '2018-10-02', 1, 'Personal', 'mbp', 1, '2018-11-26', 'tcg', 1, '2018-11-26', 1),
(2, 'tcg', '2018-10-04 04:18:24', '2018-10-01', 3, '2018-10-04', 1, 'Personal', '-', 1, '2018-10-04', 'tcg', 1, '2018-11-26', 1),
(3, 'tcg', '2018-10-15 03:06:50', '2018-10-02', 2, '2018-10-04', 1, 'Personal', 'mbp', 1, '2018-11-26', 'tcg', 1, '2018-11-26', 1),
(4, 'tcg', '2018-11-26 04:43:42', '2018-11-01', 2.5, '2018-11-04', 1, 'Personal', 'mbp', 1, '2018-11-26', 'tcg', 2, '2018-11-26', 1),
(5, 'tcg', '2018-11-26 04:46:02', '2018-12-01', 6, '2018-12-10', 1, 'Personal', 'mbp', 1, '2018-11-26', 'tcg', 2, '2018-11-26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
  `id` int(11) NOT NULL,
  `email` varchar(10) NOT NULL,
  `designation` varchar(5) NOT NULL,
  `permission` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`id`, `email`, `designation`, `permission`) VALUES
(1, 'tcg', 'web', 1),
(2, 'kph', 'dir', 1),
(3, 'webma', 'tra', 1),
(4, 'webmaster', 'tra', 1),
(5, 'sdc', 'sar', 1),
(6, 'asg', 'caa', 1),
(7, 'lck', 'caa', 1),
(8, 'shm', 'caa', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_files`
--

CREATE TABLE IF NOT EXISTS `personal_files` (
  `id` int(11) NOT NULL,
  `emp_id` int(20) NOT NULL,
  `name` text NOT NULL,
  `file` varchar(80) NOT NULL,
  `comment` text NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal_files`
--

INSERT INTO `personal_files` (`id`, `emp_id`, `name`, `file`, `comment`, `type`, `status`) VALUES
(1, 1, 'tets', '38b5e5b7cc0cd124344fcad5f3aae9ae', '', 'active', 1),
(2, 1, 'test2', '8dde71e1e54b2cc8698e8412f83ab8b5', 'sfdvsdv', 'active', 1),
(5, 156, 'asa', '587615b3234fb3c603bf583f2f8ffde9', 'ascasc', 'active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `qualification`
--

CREATE TABLE IF NOT EXISTS `qualification` (
  `r_id` int(11) NOT NULL,
  `emp_id` int(220) NOT NULL,
  `letter` varchar(250) NOT NULL,
  `qualification_name` varchar(250) NOT NULL,
  `date_q` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qualification`
--

INSERT INTO `qualification` (`r_id`, `emp_id`, `letter`, `qualification_name`, `date_q`) VALUES
(8, 0, '06a5dddf04da49d0e11339347ea1e0eb', 'test', '0000-00-00'),
(14, 0, '', 'dcas', '0000-00-00'),
(16, 0, '', 'acasc', '2018-02-02'),
(19, 5, '', 'test', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `recode_desig`
--

CREATE TABLE IF NOT EXISTS `recode_desig` (
  `r_id` int(11) NOT NULL,
  `emp_id` int(222) NOT NULL,
  `designation_name` varchar(222) NOT NULL,
  `grade` int(11) NOT NULL,
  `department` int(11) NOT NULL,
  `des_start_date` varchar(222) NOT NULL,
  `des_end_date` varchar(222) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=352 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recode_desig`
--

INSERT INTO `recode_desig` (`r_id`, `emp_id`, `designation_name`, `grade`, `department`, `des_start_date`, `des_end_date`) VALUES
(3, 4, '1', 0, 0, '', '2016-02-01'),
(5, 5, '1', 16, 2, '2001-01-01', '2011-01-01'),
(6, 6, '117', 0, 0, '2017-01-02', ''),
(7, 7, '95', 0, 0, '2009-08-24', '2009-08-24'),
(8, 7, '1', 0, 0, '2009-08-24', '2009-08-24'),
(9, 8, '3', 0, 0, '2013-04-17', ''),
(10, 7, '125', 0, 0, '2009-08-24', ''),
(11, 4, '119', 0, 0, '2016-02-01', '2016-02-01'),
(12, 4, '1', 0, 0, '2016-02-01', ''),
(13, 9, '119', 0, 0, '2009-02-17', '2009-02-17'),
(14, 9, '1', 0, 0, '2009-02-17', '2009-02-17'),
(15, 10, '125', 0, 0, '2000-09-21', '2000-09-21'),
(16, 11, '125', 0, 0, '2000-12-13', ''),
(17, 12, '125', 0, 0, '2002-11-01', ''),
(18, 13, '125', 0, 0, '2002-09-24', '2002-09-24'),
(19, 14, '128', 0, 0, '2009-05-04', ''),
(20, 15, '128', 0, 0, '2009-09-23', '2009-09-23'),
(21, 16, '125', 0, 0, '2009-05-06', '2009-05-06'),
(22, 17, '125', 0, 0, '2006-09-22', ''),
(23, 18, '125', 0, 0, '2009-08-21', '2009-08-21'),
(24, 19, '125', 0, 0, '2010-11-30', ''),
(25, 20, '125', 0, 0, '2011-05-20', ''),
(26, 21, '1', 0, 0, '2010-12-21', '2010-12-21'),
(27, 22, '125', 0, 0, '2011-11-30', ''),
(28, 23, '125', 0, 0, '2012-11-20', ''),
(29, 24, '125', 0, 0, '2001-12-08', ''),
(30, 25, '125', 0, 0, '2013-05-23', ''),
(31, 26, '125', 0, 0, '2007-02-27', ''),
(32, 27, '125', 0, 0, '2014-02-05', ''),
(33, 28, '128', 0, 0, '1994-04-07', ''),
(34, 29, '125', 0, 0, '', '2014-04-23'),
(35, 29, '1', 0, 0, '2014-04-23', '2014-04-23'),
(36, 30, '125', 0, 0, '2014-04-23', ''),
(37, 33, '125', 0, 0, '2004-10-01', '2004-10-01'),
(38, 34, '128', 0, 0, '2011-05-04', ''),
(39, 35, '128', 0, 0, '2011-03-11', ''),
(40, 36, '125', 0, 0, '2015-12-11', ''),
(41, 37, '128', 0, 0, '2014-11-10', ''),
(42, 38, '128', 0, 0, '2014-04-23', ''),
(43, 39, '128', 0, 0, '2014-04-23', '2014-04-23'),
(44, 39, '1', 0, 0, '2014-04-23', '2014-04-23'),
(45, 40, '128', 0, 0, '2011-08-04', ''),
(46, 41, '125', 0, 0, '2013-09-12', ''),
(47, 42, '80', 0, 0, '2017-11-10', '2017-11-10'),
(48, 43, '128', 0, 0, '2016-12-22', ''),
(49, 45, '128', 0, 0, '2017-11-10', '2017-11-10'),
(50, 46, '128', 0, 0, '2016-12-22', ''),
(51, 47, '1', 0, 0, '', '2016-12-22'),
(52, 47, '128', 0, 0, '2016-12-22', '2016-12-22'),
(53, 47, '1', 0, 0, '2016-12-22', '2016-12-22'),
(54, 45, '1', 0, 0, '2017-11-10', '2017-11-10'),
(55, 46, '1', 0, 0, '', '2016-12-22'),
(56, 46, '128', 0, 0, '2016-12-22', ''),
(57, 48, '128', 0, 0, '2016-12-22', ''),
(58, 49, '128', 0, 0, '2017-01-16', ''),
(59, 50, '115', 0, 0, '1987-08-20', '1987-08-20'),
(63, 53, '128', 0, 0, '', '1996-05-15'),
(64, 54, '128', 0, 0, '2011-08-04', ''),
(65, 55, '115', 0, 0, '2001-02-08', '2001-02-08'),
(66, 56, '128', 0, 0, '2016-12-22', '2016-12-22'),
(67, 190, '78', 0, 0, '1999-07-01', '1999-07-01'),
(68, 58, '128', 0, 0, '2017-04-05', '2017-04-05'),
(69, 59, '35', 0, 0, '2017-06-30', '2017-06-30'),
(70, 60, '118', 0, 0, '2017-08-03', '2017-08-03'),
(71, 62, '118', 0, 0, '2017-08-18', '2017-08-18'),
(72, 63, '118', 0, 0, '2017-08-01', ''),
(73, 64, '104', 0, 0, '09-06-2014', ''),
(74, 66, '104', 0, 0, '09-06-2014', ''),
(75, 67, '104', 0, 0, '08-02-2011', ''),
(76, 68, '104', 0, 0, '02-05-2013', '2013-05-02'),
(77, 68, '1', 0, 0, '2013-05-02', ''),
(78, 69, '104', 0, 0, '2011-01-03', '2011-01-03'),
(80, 71, '67', 0, 0, '', ''),
(82, 73, '125', 0, 0, '2017-02-01', '2017-02-01'),
(83, 74, '123', 0, 0, '2017-01-02', '2017-01-02'),
(84, 77, '123', 0, 0, '2014-07-01', '2014-07-01'),
(85, 77, '1', 0, 0, '2014-07-01', '2014-07-01'),
(86, 78, '123', 0, 0, '2015-03-02', ''),
(87, 79, '1', 0, 0, '', '2014-07-01'),
(88, 79, '123', 0, 0, '2014-07-01', ''),
(89, 80, '123', 0, 0, '2014-07-01', '2014-07-01'),
(90, 81, '123', 5, 19, '2014-07-01', '2017-02-01'),
(91, 82, '123', 0, 0, '2015-03-02', '2015-03-02'),
(92, 83, '123', 0, 0, '2017-02-01', '2017-02-01'),
(93, 84, '123', 0, 0, '2016-03-01', ''),
(94, 85, '104', 0, 0, '2012-04-02', '2012-04-02'),
(95, 86, '123', 0, 0, '2016-03-01', ''),
(96, 87, '104', 0, 0, '2006-08-02', '2006-08-02'),
(97, 88, '123', 0, 0, '2017-11-16', ''),
(98, 89, '123', 0, 0, '2017-02-02', ''),
(99, 90, '117', 0, 0, '1994-01-03', ''),
(100, 91, '123', 0, 0, '2017-03-01', ''),
(101, 92, '103', 0, 0, '1995-08-01', ''),
(102, 93, '117', 0, 0, '1999-08-23', '1999-08-23'),
(103, 94, '123', 0, 0, '2014-02-01', '2014-02-01'),
(104, 95, '117', 0, 0, '1999-10-14', '1999-10-14'),
(105, 96, '117', 0, 0, '1996-0315', '1996-03-15'),
(106, 98, '123', 0, 0, '2017-02-01', '2017-02-01'),
(107, 99, '123', 0, 0, '2017-02-02', '2017-02-02'),
(108, 100, '123', 0, 0, '2017-03-20', ''),
(109, 101, '123', 0, 0, '2017-03-20', ''),
(110, 102, '123', 0, 0, '2017-03-20', ''),
(111, 103, '123', 0, 0, '2017-03-20', '2017-03-20'),
(112, 104, '108', 0, 0, '2005-09-15', '2005-09-15'),
(113, 105, '117', 0, 0, '2007-01-01', '2007-01-01'),
(114, 106, '123', 0, 0, '2017-03-20', ''),
(115, 107, '117', 0, 0, '2006-04-03', '2006-04-03'),
(116, 108, '117', 0, 0, '2011-11-01', '2011-11-01'),
(117, 109, '108', 0, 0, '2011-12-01', '2011-12-01'),
(118, 110, '117', 0, 0, '2012-04-16', '2012-04-16'),
(119, 111, '3', 0, 0, '2013-04-17', ''),
(120, 112, '123', 0, 0, '2017-08-01', ''),
(121, 113, '123', 0, 0, '2017-07-06', '2017-07-06'),
(122, 115, '3', 0, 0, '2014-10-24', '2014-10-24'),
(123, 116, '3', 0, 0, '2014-10-24', '2014-10-24'),
(124, 117, '3', 0, 0, '2014-10-24', '2014-10-24'),
(125, 118, '103', 0, 0, '2014-10-24', '2014-10-24'),
(126, 119, '3', 0, 0, '2014-10-24', ''),
(127, 120, '3', 0, 0, '2014-10-24', ''),
(128, 121, '3', 0, 0, '2009-11-04', ''),
(129, 122, '95', 0, 0, '2009-11-01', '2009-11-01'),
(130, 123, '4', 0, 0, '2014-10-24', '2014-10-24'),
(131, 124, '3', 0, 0, '2017-02-31', '0000-00-00'),
(132, 10, '1', 0, 0, '2000-09-21', '2000-09-21'),
(133, 56, '1', 0, 0, '2016-12-22', '2016-12-22'),
(134, 99, '1', 0, 0, '2017-02-02', '2017-02-02'),
(135, 42, '1', 0, 0, '2017-11-10', '2017-11-10'),
(136, 125, '4', 0, 0, '2014-10-24', ''),
(137, 82, '1', 0, 0, '2015-03-02', '2015-03-02'),
(138, 13, '1', 0, 0, '2002-09-24', '2002-09-24'),
(139, 55, '1', 0, 0, '2001-02-08', '2001-02-08'),
(140, 60, '1', 0, 0, '2017-08-03', '2017-08-03'),
(141, 126, '4', 0, 0, '2014-10-24', ''),
(142, 58, '1', 0, 0, '2017-04-05', '2017-04-05'),
(143, 127, '4', 0, 0, '2014-10-24', '2014-10-24'),
(144, 16, '1', 0, 0, '2009-05-06', '2009-05-06'),
(145, 73, '1', 0, 0, '2017-02-01', ''),
(146, 74, '1', 0, 0, '2017-01-02', '2017-01-02'),
(147, 33, '1', 0, 0, '2004-10-01', '2004-10-01'),
(148, 128, '117', 0, 0, '2014-10-24', '2014-10-24'),
(149, 129, '3', 0, 0, '2010-05-03', ''),
(150, 130, '3', 0, 0, '2017-01-02', ''),
(151, 131, '3', 0, 0, '2017-01-02', '2017-01-02'),
(152, 131, '1', 0, 0, '2017-01-02', ''),
(153, 133, '117', 0, 0, '2017-11-21', ''),
(154, 146, '101', 0, 0, '2014-10-24', '2014-10-24'),
(155, 147, '101', 0, 0, '2014-10-24', ''),
(156, 148, '101', 0, 0, '2014-10-24', ''),
(157, 149, '101', 0, 0, '2014-10-24', ''),
(158, 150, '104', 0, 0, '2013-02-01', ''),
(159, 151, '101', 0, 0, '2009-11-01', ''),
(160, 152, '33', 0, 0, '2009-11-01', ''),
(161, 47, '128', 0, 0, '2016-12-22', ''),
(162, 62, '1', 0, 0, '2017-08-18', '2017-08-18'),
(163, 154, '123', 0, 0, '2017-11-01', ''),
(164, 155, '123', 0, 0, '2017-11-15', '2017-11-15'),
(166, 85, '1', 0, 0, '2012-04-02', ''),
(167, 93, '1', 0, 0, '1999-08-23', ''),
(168, 95, '1', 0, 0, '1999-10-14', ''),
(169, 96, '1', 0, 0, '1996-03-15', ''),
(170, 104, '1', 0, 0, '2005-09-15', ''),
(171, 105, '1', 0, 0, '2007-01-01', ''),
(172, 107, '1', 0, 0, '2006-04-03', ''),
(173, 108, '1', 0, 0, '2011-11-01', ''),
(174, 109, '1', 0, 0, '2011-12-01', ''),
(175, 110, '1', 0, 0, '2012-04-16', ''),
(176, 115, '1', 0, 0, '2014-10-24', ''),
(177, 116, '1', 0, 0, '2014-10-24', ''),
(178, 117, '1', 0, 0, '2014-10-24', ''),
(179, 118, '1', 0, 0, '2014-10-24', ''),
(180, 122, '1', 0, 0, '2009-11-01', ''),
(181, 123, '1', 0, 0, '2014-10-24', ''),
(182, 146, '1', 0, 0, '2014-10-24', ''),
(183, 127, '1', 0, 0, '2014-10-24', ''),
(184, 128, '1', 0, 0, '2014-10-24', ''),
(185, 156, '1', 0, 0, '', '0000-00-00'),
(188, 29, '125', 0, 0, '2014-04-23', ''),
(191, 59, '80', 0, 0, '2017-06-30', ''),
(193, 60, '118', 0, 0, '2017-08-03', ''),
(194, 9, '119', 0, 0, '2009-02-17', ''),
(195, 10, '125', 0, 0, '2000-09-21', ''),
(196, 13, '125', 0, 0, '2002-09-24', ''),
(197, 156, '0', 0, 0, '0000-00-00', '0000-00-00'),
(198, 21, '125', 0, 0, '2010-12-21', ''),
(199, 16, '125', 0, 0, '2009-05-06', ''),
(200, 33, '125', 0, 0, '2004-10-01', ''),
(202, 15, '125', 0, 0, '2009-09-23', ''),
(203, 39, '128', 0, 0, '2014-04-23', ''),
(204, 45, '128', 0, 0, '2017-11-10', ''),
(205, 56, '128', 0, 0, '2016-12-22', ''),
(206, 58, '128', 0, 0, '2017-04-05', ''),
(207, 163, '128', 0, 0, '', ''),
(208, 50, '102', 0, 0, '1987-08-20', ''),
(209, 55, '102', 0, 0, '2001-02-08', ''),
(210, 42, '80', 0, 0, '2017-11-10', '2017-11-10'),
(211, 80, '132', 0, 0, '2014-07-01', ''),
(212, 94, '132', 0, 0, '2014-02-01', ''),
(213, 83, '132', 0, 0, '2017-02-01', ''),
(214, 98, '132', 0, 0, '2017-02-01', ''),
(215, 99, '132', 0, 0, '2017-02-02', ''),
(216, 103, '132', 0, 0, '2017-03-20', ''),
(217, 113, '132', 0, 0, '2017-07-06', ''),
(218, 155, '132', 0, 0, '2017-11-15', ''),
(219, 74, '123', 0, 0, '2017-01-02', ''),
(220, 77, '123', 0, 0, '2014-07-01', ''),
(221, 82, '123', 0, 0, '2015-03-02', ''),
(222, 62, '118', 0, 0, '2017-08-18', ''),
(223, 164, '132', 0, 0, '', ''),
(224, 165, '132', 0, 0, '', ''),
(225, 167, '132', 0, 0, '', ''),
(226, 168, '132', 0, 0, '', ''),
(227, 169, '132', 0, 0, '', ''),
(228, 170, '123', 0, 0, '', ''),
(229, 171, '123', 0, 0, '', ''),
(230, 180, '123', 0, 0, '', ''),
(231, 182, '123', 0, 0, '', ''),
(232, 183, '0', 0, 0, '', '0000-00-00'),
(233, 183, '123', 0, 0, '0000-00-00', ''),
(234, 184, '123', 0, 0, '', ''),
(235, 185, '123', 0, 0, '', ''),
(236, 186, '123', 0, 0, '', ''),
(237, 188, '123', 0, 0, '', ''),
(238, 189, '123', 0, 0, '', ''),
(239, 190, '0', 0, 0, '1999-07-01', ''),
(240, 5, '1', 0, 0, '0000-00-00', ''),
(241, 4, '1', 0, 0, '2016-02-01', ''),
(242, 156, '123', 0, 0, '0000-00-00', ''),
(243, 190, '102', 0, 0, '2018-02-01', ''),
(244, 191, '4', 0, 0, '2018-01-01', ''),
(245, 192, '0', 0, 0, '2016-11-01', '2016-11-01'),
(246, 192, '133', 0, 0, '2016-11-01', ''),
(247, 194, '0', 0, 0, '', '2015-06-01'),
(248, 194, '134', 0, 0, '2015-06-01', ''),
(249, 195, '80', 0, 0, '2017-01-09', ''),
(250, 196, '79', 0, 0, '2017-01-09', '2017-01-09'),
(251, 197, '0', 0, 0, '2017-03-01', '2017-03-01'),
(252, 197, '135', 0, 0, '2017-03-01', ''),
(253, 196, '92', 0, 0, '2017-01-09', ''),
(254, 199, '0', 0, 0, '2018-02-01', '2018-02-01'),
(255, 199, '136', 0, 0, '2018-02-01', ''),
(256, 201, '136', 0, 0, '', ''),
(257, 202, '92', 0, 0, '2013-07-01', ''),
(258, 203, '102', 0, 0, '2009-07-03', ''),
(259, 124, '4', 0, 0, '0000-00-00', ''),
(260, 205, '3', 0, 0, '2018-02-01', ''),
(261, 6, '4', 0, 0, '2017-01-02', '2017-01-02'),
(262, 206, '3', 0, 0, '2017-10-03', ''),
(263, 207, '33', 0, 0, '2017-08-30', ''),
(264, 208, '4', 0, 0, '2017-09-01', ''),
(265, 210, '4', 0, 0, '2017-09-01', ''),
(266, 211, '3', 0, 0, '2017-10-03', ''),
(267, 212, '34', 0, 0, '2014-08-01', '2014-08-01'),
(268, 214, '139', 0, 0, '2007-08-01', ''),
(269, 212, '137', 0, 0, '2014-08-01', ''),
(270, 215, '4', 0, 0, '', ''),
(271, 216, '4', 0, 0, '2017-02-22', ''),
(272, 217, '4', 0, 0, '2018-02-01', ''),
(273, 218, '4', 0, 0, '2018-02-01', ''),
(274, 219, '137', 0, 0, '2006-08-07', '2006-08-07'),
(275, 219, '142', 0, 0, '2006-08-07', ''),
(276, 81, '144', 5, 20, '2017-02-01', ''),
(277, 221, '142', 0, 0, '2017-04-01', ''),
(278, 222, '4', 0, 0, '2016-10-20', ''),
(279, 223, '4', 0, 0, '2017-07-01', ''),
(280, 156, '4', 0, 0, '2018-04-02', ''),
(281, 225, '125', 0, 0, '2018-02-14', '2018-02-14'),
(282, 225, '145', 0, 0, '2018-02-14', ''),
(283, 226, '0', 0, 0, '2018-07-01', ''),
(284, 227, '0', 0, 0, '2018-06-18', ''),
(285, 228, '0', 0, 0, '2018-07-01', ''),
(286, 236, '144', 0, 0, '', ''),
(287, 237, '3', 0, 0, '2018-09-03', ''),
(288, 238, '3', 0, 0, '2018-09-03', ''),
(289, 239, '3', 0, 0, '2018-09-26', ''),
(290, 240, '0', 0, 0, '2008-01-01', '2008-01-01'),
(291, 240, '146', 0, 0, '2008-01-01', ''),
(292, 241, '146', 0, 0, '2018-06-26', ''),
(293, 242, '4', 0, 0, '2008-05-13', ''),
(294, 243, '3', 0, 0, '2018-10-11', ''),
(295, 244, '0', 0, 0, '2018-05-01', ''),
(296, 245, '0', 0, 0, '2018-05-01', ''),
(297, 247, '0', 0, 0, '2018-05-01', ''),
(298, 248, '0', 0, 0, '', ''),
(299, 249, '0', 0, 0, '2018-06-01', ''),
(300, 250, '0', 0, 0, '2018-07-11', ''),
(301, 251, '0', 0, 0, '2018-07-30', ''),
(302, 87, '0', 0, 0, '2006-08-02', ''),
(303, 190, '0', 0, 0, '1996-05-15', ''),
(304, 69, '0', 0, 0, '2011-01-03', ''),
(305, 42, '0', 0, 0, '2017-11-10', ''),
(306, 18, '0', 0, 0, '2009-08-21', ''),
(307, 4, '0', 0, 0, '', ''),
(309, 6, '0', 0, 0, '2017-01-02', ''),
(310, 85, '134', 0, 0, '0000-00-00', '0000-00-00'),
(311, 85, '133', 0, 0, '0000-00-00', '0000-00-00'),
(312, 85, '102', 0, 0, '0000-00-00', ''),
(313, 156, '104', 0, 0, '0000-00-00', ''),
(314, 156, '118', 0, 0, '0000-00-00', ''),
(315, 156, '114', 0, 3, '0000-00-00', '0000-00-00'),
(316, 156, '133', 0, 3, '0000-00-00', '0000-00-00'),
(317, 156, '128', 0, 5, '0000-00-00', ''),
(318, 85, '147', 0, 6, '2012-04-02', ''),
(319, 49, '128', 0, 19, '2017-01-16', ''),
(320, 72, '125', 0, 17, '2016-01-01', ''),
(321, 168, '125', 0, 17, '0000-00-00', ''),
(322, 169, '125', 0, 17, '0000-00-00', '0000-00-00'),
(323, 51, '128', 0, 19, '2017-08-01', '2017-08-01'),
(324, 51, '125', 0, 19, '2017-08-01', ''),
(325, 24, '0', 0, 19, '2001-12-08', ''),
(327, 52, '128', 0, 18, '2017-08-01', ''),
(328, 39, '0', 0, 18, '2014-04-23', ''),
(329, 94, '128', 0, 19, '2014-02-01', '2014-02-01'),
(330, 98, '128', 0, 18, '2017-02-01', ''),
(331, 94, '0', 0, 19, '2014-02-01', '2014-02-01'),
(332, 164, '128', 0, 19, '0000-00-00', ''),
(333, 167, '128', 0, 19, '0000-00-00', ''),
(334, 186, '128', 0, 19, '0000-00-00', ''),
(335, 99, '128', 0, 19, '2017-02-02', ''),
(337, 169, '128', 0, 17, '0000-00-00', '0000-00-00'),
(338, 169, '125', 0, 17, '0000-00-00', ''),
(339, 9, '130', 0, 19, '2009-02-17', ''),
(340, 18, '125', 0, 18, '2009-08-21', ''),
(341, 94, '128', 0, 19, '2014-02-01', ''),
(342, 0, '2', 0, 0, '', ''),
(343, 70, '104', 0, 9, '2017-08-15', ''),
(344, 0, '0', 0, 0, '', ''),
(345, 255, '148', 0, 7, '0000-00-00', ''),
(346, 0, '148', 0, 0, '', ''),
(347, 0, '2', 0, 0, '', ''),
(348, 122, '135', 0, 11, '2009-11-01', ''),
(349, 0, '3', 0, 0, '', ''),
(350, 61, '148', 0, 0, '', ''),
(351, 666, '2', 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `recode_desig_bk_11-12-2018`
--

CREATE TABLE IF NOT EXISTS `recode_desig_bk_11-12-2018` (
  `r_id` int(11) NOT NULL,
  `emp_id` varchar(222) NOT NULL,
  `designation_name` varchar(222) NOT NULL,
  `grade` int(11) NOT NULL,
  `department` int(11) NOT NULL,
  `des_start_date` varchar(222) NOT NULL,
  `des_end_date` varchar(222) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=310 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recode_desig_bk_11-12-2018`
--

INSERT INTO `recode_desig_bk_11-12-2018` (`r_id`, `emp_id`, `designation_name`, `grade`, `department`, `des_start_date`, `des_end_date`) VALUES
(3, '4', '1', 0, 0, '', '2016-02-01'),
(5, '5', '1', 16, 2, '2001-01-01', '2011-01-01'),
(6, '6', '117', 0, 0, '2017-01-02', ''),
(7, '000140', '95', 0, 0, '2009-08-24', '2009-08-24'),
(8, '000140', '1', 0, 0, '2009-08-24', '2009-08-24'),
(9, '000278', '3', 0, 0, '2013-04-17', ''),
(10, '000140', '125', 0, 0, '2009-08-24', ''),
(11, '000134', '119', 0, 0, '2016-02-01', '2016-02-01'),
(12, '000134', '1', 0, 0, '2016-02-01', ''),
(13, '000132', '119', 0, 0, '2009-02-17', '2009-02-17'),
(14, '000132', '1', 0, 0, '2009-02-17', '2009-02-17'),
(15, '000160', '125', 0, 0, '2000-09-21', '2000-09-21'),
(16, '000133', '125', 0, 0, '2000-12-13', ''),
(17, '000055', '125', 0, 0, '2002-11-01', ''),
(18, '000135', '125', 0, 0, '2002-09-24', '2002-09-24'),
(19, '000367', '128', 0, 0, '2009-05-04', ''),
(20, '000100', '128', 0, 0, '2009-09-23', '2009-09-23'),
(21, '000138', '125', 0, 0, '2009-05-06', '2009-05-06'),
(22, '000137', '125', 0, 0, '2006-09-22', ''),
(23, '000148', '125', 0, 0, '2009-08-21', '2009-08-21'),
(24, '000053', '125', 0, 0, '2010-11-30', ''),
(25, '000144', '125', 0, 0, '2011-05-20', ''),
(26, '000142', '1', 0, 0, '2010-12-21', '2010-12-21'),
(27, '000067', '125', 0, 0, '2011-11-30', ''),
(28, '000042', '125', 0, 0, '2012-11-20', ''),
(29, '000513', '125', 0, 0, '2001-12-08', ''),
(30, '000271', '125', 0, 0, '2013-05-23', ''),
(31, '000048', '125', 0, 0, '2007-02-27', ''),
(32, '000143', '125', 0, 0, '2014-02-05', ''),
(33, '000139', '128', 0, 0, '1994-04-07', ''),
(34, '000494', '125', 0, 0, '', '2014-04-23'),
(35, '000494', '1', 0, 0, '2014-04-23', '2014-04-23'),
(36, '000493', '125', 0, 0, '2014-04-23', ''),
(37, '000197', '125', 0, 0, '2004-10-01', '2004-10-01'),
(38, '000124', '128', 0, 0, '2011-05-04', ''),
(39, '000339', '128', 0, 0, '2011-03-11', ''),
(40, '000174', '125', 0, 0, '2015-12-11', ''),
(41, '000497', '128', 0, 0, '2014-11-10', ''),
(42, '000496', '128', 0, 0, '2014-04-23', ''),
(43, '000495', '128', 0, 0, '2014-04-23', '2014-04-23'),
(44, '000495', '1', 0, 0, '2014-04-23', '2014-04-23'),
(45, '000127', '128', 0, 0, '2011-08-04', ''),
(46, '000156', '125', 0, 0, '2013-09-12', ''),
(47, '000393', '80', 0, 0, '2017-11-10', '2017-11-10'),
(48, '01', '128', 0, 0, '2016-12-22', ''),
(49, '03', '128', 0, 0, '2017-11-10', '2017-11-10'),
(50, '04', '128', 0, 0, '2016-12-22', ''),
(51, '02', '1', 0, 0, '', '2016-12-22'),
(52, '02', '128', 0, 0, '2016-12-22', '2016-12-22'),
(53, '02', '1', 0, 0, '2016-12-22', '2016-12-22'),
(54, '03', '1', 0, 0, '2017-11-10', '2017-11-10'),
(55, '04', '1', 0, 0, '', '2016-12-22'),
(56, '04', '128', 0, 0, '2016-12-22', ''),
(57, '05', '128', 0, 0, '2016-12-22', ''),
(58, '06', '128', 0, 0, '2017-01-16', ''),
(59, '000007', '115', 0, 0, '1987-08-20', '1987-08-20'),
(60, '07', '125', 0, 0, '2017-08-01', ''),
(61, '08', '128', 0, 0, '2017-08-01', '2017-08-01'),
(62, '08', '1', 0, 0, '2017-08-01', '2017-08-01'),
(63, '000006', '128', 0, 0, '', '1996-05-15'),
(64, '000125', '128', 0, 0, '2011-08-04', ''),
(65, '000080', '115', 0, 0, '2001-02-08', '2001-02-08'),
(66, '09', '128', 0, 0, '2016-12-22', '2016-12-22'),
(67, '57', '78', 0, 0, '1999-07-01', '1999-07-01'),
(68, '10', '128', 0, 0, '2017-04-05', '2017-04-05'),
(69, '11', '35', 0, 0, '2017-06-30', '2017-06-30'),
(70, '12', '118', 0, 0, '2017-08-03', '2017-08-03'),
(71, '13', '118', 0, 0, '2017-08-18', '2017-08-18'),
(72, '14', '118', 0, 0, '2017-08-01', ''),
(73, 'upf000500', '104', 0, 0, '09-06-2014', ''),
(74, '000500', '104', 0, 0, '09-06-2014', ''),
(75, '000158', '104', 0, 0, '08-02-2011', ''),
(76, '000468', '104', 0, 0, '02-05-2013', '2013-05-02'),
(77, '000468', '1', 0, 0, '2013-05-02', ''),
(78, '000478', '104', 0, 0, '2011-01-03', '2011-01-03'),
(79, '000582', '104', 0, 0, '2017-08-15', '2017-08-15'),
(80, '00033', '67', 0, 0, '', ''),
(81, '15', '125', 0, 0, '2016-01-01', ''),
(82, '16', '125', 0, 0, '2017-02-01', '2017-02-01'),
(83, '17', '123', 0, 0, '2017-01-02', '2017-01-02'),
(84, '18', '123', 0, 0, '2014-07-01', '2014-07-01'),
(85, '18', '1', 0, 0, '2014-07-01', '2014-07-01'),
(86, '19', '123', 0, 0, '2015-03-02', ''),
(87, '20', '1', 0, 0, '', '2014-07-01'),
(88, '20', '123', 0, 0, '2014-07-01', ''),
(89, '21', '123', 0, 0, '2014-07-01', '2014-07-01'),
(90, '22', '123', 0, 0, '2014-07-01', '2017-02-01'),
(91, '23', '123', 0, 0, '2015-03-02', '2015-03-02'),
(92, '24', '123', 0, 0, '2017-02-01', '2017-02-01'),
(93, '25', '123', 0, 0, '2016-03-01', ''),
(94, '000627', '104', 0, 0, '2012-04-02', '2012-04-02'),
(95, '26', '123', 0, 0, '2016-03-01', ''),
(96, '000624', '104', 0, 0, '2006-08-02', '2006-08-02'),
(97, '27', '123', 0, 0, '2017-11-16', ''),
(98, '28', '123', 0, 0, '2017-02-02', ''),
(99, '000046', '117', 0, 0, '1994-01-03', ''),
(100, '29', '123', 0, 0, '2017-03-01', ''),
(101, '000049', '103', 0, 0, '1995-08-01', ''),
(102, '000065', '117', 0, 0, '1999-08-23', '1999-08-23'),
(103, '30', '123', 0, 0, '2014-02-01', '2014-02-01'),
(104, '000151', '117', 0, 0, '1999-10-14', '1999-10-14'),
(105, '000092', '117', 0, 0, '1996-0315', '1996-03-15'),
(106, '31', '123', 0, 0, '2017-02-01', '2017-02-01'),
(107, '32', '123', 0, 0, '2017-02-02', '2017-02-02'),
(108, '33', '123', 0, 0, '2017-03-20', ''),
(109, '34', '123', 0, 0, '2017-03-20', ''),
(110, '35', '123', 0, 0, '2017-03-20', ''),
(111, '36', '123', 0, 0, '2017-03-20', '2017-03-20'),
(112, '000425', '108', 0, 0, '2005-09-15', '2005-09-15'),
(113, '000418', '117', 0, 0, '2007-01-01', '2007-01-01'),
(114, '37', '123', 0, 0, '2017-03-20', ''),
(115, '000265', '117', 0, 0, '2006-04-03', '2006-04-03'),
(116, '000253', '117', 0, 0, '2011-11-01', '2011-11-01'),
(117, '000276', '108', 0, 0, '2011-12-01', '2011-12-01'),
(118, '000435', '117', 0, 0, '2012-04-16', '2012-04-16'),
(119, '000221', '3', 0, 0, '2013-04-17', ''),
(120, '38', '123', 0, 0, '2017-08-01', ''),
(121, '39', '123', 0, 0, '2017-07-06', '2017-07-06'),
(122, '000542', '3', 0, 0, '2014-10-24', '2014-10-24'),
(123, '000543', '3', 0, 0, '2014-10-24', '2014-10-24'),
(124, '000549', '3', 0, 0, '2014-10-24', '2014-10-24'),
(125, '000540', '103', 0, 0, '2014-10-24', '2014-10-24'),
(126, '000541', '3', 0, 0, '2014-10-24', ''),
(127, '000538', '3', 0, 0, '2014-10-24', ''),
(128, '000377', '3', 0, 0, '2009-11-04', ''),
(129, '000206', '95', 0, 0, '2009-11-01', '2009-11-01'),
(130, '000544', '4', 0, 0, '2014-10-24', '2014-10-24'),
(131, 'Y1', '3', 0, 0, '2017-02-31', '0000-00-00'),
(132, '000160', '1', 0, 0, '2000-09-21', '2000-09-21'),
(133, '09', '1', 0, 0, '2016-12-22', '2016-12-22'),
(134, '32', '1', 0, 0, '2017-02-02', '2017-02-02'),
(135, '000393', '1', 0, 0, '2017-11-10', '2017-11-10'),
(136, '000539', '4', 0, 0, '2014-10-24', ''),
(137, '23', '1', 0, 0, '2015-03-02', '2015-03-02'),
(138, '000135', '1', 0, 0, '2002-09-24', '2002-09-24'),
(139, '000080', '1', 0, 0, '2001-02-08', '2001-02-08'),
(140, '12', '1', 0, 0, '2017-08-03', '2017-08-03'),
(141, '00548', '4', 0, 0, '2014-10-24', ''),
(142, '10', '1', 0, 0, '2017-04-05', '2017-04-05'),
(143, '000547', '4', 0, 0, '2014-10-24', '2014-10-24'),
(144, '000138', '1', 0, 0, '2009-05-06', '2009-05-06'),
(145, '16', '1', 0, 0, '2017-02-01', ''),
(146, '17', '1', 0, 0, '2017-01-02', '2017-01-02'),
(147, '000197', '1', 0, 0, '2004-10-01', '2004-10-01'),
(148, '000581', '117', 0, 0, '2014-10-24', '2014-10-24'),
(149, '000625', '3', 0, 0, '2010-05-03', ''),
(150, 'Y2', '3', 0, 0, '2017-01-02', ''),
(151, 'Y3', '3', 0, 0, '2017-01-02', '2017-01-02'),
(152, 'Y3', '1', 0, 0, '2017-01-02', ''),
(153, 'Y4', '117', 0, 0, '2017-11-21', ''),
(154, '000546', '101', 0, 0, '2014-10-24', '2014-10-24'),
(155, '000551', '101', 0, 0, '2014-10-24', ''),
(156, '000552', '101', 0, 0, '2014-10-24', ''),
(157, '000545', '101', 0, 0, '2014-10-24', ''),
(158, '000456', '104', 0, 0, '2013-02-01', ''),
(159, '000234', '101', 0, 0, '2009-11-01', ''),
(160, '000295', '33', 0, 0, '2009-11-01', ''),
(161, '02', '128', 0, 0, '2016-12-22', ''),
(162, '13', '1', 0, 0, '2017-08-18', '2017-08-18'),
(163, '40', '123', 0, 0, '2017-11-01', ''),
(164, '41', '123', 0, 0, '2017-11-15', '2017-11-15'),
(165, '000582', '1', 0, 0, '2017-08-15', ''),
(166, '000627', '1', 0, 0, '2012-04-02', ''),
(167, '000065', '1', 0, 0, '1999-08-23', ''),
(168, '000151', '1', 0, 0, '1999-10-14', ''),
(169, '000092', '1', 0, 0, '1996-03-15', ''),
(170, '000425', '1', 0, 0, '2005-09-15', ''),
(171, '000418', '1', 0, 0, '2007-01-01', ''),
(172, '000265', '1', 0, 0, '2006-04-03', ''),
(173, '000253', '1', 0, 0, '2011-11-01', ''),
(174, '000276', '1', 0, 0, '2011-12-01', ''),
(175, '000435', '1', 0, 0, '2012-04-16', ''),
(176, '000542', '1', 0, 0, '2014-10-24', ''),
(177, '000543', '1', 0, 0, '2014-10-24', ''),
(178, '000549', '1', 0, 0, '2014-10-24', ''),
(179, '000540', '1', 0, 0, '2014-10-24', ''),
(180, '000206', '1', 0, 0, '2009-11-01', ''),
(181, '000544', '1', 0, 0, '2014-10-24', ''),
(182, '000546', '1', 0, 0, '2014-10-24', ''),
(183, '000547', '1', 0, 0, '2014-10-24', ''),
(184, '000581', '1', 0, 0, '2014-10-24', ''),
(185, '85', '1', 0, 0, '', '0000-00-00'),
(186, 'testtest', '1', 0, 0, '', ''),
(187, 'abcabc', '1', 0, 0, '', ''),
(188, '000494', '125', 0, 0, '2014-04-23', ''),
(189, 'dcvdacasc', '125', 0, 0, '', ''),
(190, 'testetst', '123', 0, 0, '', ''),
(191, '11', '80', 0, 0, '2017-06-30', ''),
(192, '08', '128', 0, 0, '2017-08-01', ''),
(193, '12', '118', 0, 0, '2017-08-03', ''),
(194, '000132', '119', 0, 0, '2009-02-17', ''),
(195, '000160', '125', 0, 0, '2000-09-21', ''),
(196, '000135', '125', 0, 0, '2002-09-24', ''),
(197, '85', '0', 0, 0, '0000-00-00', '0000-00-00'),
(198, '000142', '125', 0, 0, '2010-12-21', ''),
(199, '000138', '125', 0, 0, '2009-05-06', ''),
(200, '000197', '125', 0, 0, '2004-10-01', ''),
(201, 'acascasc', '0', 0, 0, '', ''),
(202, '000100', '125', 0, 0, '2009-09-23', ''),
(203, '000495', '128', 0, 0, '2014-04-23', ''),
(204, '03', '128', 0, 0, '2017-11-10', ''),
(205, '09', '128', 0, 0, '2016-12-22', ''),
(206, '10', '128', 0, 0, '2017-04-05', ''),
(207, 'tmp_1', '128', 0, 0, '', ''),
(208, '000007', '102', 0, 0, '1987-08-20', ''),
(209, '000080', '102', 0, 0, '2001-02-08', ''),
(210, '000393', '80', 0, 0, '2017-11-10', '2017-11-10'),
(211, '21', '132', 0, 0, '2014-07-01', ''),
(212, '30', '132', 0, 0, '2014-02-01', ''),
(213, '24', '132', 0, 0, '2017-02-01', ''),
(214, '31', '132', 0, 0, '2017-02-01', ''),
(215, '32', '132', 0, 0, '2017-02-02', ''),
(216, '36', '132', 0, 0, '2017-03-20', ''),
(217, '39', '132', 0, 0, '2017-07-06', ''),
(218, '41', '132', 0, 0, '2017-11-15', ''),
(219, '17', '123', 0, 0, '2017-01-02', ''),
(220, '18', '123', 0, 0, '2014-07-01', ''),
(221, '23', '123', 0, 0, '2015-03-02', ''),
(222, '13', '118', 0, 0, '2017-08-18', ''),
(223, '42', '132', 0, 0, '', ''),
(224, '43', '132', 0, 0, '', ''),
(225, '44', '132', 0, 0, '', ''),
(226, '45', '132', 0, 0, '', ''),
(227, '46', '132', 0, 0, '', ''),
(228, '47', '123', 0, 0, '', ''),
(229, '48', '123', 0, 0, '', ''),
(230, '49', '123', 0, 0, '', ''),
(231, '50', '123', 0, 0, '', ''),
(232, '51', '0', 0, 0, '', '0000-00-00'),
(233, '51', '123', 0, 0, '0000-00-00', ''),
(234, '52', '123', 0, 0, '', ''),
(235, '53', '123', 0, 0, '', ''),
(236, '54', '123', 0, 0, '', ''),
(237, '55', '123', 0, 0, '', ''),
(238, '56', '123', 0, 0, '', ''),
(239, '57', '0', 0, 0, '1999-07-01', ''),
(240, '000147', '1', 0, 0, '0000-00-00', ''),
(241, '000134', '1', 0, 0, '2016-02-01', ''),
(242, '85', '123', 0, 0, '0000-00-00', ''),
(243, '57', '102', 0, 0, '2018-02-01', ''),
(244, '58', '4', 0, 0, '2018-01-01', ''),
(245, '59', '0', 0, 0, '2016-11-01', '2016-11-01'),
(246, '59', '133', 0, 0, '2016-11-01', ''),
(247, '60', '0', 0, 0, '', '2015-06-01'),
(248, '60', '134', 0, 0, '2015-06-01', ''),
(249, '61', '80', 0, 0, '2017-01-09', ''),
(250, '62', '79', 0, 0, '2017-01-09', '2017-01-09'),
(251, '63', '0', 0, 0, '2017-03-01', '2017-03-01'),
(252, '63', '135', 0, 0, '2017-03-01', ''),
(253, '62', '92', 0, 0, '2017-01-09', ''),
(254, '64', '0', 0, 0, '2018-02-01', '2018-02-01'),
(255, '64', '136', 0, 0, '2018-02-01', ''),
(256, '65', '136', 0, 0, '', ''),
(257, '66', '92', 0, 0, '2013-07-01', ''),
(258, '67', '102', 0, 0, '2009-07-03', ''),
(259, 'Y1', '4', 0, 0, '0000-00-00', ''),
(260, '68', '3', 0, 0, '2018-02-01', ''),
(261, '00596', '4', 0, 0, '2017-01-02', '2017-01-02'),
(262, '69', '3', 0, 0, '2017-10-03', ''),
(263, '70', '33', 0, 0, '2017-08-30', ''),
(264, '71', '4', 0, 0, '2017-09-01', ''),
(265, '72', '4', 0, 0, '2017-09-01', ''),
(266, '74', '3', 0, 0, '2017-10-03', ''),
(267, '75', '34', 0, 0, '2014-08-01', '2014-08-01'),
(268, '76', '139', 0, 0, '2007-08-01', ''),
(269, '75', '137', 0, 0, '2014-08-01', ''),
(270, '77', '4', 0, 0, '', ''),
(271, '78', '4', 0, 0, '2017-02-22', ''),
(272, '79', '4', 0, 0, '2018-02-01', ''),
(273, '80', '4', 0, 0, '2018-02-01', ''),
(274, '81', '137', 0, 0, '2006-08-07', '2006-08-07'),
(275, '81', '142', 0, 0, '2006-08-07', ''),
(276, '22', '144', 0, 0, '2017-02-01', ''),
(277, '82', '142', 0, 0, '2017-04-01', ''),
(278, '83', '4', 0, 0, '2016-10-20', ''),
(279, '84', '4', 0, 0, '2017-07-01', ''),
(280, '85', '4', 0, 0, '2018-04-02', ''),
(281, '86', '125', 0, 0, '2018-02-14', '2018-02-14'),
(282, '86', '145', 0, 0, '2018-02-14', ''),
(283, '87', '0', 0, 0, '2018-07-01', ''),
(284, '88', '0', 0, 0, '2018-06-18', ''),
(285, '89', '0', 0, 0, '2018-07-01', ''),
(286, '90', '144', 0, 0, '', ''),
(287, '91', '3', 0, 0, '2018-09-03', ''),
(288, '92', '3', 0, 0, '2018-09-03', ''),
(289, '93', '3', 0, 0, '2018-09-26', ''),
(290, '94', '0', 0, 0, '2008-01-01', '2008-01-01'),
(291, '94', '146', 0, 0, '2008-01-01', ''),
(292, '95', '146', 0, 0, '2018-06-26', ''),
(293, '96', '4', 0, 0, '2008-05-13', ''),
(294, '97', '3', 0, 0, '2018-10-11', ''),
(295, '98', '0', 0, 0, '2018-05-01', ''),
(296, '99', '0', 0, 0, '2018-05-01', ''),
(297, '100', '0', 0, 0, '2018-05-01', ''),
(298, '101', '0', 0, 0, '', ''),
(299, '102', '0', 0, 0, '2018-06-01', ''),
(300, '103', '0', 0, 0, '2018-07-11', ''),
(301, '104', '0', 0, 0, '2018-07-30', ''),
(302, '000624', '0', 0, 0, '2006-08-02', ''),
(303, '57', '0', 0, 0, '1996-05-15', ''),
(304, '000478', '0', 0, 0, '2011-01-03', ''),
(305, '000393', '0', 0, 0, '2017-11-10', ''),
(306, '000148', '0', 0, 0, '2009-08-21', ''),
(307, '000134', '0', 0, 0, '', ''),
(309, '00596', '0', 0, 0, '2017-01-02', '');

-- --------------------------------------------------------

--
-- Table structure for table `recod_hod`
--

CREATE TABLE IF NOT EXISTS `recod_hod` (
  `r_id` int(11) NOT NULL,
  `emp_id` varchar(222) NOT NULL,
  `emp_devition_id` varchar(222) NOT NULL,
  `date` varchar(222) NOT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salary_codes`
--

CREATE TABLE IF NOT EXISTS `salary_codes` (
  `salary_code` varchar(20) NOT NULL,
  `initial_salary` float NOT NULL,
  `increment_amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cadre`
--
ALTER TABLE `cadre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`desig_id`),
  ADD UNIQUE KEY `r_id` (`r_id`),
  ADD UNIQUE KEY `r_id_2` (`r_id`),
  ADD KEY `desig_id` (`desig_id`);

--
-- Indexes for table `des_grade`
--
ALTER TABLE `des_grade`
  ADD PRIMARY KEY (`r_id`),
  ADD KEY `desig_id` (`desig_id`),
  ADD KEY `r_id` (`r_id`);

--
-- Indexes for table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `division_bk_04-12-2018`
--
ALTER TABLE `division_bk_04-12-2018`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `division_old`
--
ALTER TABLE `division_old`
  ADD PRIMARY KEY (`dept_id`),
  ADD UNIQUE KEY `r_id` (`r_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`r_id`),
  ADD UNIQUE KEY `r_id` (`r_id`,`emp_email`),
  ADD KEY `emp_divison_id` (`emp_divison_id`),
  ADD KEY `emp_designation` (`emp_designation`),
  ADD KEY `emp_designation_grede` (`emp_designation_grade`),
  ADD KEY `emp_email` (`emp_email`);

--
-- Indexes for table `employee_bk_03-12-2018`
--
ALTER TABLE `employee_bk_03-12-2018`
  ADD PRIMARY KEY (`emp_id`),
  ADD UNIQUE KEY `r_id` (`r_id`,`emp_email`),
  ADD KEY `emp_divison_id` (`emp_divison_id`),
  ADD KEY `emp_designation` (`emp_designation`),
  ADD KEY `emp_designation_grede` (`emp_designation_grade`),
  ADD KEY `emp_email` (`emp_email`);

--
-- Indexes for table `employee_edit`
--
ALTER TABLE `employee_edit`
  ADD PRIMARY KEY (`emp_id`,`edit_date`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`r_id`),
  ADD UNIQUE KEY `emp_id` (`emp_id`),
  ADD KEY `emp_id_2` (`emp_id`);

--
-- Indexes for table `increment_history`
--
ALTER TABLE `increment_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_calander`
--
ALTER TABLE `leave_calander`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_request`
--
ALTER TABLE `leave_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_files`
--
ALTER TABLE `personal_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qualification`
--
ALTER TABLE `qualification`
  ADD PRIMARY KEY (`r_id`),
  ADD UNIQUE KEY `r_id` (`r_id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `emp_id_2` (`emp_id`);

--
-- Indexes for table `recode_desig`
--
ALTER TABLE `recode_desig`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `recode_desig_bk_11-12-2018`
--
ALTER TABLE `recode_desig_bk_11-12-2018`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `recod_hod`
--
ALTER TABLE `recod_hod`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `salary_codes`
--
ALTER TABLE `salary_codes`
  ADD PRIMARY KEY (`salary_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cadre`
--
ALTER TABLE `cadre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=150;
--
-- AUTO_INCREMENT for table `des_grade`
--
ALTER TABLE `des_grade`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=120;
--
-- AUTO_INCREMENT for table `division`
--
ALTER TABLE `division`
  MODIFY `dept_id` int(250) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `division_bk_04-12-2018`
--
ALTER TABLE `division_bk_04-12-2018`
  MODIFY `dept_id` int(250) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `division_old`
--
ALTER TABLE `division_old`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=261;
--
-- AUTO_INCREMENT for table `employee_bk_03-12-2018`
--
ALTER TABLE `employee_bk_03-12-2018`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=252;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `increment_history`
--
ALTER TABLE `increment_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `leave_calander`
--
ALTER TABLE `leave_calander`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `leave_request`
--
ALTER TABLE `leave_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `personal_files`
--
ALTER TABLE `personal_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `qualification`
--
ALTER TABLE `qualification`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `recode_desig`
--
ALTER TABLE `recode_desig`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=352;
--
-- AUTO_INCREMENT for table `recode_desig_bk_11-12-2018`
--
ALTER TABLE `recode_desig_bk_11-12-2018`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=310;
--
-- AUTO_INCREMENT for table `recod_hod`
--
ALTER TABLE `recod_hod`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
